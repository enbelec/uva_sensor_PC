unit variables;

{$mode objfpc}{$H+}


interface

uses
  Classes, SysUtils;

const
  NUM_SENSORES = 64;
  MAX_ARR_DATOS = 5000;

var

  arrSens : ARRAY[0..NUM_SENSORES] OF char;
  FactArray : boolean; //para actualizar el array en principal
  puerto :  string;        //puerto seleccionado
  FpuertoAbierto : boolean; //si se ha abierto el puerto lo pone
  modoFuncionamiento : integer; //modo de funcionamiento para pintar los leds

  //        arrays en real
  arrO2 : array[0..64] of real;
  arrTemp : array[0..64] of real;
  arrPres : array[0..64] of integer;
  arrO2Rel :array[0..64] of real;


  //array de datos para guardar en bloque
  sarrBufProceso : array[0..64] of string; //matriz del array qwue entra
  icontSensIn : integer; //contador del numero de sensor que llega, se incrementa

  //array datos en string, es donde lo guarda leedatos
  sarrTiempo : array[0..MAX_ARR_DATOS] of String;
  sarrSensor : array[0..MAX_ARR_DATOS] of string;
  sarrO2 : array[0..MAX_ARR_DATOS] of string;
  sarrTemp : array[0..MAX_ARR_DATOS] of string;
  sarrPres : array[0..MAX_ARR_DATOS] of string;
  sarrO2Rel : array[0..MAX_ARR_DATOS] of string;
  inumDatosLeidos : integer; //numero de datos leidos del fichero

  FactArrCasillas : boolean;  //para que actualize casillas

  numeroPlacas : string;
  tiempoEntreMedidas : string;
  tiempoTotal : string;
  limiteO2 : string;
  stiempoTest : string;

  snumSensDat : string;
  sO2Dat :string;
  sTempDat :string;
  sPresDat : string;
  sO2RelDat : string;
  serrDat: string;

  sdirApp : string;
  sNombreFichDatos : string;
  sNombreFichSetup : string;
  sFechaFichDatos : string;
  sNombreFichDatosPinta :string;

  inicioMide : TDateTime; //a que hora ha empezado a medir

implementation

end.

