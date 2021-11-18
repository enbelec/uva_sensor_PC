unit ficheros;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, variables, Dialogs, LCLType, debug1;

type

   { Tficheros }

   Tficheros = class(TObject)
     private

     public
     function leeSetup(nombre : string) : boolean;
     function guardaSetup(nombre :string) : boolean;
     function nuevoFichDatos() : boolean;
     function leeDatos(sfichTemp :string) : boolean;
     function leeDatosSensor(nsensor : integer; sfichTemp : string) : boolean;
     function guardaDatos() :boolean;
     function guardaArryDatos() : boolean;
     procedure borraArrayDatosLeidos();
     function guardaExcel(fichNom : string; sensor : integer) : Boolean;
     procedure guardaCeldaExcel(XlsStream : TStream; const Acol, Arow : word;
       const AValue : string);
   end;

implementation

{ Tficheros }

//******************** FICHERO SETUP ************
// si el fichero existe lo lee si no retorna 0= error 1= ok
function Tficheros.leeSetup(nombre: string) : boolean;
var
  sfile : text;
  f : integer;
begin
  //ficheros
  // mira si esta el de inicio, si no lo crea

  if (FileExists(nombre)) then
     begin
        AssignFile(sfile,nombre);  //asigna nombre fichero al manejador
        reset(sfile); //inicializa fichero
        ReadLn(sfile, variables.numeroPlacas);
        ReadLn(sfile, variables.tiempoEntreMedidas);
        ReadLn(sfile, variables.tiempoTotal);
        ReadLn(sfile, variables.limiteO2);
        ReadLn(sfile, variables.sNombreFichDatos);
        for f := 0 to NUM_SENSORES do begin
            ReadLn(sfile, variables.arrSens[f]);
        end;
        CloseFile(sfile);
        result := true;
     end
  else  // no existe, lo crea nuevo
     begin
         result := false;
     end;

end;

function Tficheros.guardaSetup(nombre: string): boolean;
var
  sfile : text;
  f : integer;
begin

  f := 0;
  if FileExists(nombre)then
     begin
        if MessageDlg('ATENCION', 'El fichero existe, ¿sobrescribimos?',mtConfirmation,[mbYes, mbNo],0) = IDNO  then f:= 1;
     end;
  if (f = 0) then
        begin
           AssignFile(sfile,nombre);
           Rewrite(sfile);
           WriteLn(sfile, variables.numeroPlacas);
           WriteLn(sfile, variables.tiempoEntreMedidas);
           WriteLn(sfile, variables.tiempoTotal);
           WriteLn(sfile, variables.limiteO2);
           WriteLn(sfile, variables.sNombreFichDatos);
           for f := 0 to NUM_SENSORES do begin
               WriteLn(sfile,variables.arrSens[f]); //pone 64 sensores apagados
           end;

           CloseFile(sfile);
           result := true;
        end;
end;

function Tficheros.nuevoFichDatos(): boolean;
var
  sfile : text;
  stemp : string;
begin

  AssignFile(sfile,variables.sNombreFichDatos);
  Rewrite(sfile);
  stemp := 'DATOS';  //pone identificador de fichero de datos
  WriteLn(sfile, stemp);
  stemp  := 'NOMBRE FICHERO = ' + variables.sNombreFichDatos;
  WriteLn(sfile, stemp);
  stemp := 'NOMBRE FICHERO SETUP = ' + variables.sNombreFichSetup;
  WriteLn(sfile, stemp);
  stemp := 'DIA y HORA = ' + FormatDateTime('DD/MM/YYYY hh:mm:ss', now);
  writeln(sfile, stemp);
  stemp  := 'HORA ; TIEMPO TEST ; SENSOR ; O2 ; TEMP ; PRESION ; O2% ; ERROR';
  writeln(sfile, stemp);
  CloseFile(sfile);
  result := true;
end;

function Tficheros.leeDatos(sfichTemp : string): boolean;
var
  sfile : text;
  stemp, stemp2: string;
  itemp, itemp2: integer;
begin

  AssignFile(sfile, sfichTemp);
  Reset(sfile);
  itemp := 0;
  ReadLn(sfile, stemp);
  if (stemp = 'DATOS') then begin
     while not eof(sfile) do begin
          ReadLn(sfile, stemp);
          case itemp of
            0: variables.sNombreFichDatos:=copy(stemp,18, Length(stemp)- 17); //linea de fichedro datos
            1: variables.sNombreFichSetup:=copy (stemp, 24, Length(stemp)-23); //linea fichero setup
            2: variables.sFechaFichDatos:=copy(stemp, 14, Length(stemp)-13);
            3: stemp := ''; //texto de columnas
            else begin //ahora comienzan las lineas
                variables.sarrTiempo[itemp - 4] := copy(stemp, 10, 6);
                variables.sarrSensor[itemp - 4] := copy (stemp,17,3);
                variables.sarrO2[itemp - 4] := copy(stemp,21,6);
                variables.sarrTemp[itemp - 4] := copy(stemp,28,5);
                variables.sarrPres[itemp - 4] := copy(stemp,34,4);
                variables.sarrO2Rel[itemp - 4] := copy(stemp,39,6);
  {
                 itemp2 := LastDelimiter(';',stemp);    //saca error
                stemp2 := RightStr(stemp, Length(stemp) - itemp2);
                stemp := LeftStr(stemp, itemp2 - 1);
                itemp2 := LastDelimiter(';',stemp);    //saca  o2%
                variables.sarrO2Rel[itemp - 4] := RightStr(stemp, Length(stemp) - itemp2);
                stemp := LeftStr(stemp, itemp2 - 1);
                itemp2 := LastDelimiter(';',stemp);    //saca  presion
                variables.sarrPres[itemp - 4] := RightStr(stemp, Length(stemp) - itemp2);
                stemp := LeftStr(stemp, itemp2 - 1);
                itemp2 := LastDelimiter(';',stemp);    //saca  temp
                variables.sarrTemp[itemp - 4] := RightStr(stemp, Length(stemp) - itemp2);
                stemp := LeftStr(stemp, itemp2 - 1);
                itemp2 := LastDelimiter(';',stemp);    //saca  o2
                variables.sarrO2[itemp - 4] := RightStr(stemp, Length(stemp) - itemp2);
                stemp := LeftStr(stemp, itemp2 - 1);
                itemp2 := LastDelimiter(';',stemp);    //saca sensor
                variables.sarrSensor[itemp - 4] := RightStr(stemp, Length(stemp) - itemp2);
                stemp := LeftStr(stemp, itemp2 - 1);
                itemp2 := LastDelimiter(';',stemp);    //saca tiempo
                variables.sarrTiempo[itemp - 4] := RightStr(stemp, Length(stemp) - itemp2);
                stemp := LeftStr(stemp, itemp2 - 1);
  }
            end;
          end;
          itemp := itemp +1;
      end;
  end;
  variables.inumDatosLeidos:=itemp - 4;
  CloseFile(sfile);
  result := true;
end;

function Tficheros.leeDatosSensor(nsensor: integer; sfichTemp :string): boolean;
// lee datos del fichero pero solo del numero de sensor que le llega
var
  sfile : text;
  fs : TFileStream;
  stemp, stemp2: AnsiString;
  itemp, itemp2: integer;
begin

  AssignFile(sfile, sfichTemp);
  Reset(sfile);
  itemp := 0;
  ReadLn(sfile, stemp);
  if (stemp = 'DATOS') then begin
     ReadLn(sfile, stemp);
     variables.sNombreFichDatos:= copy(stemp,18, Length(stemp)- 17);
     ReadLn(sfile, stemp);
     variables.sNombreFichSetup:= copy (stemp, 24, Length(stemp)-23) ;
     ReadLn(sfile, stemp);
     variables.sFechaFichDatos:= copy(stemp, 14, Length(stemp)-13) ;
     ReadLn(sfile, stemp);
     while not eof(sfile) do begin
        ReadLn(sfile, stemp);
        stemp2 := copy (stemp,17,3);
        itemp2 := StrToInt(stemp2);
        if (itemp2 = nsensor) then begin
          variables.sarrTiempo[itemp] := copy(stemp, 10, 6);
          variables.sarrSensor[itemp] := copy (stemp,17,3);
          variables.sarrO2[itemp] := copy(stemp,21,4);
          variables.sarrTemp[itemp] := copy(stemp,26,5);
          variables.sarrPres[itemp] := copy(stemp,32,4);
          variables.sarrO2Rel[itemp] := copy(stemp,37,6);
          itemp := itemp +1;
        end;
      end;
  end;
  variables.inumDatosLeidos:=itemp;
  CloseFile(sfile);


  if itemp = 0 then result := false
  else  result := true;
end;

function Tficheros.guardaDatos(): boolean;
var
  sfile : text;
  stemp, sfinal : string;
begin

  stemp := FormatDateTime('hh:mm:ss', now);
  sfinal := stemp;
  sfinal := sfinal + ';' + variables.stiempoTest + ';' + variables.snumSensDat
     + ';' + variables.sO2Dat + ';' + variables.sTempDat + ';' + variables.sPresDat
     + ';' + variables.sO2RelDat + ';' + variables.serrDat;

  AssignFile(sfile, variables.sNombreFichDatos);
  Append(sfile);
  WriteLn(sfile, sfinal);
  CloseFile(sfile);


  result := true;
end;

// ************** guarda array ************
//guarda el bloque de los sensores conectados
function Tficheros.guardaArryDatos(): boolean;
var
  f : integer;
  sfile : text;
  stemp, sfinal : string;
begin

  AssignFile(sfile, variables.sNombreFichDatos);
  Append(sfile);
  for f := 0 to variables.icontSensIn -1 do begin
     WriteLn(sfile, variables.sarrBufProceso[f]);
  end;
  CloseFile(sfile);
  result := true;

end;

procedure Tficheros.borraArrayDatosLeidos();
var
  f: integer;
begin

  for f := 0 to variables.MAX_ARR_DATOS do begin
     variables.sarrO2[f] := '';
     variables.sarrO2Rel[f] := '';
     variables.sarrPres[f] := '';
     variables.sarrSensor[f] := '';
     variables.sarrTemp[f] := '';
     variables.sarrTiempo[f] := '';
  end;
  variables.inumDatosLeidos:=0;

end;

// ****************** pasar a excel
function Tficheros.guardaExcel(fichNom: string; sensor: integer) : Boolean;
const
  {$J+} CXlsBof: array[0..5] of Word = ($809, 8, 00, $10, 0, 0); {$J-}
  CXlsEof: array[0..1] of Word = ($0A, 00);
var
  Fstream : TFileStream;
  I, J : integer;
begin
  Result := False;
  Fstream := TFileStream.Create(PChar (fichNom), fmCreate or fmOpenWrite);
  try
    CXlsBof[4] := 0;
    Fstream.WriteBuffer(CXlsBof, SizeOf(CXlsBof));
    j := 0;
    for i:=0 to variables.inumDatosLeidos - 1 do begin
       if sensor = 0 then begin
         guardaCeldaExcel(Fstream, 0, i, variables.sarrTiempo[i]);
         guardaCeldaExcel(Fstream, 1, i, variables.sarrSensor[i]);
         guardaCeldaExcel(Fstream, 2, i, variables.sarrO2[i]);
         guardaCeldaExcel(Fstream, 3, i, variables.sarrTemp[i]);
         guardaCeldaExcel(Fstream, 4, i, variables.sarrPres[i]);
         guardaCeldaExcel(Fstream, 5, i, variables.sarrO2Rel[i]);
       end
       else begin
          if sensor = StrToInt(variables.sarrSensor[i]) then begin
            guardaCeldaExcel(Fstream, 0, j, variables.sarrTiempo[i]);
            guardaCeldaExcel(Fstream, 1, j, variables.sarrSensor[i]);
            guardaCeldaExcel(Fstream, 2, j, variables.sarrO2[i]);
            guardaCeldaExcel(Fstream, 3, j, variables.sarrTemp[i]);
            guardaCeldaExcel(Fstream, 4, j, variables.sarrPres[i]);
            guardaCeldaExcel(Fstream, 5, i, variables.sarrO2Rel[i]);
            j := j+1;
          end;
       end;
    end;
    Fstream.WriteBuffer(CXlsEof, SizeOf(CXlsEof));
    Result := true;
  finally
    Fstream.Free;
  end;

end;

procedure Tficheros.guardaCeldaExcel(XlsStream: TStream; const Acol,
  Arow: word; const AValue: string);
var
  L: word;
const
  {$J+} CXlsLabel: array[0..5] of word = ($204, 0, 0, 0, 0, 0); {$J-}
begin
   L := Length(AValue);
   CXlsLabel[1] := 8 +L;
   CXlsLabel[2] := Arow;
   CXlsLabel[3] := Acol;
   CXlsLabel[5] := L;
   XlsStream.WriteBuffer(CXlsLabel, SizeOf(CXlsLabel));
   XlsStream.WriteBuffer(Pointer(AValue)^, L);
end;

//******************* FICHEROS DATOS *************
end.

