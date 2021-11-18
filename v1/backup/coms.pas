unit Coms;

{$mode objfpc}{$H+}
{$M+}

interface

uses
  Classes, SysUtils, SdpoSerial, unit1;

type

  { Tcoms }
  Tcoms = class(TObject)
    private
       serial2 : TSdpoSerial;

    public
       procedure abrePuerto(puerto : string);
       procedure cierraPuerto();
       procedure numeroPuerto(puerto : string);
  end;

implementation


{ Tcoms }

procedure Tcoms.abrePuerto(puerto: string);

begin
     serial2.Device := 'COM6';
     serial2.Open;

end;
procedure Tcoms.cierraPuerto();
begin
     serial2.Close;
end;

procedure Tcoms.numeroPuerto(puerto : string);
begin
     serial2.Device := puerto;
end;


end.

