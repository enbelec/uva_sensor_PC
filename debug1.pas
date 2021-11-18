unit debug1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  variables;

type

  { TFormDebug }

  TFormDebug = class(TForm)
    borra: TButton;
    edEstado: TEdit;
    Label1: TLabel;
    salir: TButton;
    Memo1: TMemo;
    procedure borraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure salirClick(Sender: TObject);
  private

  public
    procedure poneTrace(texto :string; tipo :integer);
  end;

var
  FormDebug: TFormDebug;

implementation

{$R *.lfm}

{ TFormDebug }

procedure TFormDebug.FormCreate(Sender: TObject);
begin
   memo1.Clear;
   Memo1.Append('inicio debug');
end;

procedure TFormDebug.salirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormDebug.poneTrace(texto: string; tipo: integer);
var
  stmp : string;

begin
  stmp := IntToStr(tipo)+ ' - ' + texto;
  if (tipo = 2)then begin     // estrado
    edEstado.Text:= copy (texto,14,3);
  end;
  memo1.Append(stmp);
end;

procedure TFormDebug.borraClick(Sender: TObject);
begin
  Memo1.Clear;
end;

end.

