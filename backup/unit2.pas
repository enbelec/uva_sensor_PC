unit Unit2;

// seleccion de puerto , no se usa
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  variables, ActnList;

type

  { TSeleccionPuerto }

  TSeleccionPuerto = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  SeleccionPuerto: TSeleccionPuerto;

//  puerto :  string;

implementation

{$R *.lfm}

{ TSeleccionPuerto }

procedure TSeleccionPuerto.Button1Click(Sender: TObject);
begin

  variables.puerto := ComboBox1.Text;

  close;
end;

procedure TSeleccionPuerto.FormCreate(Sender: TObject);
begin
     ComboBox1.Clear;
     ComboBox1.Items.Add('COM1');
     ComboBox1.Items.Add('COM2');
     ComboBox1.Items.Add('COM3');
     ComboBox1.Items.Add('COM4');
     ComboBox1.Items.Add('COM5');
     ComboBox1.Items.Add('COM6');
     ComboBox1.Items.Add('COM7');

     ComboBox1.ItemIndex:= 0;

end;


end.

