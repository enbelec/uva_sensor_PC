unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids,
  SdpoSerial, TAGraph, TASeries, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    BOpen: TButton;
    BManda: TButton;
    BClose: TButton;
    Button1: TButton;
    Calculos: TButton;
    formulario_2: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Fin: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    poneRet: TButton;
    Lineas: TButton;
    Chart1: TChart;
    lineas1: TLineSeries;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    Serial: TSdpoSerial;
    StringGrid1: TStringGrid;
    procedure BCloseClick(Sender: TObject);
    procedure BMandaClick(Sender: TObject);
    procedure BOpenClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CalculosClick(Sender: TObject);
    procedure FinClick(Sender: TObject);
    procedure formulario_2Click(Sender: TObject);
    procedure LineasClick(Sender: TObject);
    procedure poneRetClick(Sender: TObject);
    procedure SerialRxData(Sender: TObject);
  private

  public

  end;

var
  sBufEntrada : string;
  sBufProceso : string;
  arSensor : array [1..1000] of integer;
  arO2pp : array [1..1000] of real;
  arTemp : array [1..1000] of real;
  arPres : array [1..1000] of integer;
  arO2rel : array [1..1000] of real;
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BOpenClick(Sender: TObject);
begin
  try
     Serial.Open;
  except
     on E: Exception do
          ShowMessage('Error:  ' + E.ClassName + #13#10 + E.Message);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  texto : string;
  texto2 : string;
  bActivo : boolean;
  iPosicion : Integer;
begin
  texto2 := ' cosa';
  texto := serial.Device;
  bActivo := serial.Active;
  CheckBox1.Checked:= bActivo;
  texto := Edit1.Text;
  texto := texto + 'cosa' + #13 + #10 + 'cosa2';
  Memo1.Lines.Add(texto);
  texto2 := #13 + #10;

  iPosicion := pos(texto2, texto);
  edit1.Text:= iPosicion.ToString;

end;

procedure TForm1.CalculosClick(Sender: TObject);
var
  b1 : byte;
  i1: integer;
  w1 : word;
  lw1 : longword;
  li1 :longint;
  ch1 :char;
  s1 :string;
  r1 : real;

begin
   i1 := 123456;
   s1 := IntToStr(i1);
   b1 := 234;
   i1 := integer(b1);
   s1 := inttostr(i1);
   w1 := 29929;
   li1 := 123456789;
   Str(li1,s1);     //str() convierte cualquier numero a string
end;

procedure TForm1.FinClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.formulario_2Click(Sender: TObject);
begin
  Ficheros.Show;
end;

procedure TForm1.LineasClick(Sender: TObject);
const
  N = 100;
  MIN = -10;
  MAX = 10;
var
  i: Integer;
  x: Double;

begin
     for i:= 0 to N-1 do begin
       x := MIN + (MAX - MIN) * i /(N-1);
       lineas1.AddXY(x, sin(x));
     end;
end;

procedure TForm1.poneRetClick(Sender: TObject);
var
  sBufManda :string;
  sSalida : string;
  sTemp : string;

begin
  sSalida:= 'S ';
  sTemp:= edit7.Text;
  if Length(sTemp) = 3 then sSalida:=sSalida + sTemp;
  sSalida := ' O ';
  sTemp := Edit2.Text;
  if Length(sTemp) = 6 then sSalida := sSalida + sTemp;
  sSalida := sSalida + ' T ';
  sTemp:= Edit3.Text;
  if Length(sTemp) = 5 then sSalida := sSalida + sTemp;
  sSalida:= sSalida + ' P ';
  sTemp:= edit4.Text;
  if Length(sTemp) = 4 then sSalida:= sSalida + sTemp;
  sSalida:= sSalida + ' % ';
  sTemp:= edit5.Text;
  if Length(sTemp) = 6 then sSalida:=sSalida + sTemp;
  sSalida:=sSalida + ' e ';
  sTemp:= edit6.Text;
  if Length(sTemp) = 4 then sSalida:=sSalida + sTemp;

  sSalida:=sSalida + #13 + #10;
  edit1.Text:= sSalida;
  serial.WriteData(sSalida);
end;

procedure TForm1.SerialRxData(Sender: TObject);
const
 RET_CARRO = #13 + #10;
var
  sEntrada : string;
  sTemp : string;
  sRetCarro : string;
  iPunt : Integer;
begin
  sRetCarro:= RET_CARRO;
  sEntrada:= Serial.ReadData;
  sBufEntrada:= sBufEntrada + sEntrada;
  iPunt := pos (sRetCarro, sBufEntrada);
  if iPunt <> 0 then begin
     sTemp := copy(sBufEntrada,1,iPunt-1);
     sBufEntrada:= '';
     memo1.Lines.Add(sTemp);
  end;
end;

procedure TForm1.BCloseClick(Sender: TObject);
begin
  Serial.Close;
end;

procedure TForm1.BMandaClick(Sender: TObject);
begin
  if Serial.Active then Serial.WriteData(Edit1.Text)
  else ShowMessage('no esta el puerto abierto');
end;

end.

