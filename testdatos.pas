unit testDatos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls,
  TAGraph, TASeries, ficheros, variables;

type

  { TForm2 }

  TForm2 = class(TForm)
    Grafico: TButton;
    Chart1: TChart;
    SerieAuxPres: TLineSeries;
    SerieAuxTemp: TLineSeries;
    SerieAuxO2: TLineSeries;
    leeNumSensor: TButton;
    Edit1: TEdit;
    guardaArrayDat: TButton;
    ficheroSetup: TEdit;
    ficheroDatos: TEdit;
    guardarFichero: TButton;
    leerFichero: TButton;
    OpenDialog1: TOpenDialog;
    salir: TButton;
    SaveDialog1: TSaveDialog;
    StringGrid1: TStringGrid;
    procedure GraficoClick(Sender: TObject);
    procedure leeNumSensorClick(Sender: TObject);
    procedure guardaArrayDatClick(Sender: TObject);
    procedure guardarFicheroClick(Sender: TObject);
    procedure leerFicheroClick(Sender: TObject);
    procedure salirClick(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.salirClick(Sender: TObject);
begin
  close;
end;

procedure TForm2.leerFicheroClick(Sender: TObject);
var
  fich : Tficheros;
  f :integer;
begin
  OpenDialog1.InitialDir:=variables.sdirApp;
  OpenDialog1.FilterIndex:=2;
  if OpenDialog1.Execute then
     begin
          ficheroDatos.Text:=OpenDialog1.FileName;
          variables.sNombreFichDatos:=OpenDialog1.FileName;
          if FileExists(variables.sNombreFichDatos)then begin
             fich := Tficheros.Create;
             fich.borraArrayDatosLeidos();
             for f := 0 to StringGrid1.RowCount - 2 do
                 StringGrid1.DeleteRow(1);
             if fich.leeDatos(variables.sNombreFichDatos) then begin
                ficheroDatos.Text:=variables.sNombreFichDatos;
                ficheroSetup.Text:=variables.sNombreFichSetup;
                for f := 0 to variables.inumDatosLeidos do begin
                   StringGrid1.InsertRowWithValues(f+1,[variables.sarrTiempo[f], variables.sarrSensor[f],
                     variables.sarrO2[f], variables.sarrTemp[f], variables.sarrPres[f], variables.sarrO2Rel[f]]);
                end;
             end;
             fich.Destroy;
          end;
     end;

end;

procedure TForm2.guardarFicheroClick(Sender: TObject);
var
  fich : Tficheros;

begin

      fich := Tficheros.Create;

      variables.stiempoTest:= '000:12';
      variables.snumSensDat:='003';
      variables.sO2Dat:= '0199';
      variables.sTempDat:= '+20,0';
      variables.sPresDat:= '1000';
      variables.sO2RelDat:= '019,57';
      variables.serrDat:= '0000';
      fich.guardaDatos();
      fich.Destroy;

end;

procedure TForm2.guardaArrayDatClick(Sender: TObject);
var
  fich :Tficheros;
begin
  fich := Tficheros.Create;

  variables.icontSensIn:=4;
  variables.sarrBufProceso[0] := '15:56:48;000:01;003;0199;+20,0;1000;019,57;0000';
  variables.sarrBufProceso[1] := '15:56:48;000:03;003;0199;+20,0;1000;019,57;0000';
  variables.sarrBufProceso[2] := '15:56:48;000:05;003;0199;+20,0;1000;019,57;0000';
  variables.sarrBufProceso[3] := '15:56:48;000:07;003;0199;+20,0;1000;019,57;0000';
  variables.sarrBufProceso[4] := '15:56:48;000:08;003;0199;+20,0;1000;019,57;0000';

  fich.guardaArryDatos();
  fich.Destroy;

end;

procedure TForm2.leeNumSensorClick(Sender: TObject);
var
  stemp : string;
  itemp, f : integer;
  fich : tficheros;
begin

  stemp := Edit1.Text;
  itemp := StrToInt(stemp);
  OpenDialog1.InitialDir:=variables.sdirApp;
  OpenDialog1.FilterIndex:=2;
  if OpenDialog1.Execute then
     begin
          ficheroDatos.Text:=OpenDialog1.FileName;
          variables.sNombreFichDatos:=OpenDialog1.FileName;
          if FileExists(variables.sNombreFichDatos)then begin
             fich := Tficheros.Create;
             fich.borraArrayDatosLeidos();
             for f := 0 to StringGrid1.RowCount - 2 do
                 StringGrid1.DeleteRow(1);
//             StringGrid1.Clean;
//             StringGrid1.Rows[1];
             if fich.leeDatosSensor(itemp, variables.sNombreFichDatos) then begin
                ficheroDatos.Text:=variables.sNombreFichDatos;
                ficheroSetup.Text:=variables.sNombreFichSetup;
                for f := 0 to variables.inumDatosLeidos do begin
                   StringGrid1.InsertRowWithValues(f+1,[variables.sarrTiempo[f], variables.sarrSensor[f],
                     variables.sarrO2[f], variables.sarrTemp[f], variables.sarrPres[f], variables.sarrO2Rel[f]]);
                end;
             end;
          end;
     end;

end;

procedure TForm2.GraficoClick(Sender: TObject);
var
  f :integer;
  stemp : string;
  ftemp : real;
begin

  SerieAuxO2.Clear;
  for f := 1 to StringGrid1.RowCount -1 do begin
     stemp := StringGrid1.Cells[2,f];
     if Length(stemp) > 0 then begin
        ftemp:= StrToFloat(stemp);
        SerieAuxO2.AddXY(f,ftemp);
     end;
  end;
{  SerieAuxO2.AddXY(0,20);
  SerieAuxO2.AddXY(1,21);
  SerieAuxO2.AddXY(2,25);
  SerieAuxO2.AddXY(3,28);
  SerieAuxO2.AddXY(4,20);
  SerieAuxO2.AddXY(5,15);
  SerieAuxO2.AddXY(6,10);

  SerieAuxTemp.AddXY(0,+150);
  SerieAuxTemp.AddXY(1,+150);
  SerieAuxTemp.AddXY(2,+150);
  SerieAuxTemp.AddXY(3,+150);
  SerieAuxTemp.AddXY(4,+150);
  SerieAuxTemp.AddXY(5,+150);
  SerieAuxTemp.AddXY(6,+150);
  }
end;

end.

