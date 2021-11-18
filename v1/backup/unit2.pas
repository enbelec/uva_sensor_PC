unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFicheros }

  TFicheros = class(TForm)
    Nuevo: TButton;
    Fichero: TButton;
    Anadir: TButton;
    Leer: TButton;
    Edit1: TEdit;
    DialogoAbrir1: TOpenDialog;
    Edit2: TEdit;
    Memo1: TMemo;
    Salir: TButton;
    procedure AnadirClick(Sender: TObject);
    procedure FicheroClick(Sender: TObject);
    procedure LeerClick(Sender: TObject);
    procedure NuevoClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
  private

  public

  end;

var
   nombreArch : String;


   Ficheros: TFicheros;

implementation

{$R *.lfm}

{ TFicheros }

function ExisteFichero (nombre : string) : boolean;
var
   f: text;
begin
  try
    assign (f, nombre);
    reset(f);
    if (IOResult = 0) then
    begin
      close(f);
      ExisteFichero := true;
    end
    else
        ExisteFichero := false;
  except
    on E: EInOutError do
       begin
        ShowMessage('error ' + E.Message);
        ExisteFichero := false;
       end;
  end;
end;

procedure TFicheros.SalirClick(Sender: TObject);
begin
  close;
end;

procedure TFicheros.FicheroClick(Sender: TObject);


begin
  if DialogoAbrir1.Execute then
  begin
    nombreArch:= DialogoAbrir1.FileName;
    edit1.Text:= nombreArch;
  end;
end;

procedure TFicheros.AnadirClick(Sender: TObject);
begin


end;

procedure TFicheros.LeerClick(Sender: TObject);
var
   linea : string;
   f: text;
begin
  if FileExists(nombreArch)then
     begin
       AssignFile(f,nombreArch);
       Reset(f);
       while not eof(f) do
             begin
              ReadLn(f, linea);
              memo1.Lines.Add(linea);
             end;
     end;
end;

procedure TFicheros.NuevoClick(Sender: TObject);
var
   f : text;


begin
     if FileExists(nombreArch)then
        begin
             ShowMessage('existe');
             AssignFile(f, nombreArch);
             Append(f);
             WriteLn(f, edit2.Text);
             CloseFile(f);
        end
     else
         begin
              ShowMessage(' no existe');
              AssignFile(f, nombreArch);
              Rewrite(f);
              WriteLn(f,edit2.Text);
              CloseFile(f);
         end;


{     if ExisteFichero(nombreArch) then
        begin
             ShowMessage('existe añadimos texto');
//             assign(f,nombreArch);


        end
     else
         begin
            //ShowMessage('no existe');
         end;
}
end;


end.

