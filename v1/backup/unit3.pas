unit Unit3;
//************  comunicaciones y maquina estados **********
{$mode objfpc}{$H+}

{$define MODO_SCAN}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  SdpoSerial, variables, ficheros, debug1;

type

  { TAuxiliar }

  TAuxiliar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    led_espera: TShape;
    led_rec: TShape;
    led_estado: TShape;
    Serial2: TSdpoSerial;
    led_emit: TShape;
    Timer1: TTimer;
type
    TestadosMaq = (
                EST_INICIO,        //0
                EST_INICIO_2,
                EST_INICIO_3,
                EST_REPOSO,        //3
                EST_CONECTA_EXT,
                EST_CONECTA,       //5
                EST_CONECTA_1,
                EST_CONECTA_2,
                EST_CONECTA_3,
                EST_CONECTA_4,
                EST_CONECTA_5,     //10
                EST_CONECTA_6,
                EST_CONECTA_7,
                EST_CONECTA_8,
                EST_MANDA_ARR_MIDE,
                EST_MANDA_ARR_MIDE_2,  //15
                EST_MANDA_ARR_MIDE_3,
                EST_MANDA_ARR_MIDE_4,
                EST_MANDA_ARR_MIDE_5,
                EST_MIDE,
                EST_MANDA_ARR_VACIA,   //20
                EST_MANDA_ARR_VACIA_2,
                EST_MANDA_ARR_VACIA_3,
                EST_MANDA_ARR_VACIA_4,
                EST_MANDA_ARR_VACIA_5,
                EST_VACIA,             //25
                EST_FIN_MEDIR,
                EST_FIN_MEDIR_2,
                EST_FIN_MEDIR_3,
                EST_FIN_VACIAR,
                EST_FIN_VACIAR_2,      //30
                EST_FIN_VACIAR_3,
                EST_FIN_VACIAR_4,
                EST_PARAR,
                EST_FIN,
                EST_CIERRA_PUERTO,     //35
                EST_ERROR
    );
    TrespHard = (
              RESP_NADA,
              RESP_FIN_VACIA_ARR,
              RESP_FIN_VACIA,
              RESP_FIN_MIDE_ARR,
              RESP_FIN_MIDE
    );

procedure FormCreate(Sender: TObject);
procedure Serial2RxData(Sender: TObject);
procedure Timer1Timer(Sender: TObject);
  private
    estadosMaq : TestadosMaq;
    estSolicitado : TestadosMaq;
    estadoPrevio : TestadosMaq; //esado antes de pedir abrir puerto
    estadoAnt :TestadosMaq;
    respHard :  TrespHard;
    cont : integer;

    function abrePuerto(port : string) : boolean;
    procedure cierraPuerto();


  public
        procedure maquinaEstados();
        procedure poneEstado(estado : TestadosMaq);
        procedure mandaSerie(datos : string);
        procedure recepcionDatos();
        procedure procesaSerie();
        procedure borraArrays();
        procedure vaciarYmedir(Fvacymide : boolean);

  end;

var
  Auxiliar: TAuxiliar;

 Fconectado : boolean;    //conexion con el hardware
 FdatSensRec : boolean ; //datos del sensor recibidos
 FesperaCom : boolean; //espera respuesta comando
 FvaciaYmide : boolean ; //para indicar que depues de vaciar tiene que medir


 snumSensor : string;
 inumSensor : integer;
 sO2Sens : string;
 sPresSens : string;
 sTempSens :string;
 sO2relSens :string;
 serrorSens :string;

  sBufEntrada : string;
  sBufProceso : string;

  iDatoSerieEntra : integer;

  icont :integer;
//  fich : Tficheros;

implementation
//************************** crea ***************
procedure TAuxiliar.FormCreate(Sender: TObject);
begin
   poneEstado(EST_CONECTA_EXT); //manda conectar
end;


// ************** ejecita cada 100ms ***********
procedure TAuxiliar.Timer1Timer(Sender: TObject);
begin

  // mira buffer recepcion
  recepcionDatos();
  maquinaEstados();
  procesaSerie();

  cont := cont + 1;
  if cont > 10 then begin
    cont := 0;
    led_rec.Brush.Color:= $ffffff;
    led_emit.Brush.Color:= $ffffff;
  end;

end;

//******************* procesa serie ***********
procedure TAuxiliar.procesaSerie();
var
  comando, stemp, sfinal, stemTTest : string; //stemTTest = temporal de inicio del tiempo de test
  datSerie :array[0..50] of WideChar;
  f, g, temp1, temp2 : integer;
  rtemp : real;
  fich : Tficheros;

begin
  comando := copy(sBufProceso,1,1); //coge comando
  g := Length(sBufProceso);
  StringToWideChar(sBufProceso,datSerie,g+1);


if g > 0 then
   begin
  //************* switch ************
     FormDebug.poneTrace('comando CAJA ' + sBufProceso, 1); //****** DEBUG *****
      case comando of
           'L':   //listo
             Fconectado:= true;
           'O': // ok  / oxigeno
             begin
               if (datSerie[1] = 'K') then begin
                   FesperaCom:=false; //quita flag de espera comando
                   led_espera.Brush.Color:= clGray;
                   end
               else
                   if (datSerie[1] = 'L') then begin //llega Listo por error
                      Fconectado := true;
                   end
                   else begin //llega oxigeno
                    g := Length(sBufProceso);
                    if (g > 13 ) then begin

                      stemp := copy(sBufProceso,2,4);
                      temp1 := StrToInt(stemp) - 1; //coge sensor
                      stemp := copy (sBufProceso,8,7); //coge osigeno
                      rtemp := StrToFloat(stemp);
                      variables.arrO2[temp1] := rtemp;
                      variables.FactArrCasillas:= true;
                    end;
                 end
             end;
           'W': //contersta vaciado
              begin
                if datSerie[2] = '1' then //vaciado inicio
                  begin
                       poneEstado(EST_VACIA);
                  end;
                if datSerie[2] = '2' then //vaciado fin
                   begin
                        poneEstado(EST_FIN_VACIAR);
                   end;
                if datSerie[2] = '3' then //error
                  begin
                       poneEstado(EST_ERROR);
                  end;
                variables.icontSensIn:= 0; //resetea contador de sensor entrada
              end;
           'M': //constesta medir
              begin
                if datSerie[2] = '1' then //inicio medir
                  begin
                       poneEstado(EST_MIDE);
                       variables.icontSensIn:= 0; //resetea contador de sensor entrada
                  end;
              end;
           'D' : //contesta datos
               begin
                 temp1 := 0; //para controla que todo llega bien
                 if datSerie[0] = 'D'then
                   begin
                     snumSensor:= copy(sBufProceso,3,3);
                     inumSensor:= StrToInt(snumSensor) - 1; //lo guarda de 0 a 63 pero llega de 1 a 64
                     temp1 := temp1 +1;
                   end;
                 if datSerie[6] = 'O' then
                   begin
                     sO2Sens:= copy(sBufProceso,9,6);
                     temp1 := temp1 +1;
                     variables.arrO2[inumSensor] := StrToFloat(sO2Sens);
                   end;
                 if datSerie[15] = 'T' then
                   begin
                     sTempSens:= copy(sBufProceso,18,5);
                     temp1 := temp1 +1;
                     variables.arrTemp[inumSensor] := StrToFloat(sTempSens);
                   end;
                 if datSerie[23] = 'P' then
                   begin
                     sPresSens:= copy(sBufProceso,26,4);
                     temp1 := temp1 +1;
                     variables.arrPres[inumSensor] := StrToInt(sPresSens);
                   end;
                 if datSerie[30] = '%' then
                   begin
                     sO2relSens:= copy(sBufProceso,33,6);
                     temp1 := temp1 +1;
                     variables.arrO2Rel[inumSensor] := StrToFloat(sO2relSens);
                   end;
                 if datSerie[39] = 'e' then
                   begin
                     serrorSens:= copy(sBufProceso,42,4);
                     temp1 := temp1 +1;
                   end;
                 if temp1 = 6 then
                   begin
                     variables.FactArrCasillas:= true; //actualiza valores
                     FdatSensRec := true; //pone que hemos recibido datos
                                     //llamar aquia aguardar datos
                     //actualiza variables para guardarlas en el fichero
                     variables.snumSensDat:=snumSensor;
                     variables.sO2Dat:= sO2Sens;
                     variables.sTempDat:= sTempSens;
                     variables.sPresDat:= sPresSens;
                     variables.sO2RelDat:= sO2relSens;
                     variables.serrDat:= serrorSens;
{$IFDEF MODO_SCAN}

                     if Length(stemTTest) <6 then stemTTest:= variables.stiempoTest;
                    sfinal := FormatDateTime('hh:mm:ss', now);
                    sfinal := sfinal + ';' + stemTTest + ';' + variables.snumSensDat
                       + ';' + variables.sO2Dat + ';' + variables.sTempDat + ';' + variables.sPresDat
                       + ';' + variables.sO2RelDat + ';' + variables.serrDat;

                     variables.sarrBufProceso[variables.icontSensIn] := sfinal;
                     variables.icontSensIn:=variables.icontSensIn +1;
                     if variables.icontSensIn > 63 then variables.icontSensIn:=0;
{$ELSE}
                     fich.guardaDatos();
{$ENDIF}
                   end;
               end;
           'F' : // fin de medidas
               begin
                 poneEstado(EST_FIN);
               end;
           'E' : //error
               begin
                 stemp := copy(sBufProceso,7,4);
                 temp1 := StrToInt(stemp);
                 variables.arrSens[temp1] := '0'; //quita del array el sensor
                 variables.FactArray:= true; //pone que actualice el array
               end;
           'S' : //fin de scan de sensores
               begin
                 fich := Tficheros.Create;
                  fich.guardaArryDatos();
                  variables.icontSensIn:= 0; //resetea contador de sensor entrada
                  stemTTest:= '';
                  fich.Destroy;
               end;

      end;
      sBufProceso:= ''; //borra buffer de proceso
   end;

end;

//******************************************
//****************** maquina estados *********

procedure TAuxiliar.maquinaEstados();
var
  stemp : string;
begin

  if estadosMaq <> estadoAnt then begin
    estadoAnt:=estadosMaq;
    FormDebug.poneTrace('cambio estado ' + IntToStr(integer(estadosMaq)), 2);
  end;
  case estadosMaq of
       EST_INICIO:
         begin
              estadoPrevio:=EST_REPOSO; //cuando arranca conecta
              estadosMaq:=EST_CONECTA;
         end;
{       EST_INICIO_2:
         begin
           mandaSerie('F' + #13#10); //manda fin por si se ha quedado colgado
           estadosMaq:=EST_INICIO_3;
         end;
       EST_INICIO_3:
         begin
           mandaSerie('L' + #13#10); //pregunta si esta listo
           estadosMaq:=EST_REPOSO;
         end;
}
       EST_REPOSO:
         begin
           if estSolicitado = EST_MIDE then estadosMaq := EST_MANDA_ARR_MIDE;
           if estSolicitado = EST_VACIA then estadosMaq := EST_MANDA_ARR_VACIA;
           if estSolicitado = EST_CONECTA then estadosMaq := EST_CONECTA_EXT;
           if estSolicitado = EST_CIERRA_PUERTO then estadosMaq:= EST_CIERRA_PUERTO;
           estSolicitado:= EST_REPOSO;
           variables.modoFuncionamiento:= 0; //modo reposo
         end;
       EST_CONECTA_EXT:
         begin
              estadoPrevio:=EST_REPOSO;
              estadosMaq:=EST_CONECTA;
         end;
       EST_CONECTA:
         begin
           show;
           variables.modoFuncionamiento:= 1; //modo conecta
           if (variables.FpuertoAbierto = false) then
             begin
                if (abrePuerto(variables.puerto) = true)then
                     estadosMaq:=EST_CONECTA_1
                else  begin
                  estadosMaq:=EST_REPOSO;
                  ShowMessage('ERROR, el puerto ' + variables.puerto + ' no puede abrirse');
                end;
             end
           else estadosMaq:=EST_REPOSO;
         end;
       EST_CONECTA_1:
           begin
              mandaSerie('F' + #13#10); //manda fin por si se ha quedado colgado
                estadosMaq:=EST_CONECTA_2;
           end;
       EST_CONECTA_2:
         begin
              mandaSerie('L' + #13#10);  //manda si esta listo
              estadosMaq:=EST_CONECTA_3;
         end;
       EST_CONECTA_3:
         begin
              if (Fconectado = true) then
                estadosMaq:=EST_CONECTA_4; //ha conetestado conectado
         end;
       EST_CONECTA_4:   // manda numero placas
         begin
              mandaSerie('N ' + variables.numeroPlacas + #13#10);
              estadosMaq:=EST_CONECTA_5;
              FesperaCom:= true; //pone espera respuesto
         end;
       EST_CONECTA_5:
         begin
           if (FesperaCom = false) then begin
              mandaSerie('T ' + variables.tiempoEntreMedidas + ' M ' + variables.tiempoTotal + #13#10);
              estadosMaq:= EST_CONECTA_6;
              FesperaCom:= true;
           end;
         end;
       EST_CONECTA_6:
         begin
           if (FesperaCom = false) then begin
              mandaSerie('K ' + variables.limiteO2 + '.0' + #13#10);
              estadosMaq:= EST_CONECTA_7;
              FesperaCom:= true;
           end;
         end;
       EST_CONECTA_7:
         begin
           if (FesperaCom = false) then begin
              estadosMaq:= EST_CONECTA_8;
           end;
         end;
       EST_CONECTA_8:
              estadosMaq:=estadoPrevio;
       // ---------------------   mide ---------------
       EST_MANDA_ARR_MIDE:
         begin
           variables.modoFuncionamiento:= 2; //modo mide
           borraArrays();
            if (Fconectado = false) then
              begin
                estadoPrevio:= EST_MANDA_ARR_MIDE_2;
                estadosMaq:=EST_CONECTA;
              end
            else
                estadosMaq := EST_MANDA_ARR_MIDE_2;
         end;
       EST_MANDA_ARR_MIDE_2: //manda array de sensores
         begin
              stemp := 'A ' + variables.arrSens + #13#10;
              mandaSerie(stemp);
              estadosMaq:=EST_MANDA_ARR_MIDE_3;
         end;
       EST_MANDA_ARR_MIDE_3:
         begin
            mandaSerie('M' + #13#10);
            led_espera.Brush.Color:=clGreen;
            led_estado.Brush.Color:= $000040;
            estadosMaq:=EST_MANDA_ARR_MIDE_4;
         end;
       EST_MANDA_ARR_MIDE_4:
         begin
             if (estSolicitado = EST_MIDE) then begin
               estadosMaq:= estSolicitado; //pone EST_MIDE
               variables.inicioMide:= now;
             end;
         end;
       EST_MIDE:   //aqui llegan datos del puerto serie
         begin
            variables.modoFuncionamiento:= 3; //modo midiendo
            led_estado.Brush.Color:= $0000ff;
            if ((estSolicitado = EST_FIN) or (estSolicitado = EST_FIN_MEDIR)) then estadosMaq:= EST_FIN_MEDIR;
         end;
       EST_FIN_MEDIR:
         begin
            variables.modoFuncionamiento:=0; //quita que esta midiendo
            mandaSerie('F' + #13#10);
            icont:= 0;
            estadosMaq:=EST_FIN_MEDIR_2;
         end;
       EST_FIN_MEDIR_2:
         begin
            icont := icont +1;
            if (icont > 5) then estadosMaq:=EST_FIN_MEDIR_3;
         end;
       EST_FIN_MEDIR_3:
         begin
            cierraPuerto();
            estadosMaq:=EST_FIN;
         end;
       //-----------------------  vacia ----------------
       EST_MANDA_ARR_VACIA:
         begin
            variables.modoFuncionamiento:= 4; //modo vacia
            borraArrays();
            if (Fconectado = false ) then
              begin
                estadoPrevio:=EST_MANDA_ARR_VACIA_2;
                estadosMaq:=EST_CONECTA;
              end
            else
               estadosMaq:=EST_MANDA_ARR_VACIA_2;
         end;
       EST_MANDA_ARR_VACIA_2:
         begin
              stemp := 'A ' + variables.arrSens + #13#10;
              mandaSerie(stemp);
              estadosMaq:=EST_MANDA_ARR_VACIA_3;
         end;
       EST_MANDA_ARR_VACIA_3:
         begin
            mandaSerie('V' + #13#10);
            led_espera.Brush.Color:=clRed;
            led_estado.Brush.Color:= $004000;
            estadosMaq:=EST_MANDA_ARR_VACIA_4;
         end;
       EST_MANDA_ARR_VACIA_4:
         begin
            if (estSolicitado = EST_VACIA) then estadosMaq:=estSolicitado;
         end;
       EST_VACIA:
         begin
            variables.modoFuncionamiento:= 5; //modo vaciando
            led_estado.Brush.Color:=$00ff00;
            if ((estSolicitado = EST_FIN) or
            (estSolicitado = EST_FIN_VACIAR)or
            (estSolicitado = EST_ERROR)) then estadosMaq:= EST_FIN_VACIAR;
         end;
       EST_FIN_VACIAR:
         begin
            icont:=0;
            mandaSerie('F' + #13#10);
            estadosMaq:= EST_FIN_VACIAR_2;
         end;
       EST_FIN_VACIAR_2:
         begin
            icont := icont +1;
            if (icont > 5) then estadosMaq:= EST_FIN_VACIAR_3;
         end;
       EST_FIN_VACIAR_3:
         begin
            if FvaciaYmide = true then begin
              estadosMaq:=EST_MANDA_ARR_MIDE;
            end
            else begin
              cierraPuerto();
              estadosMaq:=EST_FIN_VACIAR_4;
            end;
         end;
       EST_FIN_VACIAR_4:
         begin
             estadosMaq:=EST_FIN;
         end;
       EST_PARAR:
         begin
              mandaSerie('F' + #13#10);
              cierraPuerto();
              Fconectado:=false;
              FpuertoAbierto:=false;
              estadosMaq:= EST_FIN;
         end;
       EST_CIERRA_PUERTO:
         begin
              cierraPuerto();
              estadosMaq:=EST_REPOSO;
         end;
       EST_FIN:
         begin
            if (variables.FpuertoAbierto = true) then estadosMaq:=EST_CIERRA_PUERTO;
           estadosMaq:= EST_REPOSO;
         end;
  end;
  if (estSolicitado = EST_PARAR) then
    begin
      estadosMaq := EST_PARAR;
      estSolicitado:=EST_REPOSO;
    end;

end;
//-------------------- pone estado  --------------
procedure TAuxiliar.poneEstado(estado : TestadosMaq);
begin
     estSolicitado:=estado;
end;

//************************* SERIE *****************
function TAuxiliar.abrePuerto(port: string): boolean;
begin
  Serial2.Device:= port;
  try
     Serial2.Open;
     variables.FpuertoAbierto:=true;
     result := true;
//     ShowMessage('ok');
  except
        on E: Exception do
           begin
             Serial2.Close;
//              ShowMessage('ERROR, el puerto ' + port + ' no puede abrirse');
              result := false;
           end;
  end;
end;
//---------------------------------
procedure TAuxiliar.cierraPuerto();
var
  stemp :string;
begin
  try
    if (variables.FpuertoAbierto = true)then begin

      stemp := Serial2.ReadData;
      Serial2.Close;
      Fconectado:= false;
      variables.FpuertoAbierto:=false;
      close;
    end;

  except
        on E: Exception do
        begin
           ShowMessage('error al cierre');
        end;
  end;
end;
//********************** manda ************
procedure TAuxiliar.mandaSerie(datos : string);
begin
  serial2.WriteData(datos);
  led_emit.Brush.Color:=clGreen;
  FormDebug.poneTrace('comando PC ' + copy (datos, 0, Length(datos)-2),3);
end;
//************************* recibe ************
procedure TAuxiliar.Serial2RxData(Sender: TObject);
var
   sEntrada : string;
   sTemp : string;

begin
   sEntrada:=Serial2.ReadData;
   sBufEntrada:= sBufEntrada + sEntrada;
   led_rec.Brush.Color:=clGreen;
end;

//****************** recepcion comando ************
procedure TAuxiliar.recepcionDatos();
const
  RET_CARRO = #13#10;
var
   sTemp : string;
   sRetCarro : string;
   iPunt, iPunt2  : integer;
begin
  if Length(sBufEntrada) > 0 then
    begin
      sRetCarro:=RET_CARRO;
      iPunt:= pos(sRetCarro, sBufEntrada);
      if iPunt <> 0 then  //ha llegado algo
        begin
          sBufProceso := copy(sBufEntrada,1,iPunt-1);
          iPunt2:= Length(sBufEntrada);
          iDatoSerieEntra:=1; //pone que ha llegado dato
          if iPunt2 > (iPunt + 2)then
            begin
              sBufEntrada:= copy(sBufEntrada, iPunt +2, iPunt2);
            end
          else
              begin
                   sBufEntrada:= '';
              end;
        end;
    end;

end;

procedure TAuxiliar.borraArrays();
var
   f : integer;
begin
   for f:= 0 to NUM_SENSORES do begin
      variables.arrO2[f] := 0;
      variables.arrTemp[f] := 0;
      variables.arrPres[f] := 0;
      variables.arrO2Rel[f] := 0;

   end;
end;

procedure TAuxiliar.vaciarYmedir(Fvacymide: boolean);
begin
  FvaciaYmide:=Fvacymide;
end;


{$R *.lfm}

end.

