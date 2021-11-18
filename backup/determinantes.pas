unit determinantes;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TVector3D = record
    x,y,z : real;
  end;

  TMatriz = record
    v1,v2,v3 : TVector3D;
  end;

  { TDeterminante }

  TDeterminante = class(TObject)
    private
      fmat : TMatriz;
      fDet : Real;
      procedure calcular;
    public
      procedure leerMatriz(mat : TMatriz);

  end;

implementation

{ TDeterminante }

procedure TDeterminante.calcular;
var
  a,b,c,d,e,f,g,h,i : integer;
begin
    with fmat do
    begin
      a := v1.x;
    end;

end;

procedure TDeterminante.leerMatriz(mat: TMatriz);
begin
    fmat := mat;
end;


end.

