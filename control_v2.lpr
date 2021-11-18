program control_v2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, sdposeriallaz, tachartlazaruspkg, Unit1, Unit3, variables,
  ficheros, testDatos, debug1
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAuxiliar, Auxiliar);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFormDebug, FormDebug);
  Application.Run;
end.

