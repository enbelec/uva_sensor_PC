unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
  ExtCtrls, Menus, SdpoSerial, TAGraph, TASeries, TATools, Unit3, variables,
  ficheros, Types, testdatos, TADrawUtils, TACustomSeries, debug1;

type

  { TForm1 }

  TForm1 = class(TForm)
    BotFichGraf: TButton;
    BotDibuja: TButton;
    BtGuardaExcel: TButton;
    btZoomOff: TButton;
    Borra: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Chart1LineSeries10: TLineSeries;
    Chart1LineSeries11: TLineSeries;
    Chart1LineSeries12: TLineSeries;
    Chart1LineSeries13: TLineSeries;
    Chart1LineSeries14: TLineSeries;
    Chart1LineSeries15: TLineSeries;
    Chart1LineSeries16: TLineSeries;
    Chart1LineSeries17: TLineSeries;
    Chart1LineSeries18: TLineSeries;
    Chart1LineSeries19: TLineSeries;
    Chart1LineSeries2: TLineSeries;
    Chart1LineSeries20: TLineSeries;
    Chart1LineSeries21: TLineSeries;
    Chart1LineSeries22: TLineSeries;
    Chart1LineSeries23: TLineSeries;
    Chart1LineSeries24: TLineSeries;
    Chart1LineSeries25: TLineSeries;
    Chart1LineSeries26: TLineSeries;
    Chart1LineSeries27: TLineSeries;
    Chart1LineSeries28: TLineSeries;
    Chart1LineSeries29: TLineSeries;
    Chart1LineSeries3: TLineSeries;
    Chart1LineSeries30: TLineSeries;
    Chart1LineSeries31: TLineSeries;
    Chart1LineSeries32: TLineSeries;
    Chart1LineSeries33: TLineSeries;
    Chart1LineSeries34: TLineSeries;
    Chart1LineSeries35: TLineSeries;
    Chart1LineSeries36: TLineSeries;
    Chart1LineSeries37: TLineSeries;
    Chart1LineSeries38: TLineSeries;
    Chart1LineSeries39: TLineSeries;
    Chart1LineSeries4: TLineSeries;
    Chart1LineSeries40: TLineSeries;
    Chart1LineSeries41: TLineSeries;
    Chart1LineSeries42: TLineSeries;
    Chart1LineSeries43: TLineSeries;
    Chart1LineSeries44: TLineSeries;
    Chart1LineSeries45: TLineSeries;
    Chart1LineSeries46: TLineSeries;
    Chart1LineSeries47: TLineSeries;
    Chart1LineSeries48: TLineSeries;
    Chart1LineSeries49: TLineSeries;
    Chart1LineSeries5: TLineSeries;
    Chart1LineSeries50: TLineSeries;
    Chart1LineSeries51: TLineSeries;
    Chart1LineSeries52: TLineSeries;
    Chart1LineSeries53: TLineSeries;
    Chart1LineSeries54: TLineSeries;
    Chart1LineSeries55: TLineSeries;
    Chart1LineSeries56: TLineSeries;
    Chart1LineSeries57: TLineSeries;
    Chart1LineSeries58: TLineSeries;
    Chart1LineSeries59: TLineSeries;
    Chart1LineSeries6: TLineSeries;
    Chart1LineSeries60: TLineSeries;
    Chart1LineSeries61: TLineSeries;
    Chart1LineSeries62: TLineSeries;
    Chart1LineSeries63: TLineSeries;
    Chart1LineSeries64: TLineSeries;
    Chart1LineSeries7: TLineSeries;
    Chart1LineSeries8: TLineSeries;
    Chart1LineSeries9: TLineSeries;
    ChartToolset1: TChartToolset;
    ChartToolset1DataPointClickTool1: TDataPointClickTool;
    ChartToolset1PanMouseWheelTool_hor: TPanMouseWheelTool;
    ChartToolset1PanMouseWheelTool_vert: TPanMouseWheelTool;
    ChartToolset1ZoomMouseWheelTool1: TZoomMouseWheelTool;
    ChartToolset1ZoomMouseWheelTool_hor: TZoomMouseWheelTool;
    ChartToolset1ZoomMouseWheelTool_vert: TZoomMouseWheelTool;
    CheckSel1: TCheckBox;
    CheckSel10: TCheckBox;
    CheckSel11: TCheckBox;
    CheckSel12: TCheckBox;
    CheckSel13: TCheckBox;
    CheckSel14: TCheckBox;
    CheckSel15: TCheckBox;
    CheckSel16: TCheckBox;
    CheckSel17: TCheckBox;
    CheckSel18: TCheckBox;
    CheckSel19: TCheckBox;
    CheckSel2: TCheckBox;
    CheckSel20: TCheckBox;
    CheckSel21: TCheckBox;
    CheckSel22: TCheckBox;
    CheckSel23: TCheckBox;
    CheckSel24: TCheckBox;
    CheckSel25: TCheckBox;
    CheckSel26: TCheckBox;
    CheckSel27: TCheckBox;
    CheckSel28: TCheckBox;
    CheckSel29: TCheckBox;
    CheckSel3: TCheckBox;
    CheckSel30: TCheckBox;
    CheckSel31: TCheckBox;
    CheckSel32: TCheckBox;
    CheckSel33: TCheckBox;
    CheckSel34: TCheckBox;
    CheckSel35: TCheckBox;
    CheckSel36: TCheckBox;
    CheckSel37: TCheckBox;
    CheckSel38: TCheckBox;
    CheckSel39: TCheckBox;
    CheckSel4: TCheckBox;
    CheckSel40: TCheckBox;
    CheckSel41: TCheckBox;
    CheckSel42: TCheckBox;
    CheckSel43: TCheckBox;
    CheckSel44: TCheckBox;
    CheckSel45: TCheckBox;
    CheckSel46: TCheckBox;
    CheckSel47: TCheckBox;
    CheckSel48: TCheckBox;
    CheckSel49: TCheckBox;
    CheckSel5: TCheckBox;
    CheckSel50: TCheckBox;
    CheckSel51: TCheckBox;
    CheckSel52: TCheckBox;
    CheckSel53: TCheckBox;
    CheckSel54: TCheckBox;
    CheckSel55: TCheckBox;
    CheckSel56: TCheckBox;
    CheckSel57: TCheckBox;
    CheckSel58: TCheckBox;
    CheckSel59: TCheckBox;
    CheckSel6: TCheckBox;
    CheckSel60: TCheckBox;
    CheckSel61: TCheckBox;
    CheckSel62: TCheckBox;
    CheckSel63: TCheckBox;
    CheckSel64: TCheckBox;
    CheckSel7: TCheckBox;
    CheckSel8: TCheckBox;
    CheckSel9: TCheckBox;
    ColorDialog1: TColorDialog;
    cuadrado10: TShape;
    cuadrado11: TShape;
    cuadrado12: TShape;
    cuadrado13: TShape;
    cuadrado14: TShape;
    cuadrado15: TShape;
    cuadrado16: TShape;
    cuadrado17: TShape;
    cuadrado18: TShape;
    cuadrado19: TShape;
    cuadrado2: TShape;
    cuadrado20: TShape;
    cuadrado21: TShape;
    cuadrado22: TShape;
    cuadrado23: TShape;
    cuadrado24: TShape;
    cuadrado25: TShape;
    cuadrado26: TShape;
    cuadrado27: TShape;
    cuadrado28: TShape;
    cuadrado29: TShape;
    cuadrado3: TShape;
    cuadrado30: TShape;
    cuadrado31: TShape;
    cuadrado32: TShape;
    cuadrado33: TShape;
    cuadrado34: TShape;
    cuadrado35: TShape;
    cuadrado36: TShape;
    cuadrado37: TShape;
    cuadrado38: TShape;
    cuadrado39: TShape;
    cuadrado4: TShape;
    cuadrado40: TShape;
    cuadrado41: TShape;
    cuadrado42: TShape;
    cuadrado43: TShape;
    cuadrado44: TShape;
    cuadrado45: TShape;
    cuadrado46: TShape;
    cuadrado47: TShape;
    cuadrado48: TShape;
    cuadrado49: TShape;
    cuadrado5: TShape;
    cuadrado50: TShape;
    cuadrado51: TShape;
    cuadrado52: TShape;
    cuadrado53: TShape;
    cuadrado54: TShape;
    cuadrado55: TShape;
    cuadrado56: TShape;
    cuadrado57: TShape;
    cuadrado58: TShape;
    cuadrado59: TShape;
    cuadrado6: TShape;
    cuadrado60: TShape;
    cuadrado61: TShape;
    cuadrado62: TShape;
    cuadrado63: TShape;
    cuadrado64: TShape;
    cuadrado7: TShape;
    cuadrado8: TShape;
    cuadrado9: TShape;
    EdFichDatos: TEdit;
    EdMinO2: TEdit;
    edNombreLinea: TEdit;
    EdMaxO2RelSens: TEdit;
    EdMaxTempSens: TEdit;
    EdMaxPresSens: TEdit;
    EdMaxO2Rel: TEdit;
    EdMaxTemp: TEdit;
    EdMaxPres: TEdit;
    EdMaxO2: TEdit;
    EdMinO2Sens: TEdit;
    EdMaxO2Sens: TEdit;
    EdMinO2RelSens: TEdit;
    EdNumMedidas: TEdit;
    EdMinTempSens: TEdit;
    EdMinPresSens: TEdit;
    EdMinO2Rel: TEdit;
    EdMinTemp: TEdit;
    EdMinPres: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    RadioBO2: TRadioButton;
    RadioBO2R: TRadioButton;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    CheckBox55: TCheckBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox60: TCheckBox;
    CheckBox61: TCheckBox;
    CheckBox62: TCheckBox;
    CheckBox63: TCheckBox;
    CheckBox64: TCheckBox;
    ComboCom: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    LabelHora: TLabel;
    LabelPresion: TLabel;
    LabelHora2: TLabel;
    LabelTemp: TLabel;
    Led17: TShape;
    Led18: TShape;
    Led19: TShape;
    Led20: TShape;
    Led21: TShape;
    Led22: TShape;
    Led23: TShape;
    Led24: TShape;
    Led25: TShape;
    Led26: TShape;
    Led27: TShape;
    Led28: TShape;
    Led29: TShape;
    Led30: TShape;
    Led31: TShape;
    Led32: TShape;
    Led33: TShape;
    Led34: TShape;
    Led35: TShape;
    Led36: TShape;
    Led37: TShape;
    Led38: TShape;
    Led39: TShape;
    Led40: TShape;
    Led41: TShape;
    Led42: TShape;
    Led43: TShape;
    Led44: TShape;
    Led45: TShape;
    Led46: TShape;
    Led47: TShape;
    Led48: TShape;
    Led49: TShape;
    Led50: TShape;
    Led51: TShape;
    Led52: TShape;
    Led53: TShape;
    Led54: TShape;
    Led55: TShape;
    Led56: TShape;
    Led57: TShape;
    Led58: TShape;
    Led59: TShape;
    Led60: TShape;
    Led61: TShape;
    Led62: TShape;
    Led63: TShape;
    Led64: TShape;
    led_vacia: TShape;
    led_mide: TShape;
    led_stop: TShape;
    MenuItem2: TMenuItem;
    MenuItem7: TMenuItem;
    O2_17: TEdit;
    O2_18: TEdit;
    O2_19: TEdit;
    O2_20: TEdit;
    O2_21: TEdit;
    O2_22: TEdit;
    O2_23: TEdit;
    O2_24: TEdit;
    O2_25: TEdit;
    O2_26: TEdit;
    O2_27: TEdit;
    O2_28: TEdit;
    O2_29: TEdit;
    O2_30: TEdit;
    O2_31: TEdit;
    O2_32: TEdit;
    O2_33: TEdit;
    O2_34: TEdit;
    O2_35: TEdit;
    O2_36: TEdit;
    O2_37: TEdit;
    O2_38: TEdit;
    O2_39: TEdit;
    O2_40: TEdit;
    O2_41: TEdit;
    O2_42: TEdit;
    O2_43: TEdit;
    O2_44: TEdit;
    O2_45: TEdit;
    O2_46: TEdit;
    O2_47: TEdit;
    O2_48: TEdit;
    O2_49: TEdit;
    O2_50: TEdit;
    O2_51: TEdit;
    O2_52: TEdit;
    O2_53: TEdit;
    O2_54: TEdit;
    O2_55: TEdit;
    O2_56: TEdit;
    O2_57: TEdit;
    O2_58: TEdit;
    O2_59: TEdit;
    O2_60: TEdit;
    O2_61: TEdit;
    O2_62: TEdit;
    O2_63: TEdit;
    O2_64: TEdit;
    pc17: TEdit;
    pc18: TEdit;
    pc19: TEdit;
    pc20: TEdit;
    pc21: TEdit;
    pc22: TEdit;
    pc23: TEdit;
    pc24: TEdit;
    pc25: TEdit;
    pc26: TEdit;
    pc27: TEdit;
    pc28: TEdit;
    pc29: TEdit;
    pc30: TEdit;
    pc31: TEdit;
    pc32: TEdit;
    pc33: TEdit;
    pc34: TEdit;
    pc35: TEdit;
    pc36: TEdit;
    pc37: TEdit;
    pc38: TEdit;
    pc39: TEdit;
    pc40: TEdit;
    pc41: TEdit;
    pc42: TEdit;
    pc43: TEdit;
    pc44: TEdit;
    pc45: TEdit;
    pc46: TEdit;
    pc47: TEdit;
    pc48: TEdit;
    pc49: TEdit;
    pc50: TEdit;
    pc51: TEdit;
    pc52: TEdit;
    pc53: TEdit;
    pc54: TEdit;
    pc55: TEdit;
    pc56: TEdit;
    pc57: TEdit;
    pc58: TEdit;
    pc59: TEdit;
    pc60: TEdit;
    pc61: TEdit;
    pc62: TEdit;
    pc63: TEdit;
    pc64: TEdit;
    pres17: TEdit;
    pres18: TEdit;
    pres19: TEdit;
    pres20: TEdit;
    pres21: TEdit;
    pres22: TEdit;
    pres23: TEdit;
    pres24: TEdit;
    pres25: TEdit;
    pres26: TEdit;
    pres27: TEdit;
    pres28: TEdit;
    pres29: TEdit;
    pres30: TEdit;
    pres31: TEdit;
    pres32: TEdit;
    pres33: TEdit;
    pres34: TEdit;
    pres35: TEdit;
    pres36: TEdit;
    pres37: TEdit;
    pres38: TEdit;
    pres39: TEdit;
    pres40: TEdit;
    pres41: TEdit;
    pres42: TEdit;
    pres43: TEdit;
    pres44: TEdit;
    pres45: TEdit;
    pres46: TEdit;
    pres47: TEdit;
    pres48: TEdit;
    pres49: TEdit;
    pres50: TEdit;
    pres51: TEdit;
    pres52: TEdit;
    pres53: TEdit;
    pres54: TEdit;
    pres55: TEdit;
    pres56: TEdit;
    pres57: TEdit;
    pres58: TEdit;
    pres59: TEdit;
    pres60: TEdit;
    pres61: TEdit;
    pres62: TEdit;
    pres63: TEdit;
    pres64: TEdit;
    rBPan: TRadioButton;
    rBZoom: TRadioButton;
    SaveDialog1: TSaveDialog;
    Shape1: TShape;
    cuadrado1: TShape;
    TabSheet1: TTabSheet;
    temp17: TEdit;
    temp18: TEdit;
    temp19: TEdit;
    temp20: TEdit;
    temp21: TEdit;
    temp22: TEdit;
    temp23: TEdit;
    temp24: TEdit;
    temp25: TEdit;
    temp26: TEdit;
    temp27: TEdit;
    temp28: TEdit;
    temp29: TEdit;
    temp30: TEdit;
    temp31: TEdit;
    temp32: TEdit;
    temp33: TEdit;
    temp34: TEdit;
    temp35: TEdit;
    temp36: TEdit;
    temp37: TEdit;
    temp38: TEdit;
    temp39: TEdit;
    temp40: TEdit;
    temp41: TEdit;
    temp42: TEdit;
    temp43: TEdit;
    temp44: TEdit;
    temp45: TEdit;
    temp46: TEdit;
    temp47: TEdit;
    temp48: TEdit;
    temp49: TEdit;
    temp50: TEdit;
    temp51: TEdit;
    temp52: TEdit;
    temp53: TEdit;
    temp54: TEdit;
    temp55: TEdit;
    temp56: TEdit;
    temp57: TEdit;
    temp58: TEdit;
    temp59: TEdit;
    temp60: TEdit;
    temp61: TEdit;
    temp62: TEdit;
    temp63: TEdit;
    temp64: TEdit;
    todosCheck2: TCheckBox;
    todosCheck3: TCheckBox;
    todosCheck4: TCheckBox;
    VacMide: TButton;
    test2: TButton;
    test: TButton;
    Stop: TButton;
    todosCheck1: TCheckBox;
    Vacia: TButton;
    Mide: TButton;
    FicheroDatos: TButton;
    GuardaSetup: TButton;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Label29: TLabel;
    O2_1: TEdit;
    led_con: TShape;
    OpenDialog1: TOpenDialog;
    temp3: TEdit;
    pres3: TEdit;
    pc3: TEdit;
    O2_4: TEdit;
    temp4: TEdit;
    pres4: TEdit;
    pc4: TEdit;
    O2_5: TEdit;
    temp5: TEdit;
    pres5: TEdit;
    temp1: TEdit;
    pc5: TEdit;
    O2_6: TEdit;
    temp6: TEdit;
    pres6: TEdit;
    pc6: TEdit;
    O2_7: TEdit;
    temp7: TEdit;
    pres7: TEdit;
    pc7: TEdit;
    O2_8: TEdit;
    pres1: TEdit;
    temp8: TEdit;
    pres8: TEdit;
    pc8: TEdit;
    pc9: TEdit;
    pres9: TEdit;
    temp9: TEdit;
    O2_9: TEdit;
    O2_10: TEdit;
    temp10: TEdit;
    pres10: TEdit;
    pc1: TEdit;
    pc10: TEdit;
    pc11: TEdit;
    pres11: TEdit;
    temp11: TEdit;
    O2_11: TEdit;
    O2_12: TEdit;
    temp12: TEdit;
    pres12: TEdit;
    pc12: TEdit;
    pc13: TEdit;
    O2_2: TEdit;
    pres13: TEdit;
    temp13: TEdit;
    O2_13: TEdit;
    O2_14: TEdit;
    temp14: TEdit;
    pres14: TEdit;
    pc14: TEdit;
    pc15: TEdit;
    pres15: TEdit;
    temp15: TEdit;
    temp2: TEdit;
    O2_15: TEdit;
    O2_16: TEdit;
    temp16: TEdit;
    pres16: TEdit;
    pc16: TEdit;
    NumeroCajas: TEdit;
    TiempoMedidas: TEdit;
    TiempoTotal: TEdit;
    LimiteO2: TEdit;
    nombreFichero: TEdit;
    pres2: TEdit;
    pc2: TEdit;
    O2_3: TEdit;
    CargaSetup: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Paginas: TPageControl;
    caja1: TTabSheet;
    caja2: TTabSheet;
    caja3: TTabSheet;
    caja4: TTabSheet;
    Led1: TShape;
    Led10: TShape;
    Led11: TShape;
    Led12: TShape;
    Led13: TShape;
    Led14: TShape;
    Led15: TShape;
    Led16: TShape;
    Led2: TShape;
    Led3: TShape;
    Led4: TShape;
    Led5: TShape;
    Led6: TShape;
    Led7: TShape;
    Led8: TShape;
    Led9: TShape;
    setup: TTabSheet;
    Timer1: TTimer;
    procedure BorraClick(Sender: TObject);
    procedure BotDibujaClick(Sender: TObject);
    procedure BotFichGrafClick(Sender: TObject);
    procedure BtGuardaExcelClick(Sender: TObject);
    procedure btZoomOffClick(Sender: TObject);
    procedure CargaSetupClick(Sender: TObject);
    procedure Chart1Click(Sender: TObject);
    procedure ChartToolset1DataPointClickTool1PointClick(ATool: TChartTool;
      APoint: TPoint);
    procedure CheckBox1Change(Sender: TObject);
    procedure ComboComChange(Sender: TObject);
    procedure cuadrado1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FicheroDatosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GuardaSetupClick(Sender: TObject);
    procedure LimiteO2Change(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MideClick(Sender: TObject);
    procedure NumeroCajasChange(Sender: TObject);
    procedure PaginasChange(Sender: TObject);
    procedure rBZoomChange(Sender: TObject);
    procedure StopClick(Sender: TObject);
    procedure test2Click(Sender: TObject);
    procedure testClick(Sender: TObject);
    procedure TiempoMedidasChange(Sender: TObject);
    procedure TiempoTotalChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure todosCheck1Change(Sender: TObject);
    procedure todosCheck2Change(Sender: TObject);
    procedure todosCheck3Change(Sender: TObject);
    procedure todosCheck4Change(Sender: TObject);
    procedure VaciaClick(Sender: TObject);
    procedure VacMideClick(Sender: TObject);
  private
    procedure ActualizaLedsArray;
    procedure verificaNumeroPlacas();
    procedure verificaTiempoMedidas();
    procedure verificaTiempoTotal();
    procedure verificaLimiteO2();
    procedure  ActualizaLedsModo();
    procedure actualizaCasillas();
    procedure actualizaChecks();
    procedure PintaArrayO2();
    procedure BorraChecksGraf();
    procedure PoneCheckGraf(num : integer);
    procedure borrachart1list();
  public

  end;


var
  Form1: TForm1;

  stemp : string;
  itemp : integer;
  bactualizachecks : boolean;

//  arrSens : ARRAY[0..NUM_SENSORES] OF char;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
  var
    f : integer;
    fich : Tficheros;

  begin
    // se ejecutta al aarrancar

    for f:=0 to NUM_SENSORES do
    begin
        variables.arrSens[f] := '0';
    end;
    variables.FactArray:= true;
    // inicializa combo coms
       ComboCom.Clear;
       ComboCom.Items.Add('COM1');
       ComboCom.Items.Add('COM2');
       ComboCom.Items.Add('COM3');
       ComboCom.Items.Add('COM4');
       ComboCom.Items.Add('COM5');
       ComboCom.Items.Add('COM6');
       ComboCom.Items.Add('COM7');
       ComboCom.ItemIndex:= 5;
       puerto:='COM6';

       fich := Tficheros.Create;
       // si no esxite el fichero inicializa y guarda
       variables.sdirApp := ExtractFilePath(ParamStr(0));
       variables.sNombreFichSetup:= 'inicioO2.stp';
       if (fich.leeSetup(variables.sNombreFichSetup) = false) then
          begin
             variables.numeroPlacas:='3';
             variables.tiempoEntreMedidas:='02';
             variables.tiempoTotal:='0003';
             variables.limiteO2:='0185';
             variables.sNombreFichDatos:= sdirApp + 'datos_medicion.dat';
             if FileExists(variables.sNombreFichDatos) = false then
                begin
                   fich.nuevoFichDatos();
                end;
             fich.guardaSetup(variables.sNombreFichSetup);
          end;
       fich.Destroy;
       NumeroCajas.Text:=variables.numeroPlacas;
       TiempoMedidas.Text:=variables.tiempoEntreMedidas;
       TiempoTotal.Text:=variables.tiempoTotal;
       LimiteO2.Text:=variables.limiteO2;
       nombreFichero.Text:= variables.sNombreFichDatos;

       //inicializa variables luego hacedrlo leyendo un fichero
       verificaNumeroPlacas();
       verificaTiempoMedidas();
       verificaTiempoTotal();
       verificaLimiteO2();


end;

//*********************   TIMER ***********
procedure TForm1.Timer1Timer(Sender: TObject);
var
  stemp : string;
  diferenciaHora : TDateTime;
  hora, minutos, segundos, milsec, itemp : word;

begin

  //------------------ pinta hora-------------
  stemp := FormatDateTime('hh:mm:ss', now);
  LabelHora.Caption:= stemp;

  // ------------- si esta en modo 3 esta midiendo, cuenta los minutos
  if (variables.modoFuncionamiento = 3)then begin
    diferenciaHora:=now - variables.inicioMide;
    DecodeTime(diferenciaHora, hora, minutos, segundos, milsec);
    itemp := (hora * 60) + minutos;
    stemp := format('%.3d', [itemp])+':'+ format('%.2d', [segundos]);
    LabelHora2.Caption:= stemp;
    variables.stiempoTest:= stemp; //guarda tiempo de test para mandarlo al fichero de datos
    if (itemp >= StrToInt(variables.tiempoTotal))then begin
      Auxiliar.poneEstado(EST_FIN_MEDIR); //mira si ha llegado al final de la medicion
    end;
  end;


  if unit3.Fconectado then
     led_con.Brush.Color:= clGreen
  else led_con.Brush.Color:=clWhite;
  //actualiza array
  ActualizaLedsModo();
  if (variables.FactArray = true)then
     begin
          variables.FactArray:=false;
          ActualizaLedsArray;
     end;
  if (variables.FactArrCasillas = true) then begin
       variables.FactArrCasillas:= false;
       actualizaCasillas();
  end;

  label15.Caption:= variables.limiteO2;
  label16.Caption:= variables.limiteO2;
  label21.Caption:= variables.limiteO2;
  label30.Caption:= variables.limiteO2;
  label10.Caption:= variables.tiempoTotal;
end;

//************************    vacia
procedure TForm1.VaciaClick(Sender: TObject);
var
  f, g : integer;
begin
//  Auxiliar.Show;
  g := 0;
  for f := 0 to NUM_SENSORES do
  begin
       if (variables.arrSens[f] = '1') then g := 1;
  end;
  Auxiliar.vaciarYmedir(false);
  if (g = 0) then ShowMessage('Tiene que haber al menos un sensor seleccionado')
  else  Auxiliar.poneEstado(EST_VACIA);
end;

//************************     mide
procedure TForm1.MideClick(Sender: TObject);
var
  f, g : integer;
begin
//  Auxiliar.Show;
  g := 0;
  for f := 0 to NUM_SENSORES do
  begin
       if (variables.arrSens[f] = '1') then g := 1;
  end;
  Auxiliar.vaciarYmedir(false);
  if (g = 0) then ShowMessage('Tiene que haber al menos un sensor seleccionado')
  else Auxiliar.poneEstado(EST_MIDE);
end;

//************************* vacia y mide *****
procedure TForm1.VacMideClick(Sender: TObject);
var f, g : integer;
begin
  g := 0;
  for f := 0 to NUM_SENSORES do
  begin
       if (variables.arrSens[f] = '1') then g := 1;
  end;
  Auxiliar.vaciarYmedir(true); //despues de vaciar que mida
  if (g = 0) then ShowMessage('Tiene que haber al menos un sensor seleccionado')
  else Auxiliar.poneEstado(EST_VACIA);
end;
//***************** stop **********
procedure TForm1.StopClick(Sender: TObject);
begin
  Auxiliar.Close;
  Auxiliar.poneEstado(EST_PARAR);
end;

//************* actualiza leds con array
procedure TForm1.ActualizaLedsArray;
VAR
  itemp : integer;
begin
   itemp :=  Paginas.TabIndex;
   case itemp of
     1: begin //tab del 1 al 16
        if (variables.arrSens[0] = '0')then Led1.Brush.Color:=clWhite
        else Led1.Brush.Color:=clGreen;
        if (variables.arrSens[1] = '0')then Led2.Brush.Color:=clWhite
        else Led2.Brush.Color:=clGreen;
        if (variables.arrSens[2] = '0')then Led3.Brush.Color:=clWhite
        else Led3.Brush.Color:=clGreen;
        if (variables.arrSens[3] = '0')then Led4.Brush.Color:=clWhite
        else Led4.Brush.Color:=clGreen;
        if (variables.arrSens[4] = '0')then Led5.Brush.Color:=clWhite
        else Led5.Brush.Color:=clGreen;
        if (variables.arrSens[5] = '0')then Led6.Brush.Color:=clWhite
        else Led6.Brush.Color:=clGreen;
        if (variables.arrSens[6] = '0')then Led7.Brush.Color:=clWhite
        else Led7.Brush.Color:=clGreen;
        if (variables.arrSens[7] = '0')then Led8.Brush.Color:=clWhite
        else Led8.Brush.Color:=clGreen;
        if (variables.arrSens[8] = '0')then Led9.Brush.Color:=clWhite
        else Led9.Brush.Color:=clGreen;
        if (variables.arrSens[9] = '0')then Led10.Brush.Color:=clWhite
        else Led10.Brush.Color:=clGreen;
        if (variables.arrSens[10] = '0')then Led11.Brush.Color:=clWhite
        else Led11.Brush.Color:=clGreen;
        if (variables.arrSens[11] = '0')then Led12.Brush.Color:=clWhite
        else Led12.Brush.Color:=clGreen;
        if (variables.arrSens[12] = '0')then Led13.Brush.Color:=clWhite
        else Led13.Brush.Color:=clGreen;
        if (variables.arrSens[13] = '0')then Led14.Brush.Color:=clWhite
        else Led14.Brush.Color:=clGreen;
        if (variables.arrSens[14] = '0')then Led15.Brush.Color:=clWhite
        else Led15.Brush.Color:=clGreen;
        if (variables.arrSens[15] = '0')then Led16.Brush.Color:=clWhite
        else Led16.Brush.Color:=clGreen;
     end;
     2: begin
        if (variables.arrSens[16] = '0')then Led17.Brush.Color:=clWhite
        else Led17.Brush.Color:=clGreen;
        if (variables.arrSens[17] = '0')then Led18.Brush.Color:=clWhite
        else Led18.Brush.Color:=clGreen;
        if (variables.arrSens[18] = '0')then Led19.Brush.Color:=clWhite
        else Led19.Brush.Color:=clGreen;
        if (variables.arrSens[19] = '0')then Led20.Brush.Color:=clWhite
        else Led20.Brush.Color:=clGreen;
        if (variables.arrSens[20] = '0')then Led21.Brush.Color:=clWhite
        else Led21.Brush.Color:=clGreen;
        if (variables.arrSens[21] = '0')then Led22.Brush.Color:=clWhite
        else Led22.Brush.Color:=clGreen;
        if (variables.arrSens[22] = '0')then Led23.Brush.Color:=clWhite
        else Led23.Brush.Color:=clGreen;
        if (variables.arrSens[23] = '0')then Led24.Brush.Color:=clWhite
        else Led24.Brush.Color:=clGreen;
        if (variables.arrSens[24] = '0')then Led25.Brush.Color:=clWhite
        else Led25.Brush.Color:=clGreen;
        if (variables.arrSens[25] = '0')then Led26.Brush.Color:=clWhite
        else Led26.Brush.Color:=clGreen;
        if (variables.arrSens[26] = '0')then Led27.Brush.Color:=clWhite
        else Led27.Brush.Color:=clGreen;
        if (variables.arrSens[27] = '0')then Led28.Brush.Color:=clWhite
        else Led28.Brush.Color:=clGreen;
        if (variables.arrSens[28] = '0')then Led29.Brush.Color:=clWhite
        else Led29.Brush.Color:=clGreen;
        if (variables.arrSens[29] = '0')then Led30.Brush.Color:=clWhite
        else Led30.Brush.Color:=clGreen;
        if (variables.arrSens[30] = '0')then Led31.Brush.Color:=clWhite
        else Led31.Brush.Color:=clGreen;
        if (variables.arrSens[31] = '0')then Led32.Brush.Color:=clWhite
        else Led32.Brush.Color:=clGreen;
     end;
     3: begin
        if (variables.arrSens[32] = '0')then Led33.Brush.Color:=clWhite
        else Led33.Brush.Color:=clGreen;
        if (variables.arrSens[33] = '0')then Led34.Brush.Color:=clWhite
        else Led34.Brush.Color:=clGreen;
        if (variables.arrSens[34] = '0')then Led35.Brush.Color:=clWhite
        else Led35.Brush.Color:=clGreen;
        if (variables.arrSens[35] = '0')then Led36.Brush.Color:=clWhite
        else Led36.Brush.Color:=clGreen;
        if (variables.arrSens[36] = '0')then Led37.Brush.Color:=clWhite
        else Led37.Brush.Color:=clGreen;
        if (variables.arrSens[37] = '0')then Led38.Brush.Color:=clWhite
        else Led38.Brush.Color:=clGreen;
        if (variables.arrSens[38] = '0')then Led39.Brush.Color:=clWhite
        else Led39.Brush.Color:=clGreen;
        if (variables.arrSens[39] = '0')then Led40.Brush.Color:=clWhite
        else Led40.Brush.Color:=clGreen;
        if (variables.arrSens[40] = '0')then Led41.Brush.Color:=clWhite
        else Led41.Brush.Color:=clGreen;
        if (variables.arrSens[41] = '0')then Led42.Brush.Color:=clWhite
        else Led42.Brush.Color:=clGreen;
        if (variables.arrSens[42] = '0')then Led43.Brush.Color:=clWhite
        else Led43.Brush.Color:=clGreen;
        if (variables.arrSens[43] = '0')then Led44.Brush.Color:=clWhite
        else Led44.Brush.Color:=clGreen;
        if (variables.arrSens[44] = '0')then Led45.Brush.Color:=clWhite
        else Led45.Brush.Color:=clGreen;
        if (variables.arrSens[45] = '0')then Led46.Brush.Color:=clWhite
        else Led46.Brush.Color:=clGreen;
        if (variables.arrSens[46] = '0')then Led47.Brush.Color:=clWhite
        else Led47.Brush.Color:=clGreen;
        if (variables.arrSens[47] = '0')then Led48.Brush.Color:=clWhite
        else Led48.Brush.Color:=clGreen;
     end;
     4: begin
        if (variables.arrSens[48] = '0')then Led49.Brush.Color:=clWhite
        else Led49.Brush.Color:=clGreen;
        if (variables.arrSens[49] = '0')then Led50.Brush.Color:=clWhite
        else Led50.Brush.Color:=clGreen;
        if (variables.arrSens[50] = '0')then Led51.Brush.Color:=clWhite
        else Led51.Brush.Color:=clGreen;
        if (variables.arrSens[51] = '0')then Led52.Brush.Color:=clWhite
        else Led52.Brush.Color:=clGreen;
        if (variables.arrSens[52] = '0')then Led53.Brush.Color:=clWhite
        else Led53.Brush.Color:=clGreen;
        if (variables.arrSens[53] = '0')then Led54.Brush.Color:=clWhite
        else Led54.Brush.Color:=clGreen;
        if (variables.arrSens[54] = '0')then Led55.Brush.Color:=clWhite
        else Led55.Brush.Color:=clGreen;
        if (variables.arrSens[55] = '0')then Led56.Brush.Color:=clWhite
        else Led56.Brush.Color:=clGreen;
        if (variables.arrSens[56] = '0')then Led57.Brush.Color:=clWhite
        else Led57.Brush.Color:=clGreen;
        if (variables.arrSens[57] = '0')then Led58.Brush.Color:=clWhite
        else Led58.Brush.Color:=clGreen;
        if (variables.arrSens[58] = '0')then Led59.Brush.Color:=clWhite
        else Led59.Brush.Color:=clGreen;
        if (variables.arrSens[59] = '0')then Led60.Brush.Color:=clWhite
        else Led60.Brush.Color:=clGreen;
        if (variables.arrSens[60] = '0')then Led61.Brush.Color:=clWhite
        else Led61.Brush.Color:=clGreen;
        if (variables.arrSens[61] = '0')then Led62.Brush.Color:=clWhite
        else Led62.Brush.Color:=clGreen;
        if (variables.arrSens[62] = '0')then Led63.Brush.Color:=clWhite
        else Led63.Brush.Color:=clGreen;
        if (variables.arrSens[63] = '0')then Led64.Brush.Color:=clWhite
        else Led64.Brush.Color:=clGreen;
     end;
   end;
end;

procedure TForm1.ActualizaLedsModo();
begin
  // leds de control
  if (variables.modoFuncionamiento = 0)then begin //reposso
     led_mide.Brush.Color:= $FFFFFF;
     led_vacia.Brush.Color:= $FFFFFF;
     led_stop.Brush.Color:= $0000ff;
  end;
  if (variables.modoFuncionamiento = 1) then begin //conecta
     led_mide.Brush.Color:= $ff0000;
     led_vacia.Brush.Color:= $ff0000;
     led_stop.Brush.Color:= $ffffff;
  end;
  if (variables.modoFuncionamiento = 2) then begin //mide
     led_mide.Brush.Color:= $008000;
     led_vacia.Brush.Color:= $ffffff;
     led_stop.Brush.Color:= $ffffff;
  end;
  if (variables.modoFuncionamiento = 3) then begin //midiendo
     led_mide.Brush.Color:= $00ff00;
     led_vacia.Brush.Color:= $ffffff;
     led_stop.Brush.Color:= $ffffff;
  end;
  if (variables.modoFuncionamiento = 4) then begin //vacia
     led_mide.Brush.Color:= $ffffff;
     led_vacia.Brush.Color:= $008000;
     led_stop.Brush.Color:= $ffffff;
  end;
  if (variables.modoFuncionamiento = 5) then begin //vaciando
     led_mide.Brush.Color:= $ffffff;
     led_vacia.Brush.Color:= $00ff00;
     led_stop.Brush.Color:= $ffffff;
  end;

end;

//************************ actualiza casillas datos ******
procedure TForm1.actualizaCasillas();
var
  itemp : integer;
begin
     itemp :=  Paginas.TabIndex;
     case itemp of
       1: begin //tab del 1 al 16
          O2_1.Text:= FloatToStr(variables.arrO2[0]);
          O2_2.Text:= FloatToStr(variables.arrO2[1]);
          O2_3.Text:= FloatToStr(variables.arrO2[2]);
          O2_4.Text:= FloatToStr(variables.arrO2[3]);
          O2_5.Text:= FloatToStr(variables.arrO2[4]);
          O2_6.Text:= FloatToStr(variables.arrO2[5]);
          O2_7.Text:= FloatToStr(variables.arrO2[6]);
          O2_8.Text:= FloatToStr(variables.arrO2[7]);
          O2_9.Text:= FloatToStr(variables.arrO2[8]);
          O2_10.Text:= FloatToStr(variables.arrO2[9]);
          O2_11.Text:= FloatToStr(variables.arrO2[10]);
          O2_12.Text:= FloatToStr(variables.arrO2[11]);
          O2_13.Text:= FloatToStr(variables.arrO2[12]);
          O2_14.Text:= FloatToStr(variables.arrO2[13]);
          O2_15.Text:= FloatToStr(variables.arrO2[14]);
          O2_16.Text:= FloatToStr(variables.arrO2[15]);
          temp1.Text:= FloatToStr(variables.arrTemp[0]);
          temp2.Text:= FloatToStr(variables.arrTemp[1]);
          temp3.Text:= FloatToStr(variables.arrTemp[2]);
          temp4.Text:= FloatToStr(variables.arrTemp[3]);
          temp5.Text:= FloatToStr(variables.arrTemp[4]);
          temp6.Text:= FloatToStr(variables.arrTemp[5]);
          temp7.Text:= FloatToStr(variables.arrTemp[6]);
          temp8.Text:= FloatToStr(variables.arrTemp[7]);
          temp9.Text:= FloatToStr(variables.arrTemp[8]);
          temp10.Text:= FloatToStr(variables.arrTemp[9]);
          temp11.Text:= FloatToStr(variables.arrTemp[10]);
          temp12.Text:= FloatToStr(variables.arrTemp[11]);
          temp13.Text:= FloatToStr(variables.arrTemp[12]);
          temp14.Text:= FloatToStr(variables.arrTemp[13]);
          temp15.Text:= FloatToStr(variables.arrTemp[14]);
          temp16.Text:= FloatToStr(variables.arrTemp[15]);
          pres1.Text:= IntToStr(variables.arrPres[0]);
          pres2.Text:= IntToStr(variables.arrPres[1]);
          pres3.Text:= IntToStr(variables.arrPres[2]);
          pres4.Text:= IntToStr(variables.arrPres[3]);
          pres5.Text:= IntToStr(variables.arrPres[4]);
          pres6.Text:= IntToStr(variables.arrPres[5]);
          pres7.Text:= IntToStr(variables.arrPres[6]);
          pres8.Text:= IntToStr(variables.arrPres[7]);
          pres9.Text:= IntToStr(variables.arrPres[8]);
          pres10.Text:= IntToStr(variables.arrPres[9]);
          pres11.Text:= IntToStr(variables.arrPres[10]);
          pres12.Text:= IntToStr(variables.arrPres[11]);
          pres13.Text:= IntToStr(variables.arrPres[12]);
          pres14.Text:= IntToStr(variables.arrPres[13]);
          pres15.Text:= IntToStr(variables.arrPres[14]);
          pres16.Text:= IntToStr(variables.arrPres[15]);
          pc1.Text:= FloatToStr(variables.arrO2Rel[0]);
          pc2.Text:= FloatToStr(variables.arrO2Rel[1]);
          pc3.Text:= FloatToStr(variables.arrO2Rel[2]);
          pc4.Text:= FloatToStr(variables.arrO2Rel[3]);
          pc5.Text:= FloatToStr(variables.arrO2Rel[4]);
          pc6.Text:= FloatToStr(variables.arrO2Rel[5]);
          pc7.Text:= FloatToStr(variables.arrO2Rel[6]);
          pc8.Text:= FloatToStr(variables.arrO2Rel[7]);
          pc9.Text:= FloatToStr(variables.arrO2Rel[8]);
          pc10.Text:= FloatToStr(variables.arrO2Rel[9]);
          pc11.Text:= FloatToStr(variables.arrO2Rel[10]);
          pc12.Text:= FloatToStr(variables.arrO2Rel[11]);
          pc13.Text:= FloatToStr(variables.arrO2Rel[12]);
          pc14.Text:= FloatToStr(variables.arrO2Rel[13]);
          pc15.Text:= FloatToStr(variables.arrO2Rel[14]);
          pc16.Text:= FloatToStr(variables.arrO2Rel[15]);
       end;
       2: begin
          O2_17.Text :=   FloatToStr(variables.arrO2[16]);
          O2_18.Text :=   FloatToStr(variables.arrO2[17]);
          O2_19.Text :=   FloatToStr(variables.arrO2[18]);
          O2_20.Text :=   FloatToStr(variables.arrO2[19]);
          O2_21.Text :=   FloatToStr(variables.arrO2[20]);
          O2_22.Text :=   FloatToStr(variables.arrO2[21]);
          O2_23.Text :=   FloatToStr(variables.arrO2[22]);
          O2_24.Text :=   FloatToStr(variables.arrO2[23]);
          O2_25.Text :=   FloatToStr(variables.arrO2[24]);
          O2_26.Text :=   FloatToStr(variables.arrO2[25]);
          O2_27.Text :=   FloatToStr(variables.arrO2[26]);
          O2_28.Text :=   FloatToStr(variables.arrO2[27]);
          O2_29.Text :=   FloatToStr(variables.arrO2[28]);
          O2_30.Text :=   FloatToStr(variables.arrO2[29]);
          O2_31.Text :=   FloatToStr(variables.arrO2[30]);
          O2_32.Text :=   FloatToStr(variables.arrO2[31]);
          temp17.Text:= FloatToStr(variables.arrTemp[16]);
          temp18.Text:= FloatToStr(variables.arrTemp[17]);
          temp19.Text:= FloatToStr(variables.arrTemp[18]);
          temp20.Text:= FloatToStr(variables.arrTemp[19]);
          temp21.Text:= FloatToStr(variables.arrTemp[20]);
          temp22.Text:= FloatToStr(variables.arrTemp[21]);
          temp23.Text:= FloatToStr(variables.arrTemp[22]);
          temp24.Text:= FloatToStr(variables.arrTemp[23]);
          temp25.Text:= FloatToStr(variables.arrTemp[24]);
          temp26.Text:= FloatToStr(variables.arrTemp[25]);
          temp27.Text:= FloatToStr(variables.arrTemp[26]);
          temp28.Text:= FloatToStr(variables.arrTemp[27]);
          temp29.Text:= FloatToStr(variables.arrTemp[28]);
          temp30.Text:= FloatToStr(variables.arrTemp[29]);
          temp31.Text:= FloatToStr(variables.arrTemp[30]);
          temp32.Text:= FloatToStr(variables.arrTemp[31]);
          pres17.Text:=   IntToStr(variables.arrPres[16]);
          pres18.Text:=   IntToStr(variables.arrPres[17]);
          pres19.Text:=   IntToStr(variables.arrPres[18]);
          pres20.Text:=   IntToStr(variables.arrPres[19]);
          pres21.Text:=   IntToStr(variables.arrPres[20]);
          pres22.Text:=   IntToStr(variables.arrPres[21]);
          pres23.Text:=   IntToStr(variables.arrPres[22]);
          pres24.Text:=   IntToStr(variables.arrPres[23]);
          pres25.Text:=   IntToStr(variables.arrPres[24]);
          pres26.Text:=   IntToStr(variables.arrPres[25]);
          pres27.Text:=   IntToStr(variables.arrPres[26]);
          pres28.Text:=   IntToStr(variables.arrPres[27]);
          pres29.Text:=   IntToStr(variables.arrPres[28]);
          pres30.Text:=   IntToStr(variables.arrPres[29]);
          pres31.Text:=   IntToStr(variables.arrPres[30]);
          pres32.Text:=   IntToStr(variables.arrPres[31]);
          pc17.Text := FloatToStr(variables.arrO2Rel[16]);
          pc18.Text := FloatToStr(variables.arrO2Rel[17]);
          pc19.Text := FloatToStr(variables.arrO2Rel[18]);
          pc20.Text := FloatToStr(variables.arrO2Rel[19]);
          pc21.Text := FloatToStr(variables.arrO2Rel[20]);
          pc22.Text := FloatToStr(variables.arrO2Rel[21]);
          pc23.Text := FloatToStr(variables.arrO2Rel[22]);
          pc24.Text := FloatToStr(variables.arrO2Rel[23]);
          pc25.Text := FloatToStr(variables.arrO2Rel[24]);
          pc26.Text := FloatToStr(variables.arrO2Rel[25]);
          pc27.Text := FloatToStr(variables.arrO2Rel[26]);
          pc28.Text := FloatToStr(variables.arrO2Rel[27]);
          pc29.Text := FloatToStr(variables.arrO2Rel[28]);
          pc30.Text := FloatToStr(variables.arrO2Rel[29]);
          pc31.Text := FloatToStr(variables.arrO2Rel[30]);
          pc32.Text := FloatToStr(variables.arrO2Rel[31]);
       end;
       3:begin
          O2_33.Text :=   FloatToStr(variables.arrO2[32]);
          O2_34.Text :=   FloatToStr(variables.arrO2[33]);
          O2_35.Text :=   FloatToStr(variables.arrO2[34]);
          O2_36.Text :=   FloatToStr(variables.arrO2[35]);
          O2_37.Text :=   FloatToStr(variables.arrO2[36]);
          O2_38.Text :=   FloatToStr(variables.arrO2[37]);
          O2_39.Text :=   FloatToStr(variables.arrO2[38]);
          O2_40.Text :=   FloatToStr(variables.arrO2[39]);
          O2_41.Text :=   FloatToStr(variables.arrO2[40]);
          O2_42.Text :=   FloatToStr(variables.arrO2[41]);
          O2_43.Text :=   FloatToStr(variables.arrO2[42]);
          O2_44.Text :=   FloatToStr(variables.arrO2[43]);
          O2_45.Text :=   FloatToStr(variables.arrO2[44]);
          O2_46.Text :=   FloatToStr(variables.arrO2[45]);
          O2_47.Text :=   FloatToStr(variables.arrO2[46]);
          O2_48.Text :=   FloatToStr(variables.arrO2[47]);
          temp33.Text:= FloatToStr(variables.arrTemp[32]);
          temp34.Text:= FloatToStr(variables.arrTemp[33]);
          temp35.Text:= FloatToStr(variables.arrTemp[34]);
          temp36.Text:= FloatToStr(variables.arrTemp[35]);
          temp37.Text:= FloatToStr(variables.arrTemp[36]);
          temp38.Text:= FloatToStr(variables.arrTemp[37]);
          temp39.Text:= FloatToStr(variables.arrTemp[38]);
          temp40.Text:= FloatToStr(variables.arrTemp[39]);
          temp41.Text:= FloatToStr(variables.arrTemp[40]);
          temp42.Text:= FloatToStr(variables.arrTemp[41]);
          temp43.Text:= FloatToStr(variables.arrTemp[42]);
          temp44.Text:= FloatToStr(variables.arrTemp[43]);
          temp45.Text:= FloatToStr(variables.arrTemp[44]);
          temp46.Text:= FloatToStr(variables.arrTemp[45]);
          temp47.Text:= FloatToStr(variables.arrTemp[46]);
          temp48.Text:= FloatToStr(variables.arrTemp[47]);
          pres33.Text:=   IntToStr(variables.arrPres[32]);
          pres34.Text:=   IntToStr(variables.arrPres[33]);
          pres35.Text:=   IntToStr(variables.arrPres[34]);
          pres36.Text:=   IntToStr(variables.arrPres[35]);
          pres37.Text:=   IntToStr(variables.arrPres[36]);
          pres38.Text:=   IntToStr(variables.arrPres[37]);
          pres39.Text:=   IntToStr(variables.arrPres[38]);
          pres40.Text:=   IntToStr(variables.arrPres[39]);
          pres41.Text:=   IntToStr(variables.arrPres[40]);
          pres42.Text:=   IntToStr(variables.arrPres[41]);
          pres43.Text:=   IntToStr(variables.arrPres[42]);
          pres44.Text:=   IntToStr(variables.arrPres[43]);
          pres45.Text:=   IntToStr(variables.arrPres[44]);
          pres46.Text:=   IntToStr(variables.arrPres[45]);
          pres47.Text:=   IntToStr(variables.arrPres[46]);
          pres48.Text:=   IntToStr(variables.arrPres[47]);
          pc33.Text := FloatToStr(variables.arrO2Rel[32]);
          pc34.Text := FloatToStr(variables.arrO2Rel[33]);
          pc35.Text := FloatToStr(variables.arrO2Rel[34]);
          pc36.Text := FloatToStr(variables.arrO2Rel[35]);
          pc37.Text := FloatToStr(variables.arrO2Rel[36]);
          pc38.Text := FloatToStr(variables.arrO2Rel[37]);
          pc39.Text := FloatToStr(variables.arrO2Rel[38]);
          pc40.Text := FloatToStr(variables.arrO2Rel[39]);
          pc41.Text := FloatToStr(variables.arrO2Rel[40]);
          pc42.Text := FloatToStr(variables.arrO2Rel[41]);
          pc43.Text := FloatToStr(variables.arrO2Rel[42]);
          pc44.Text := FloatToStr(variables.arrO2Rel[43]);
          pc45.Text := FloatToStr(variables.arrO2Rel[44]);
          pc46.Text := FloatToStr(variables.arrO2Rel[45]);
          pc47.Text := FloatToStr(variables.arrO2Rel[46]);
          pc48.Text := FloatToStr(variables.arrO2Rel[47]);
       end;
       4: begin
          O2_49.Text :=   FloatToStr(variables.arrO2[48]);
          O2_50.Text :=   FloatToStr(variables.arrO2[49]);
          O2_51.Text :=   FloatToStr(variables.arrO2[50]);
          O2_52.Text :=   FloatToStr(variables.arrO2[51]);
          O2_53.Text :=   FloatToStr(variables.arrO2[52]);
          O2_54.Text :=   FloatToStr(variables.arrO2[53]);
          O2_55.Text :=   FloatToStr(variables.arrO2[54]);
          O2_56.Text :=   FloatToStr(variables.arrO2[55]);
          O2_57.Text :=   FloatToStr(variables.arrO2[56]);
          O2_58.Text :=   FloatToStr(variables.arrO2[57]);
          O2_59.Text :=   FloatToStr(variables.arrO2[58]);
          O2_60.Text :=   FloatToStr(variables.arrO2[59]);
          O2_61.Text :=   FloatToStr(variables.arrO2[60]);
          O2_62.Text :=   FloatToStr(variables.arrO2[61]);
          O2_63.Text :=   FloatToStr(variables.arrO2[62]);
          O2_64.Text :=   FloatToStr(variables.arrO2[63]);
          temp49.Text:= FloatToStr(variables.arrTemp[48]);
          temp50.Text:= FloatToStr(variables.arrTemp[49]);
          temp51.Text:= FloatToStr(variables.arrTemp[50]);
          temp52.Text:= FloatToStr(variables.arrTemp[51]);
          temp53.Text:= FloatToStr(variables.arrTemp[52]);
          temp54.Text:= FloatToStr(variables.arrTemp[53]);
          temp55.Text:= FloatToStr(variables.arrTemp[54]);
          temp56.Text:= FloatToStr(variables.arrTemp[55]);
          temp57.Text:= FloatToStr(variables.arrTemp[56]);
          temp58.Text:= FloatToStr(variables.arrTemp[57]);
          temp59.Text:= FloatToStr(variables.arrTemp[58]);
          temp60.Text:= FloatToStr(variables.arrTemp[59]);
          temp61.Text:= FloatToStr(variables.arrTemp[60]);
          temp62.Text:= FloatToStr(variables.arrTemp[61]);
          temp63.Text:= FloatToStr(variables.arrTemp[62]);
          temp64.Text:= FloatToStr(variables.arrTemp[63]);
          pres49.Text:=   IntToStr(variables.arrPres[48]);
          pres50.Text:=   IntToStr(variables.arrPres[49]);
          pres51.Text:=   IntToStr(variables.arrPres[50]);
          pres52.Text:=   IntToStr(variables.arrPres[51]);
          pres53.Text:=   IntToStr(variables.arrPres[52]);
          pres54.Text:=   IntToStr(variables.arrPres[53]);
          pres55.Text:=   IntToStr(variables.arrPres[54]);
          pres56.Text:=   IntToStr(variables.arrPres[55]);
          pres57.Text:=   IntToStr(variables.arrPres[56]);
          pres58.Text:=   IntToStr(variables.arrPres[57]);
          pres59.Text:=   IntToStr(variables.arrPres[58]);
          pres60.Text:=   IntToStr(variables.arrPres[59]);
          pres61.Text:=   IntToStr(variables.arrPres[60]);
          pres62.Text:=   IntToStr(variables.arrPres[61]);
          pres63.Text:=   IntToStr(variables.arrPres[62]);
          pres64.Text:=   IntToStr(variables.arrPres[63]);
          pc49.Text := FloatToStr(variables.arrO2Rel[48]);
          pc50.Text := FloatToStr(variables.arrO2Rel[49]);
          pc51.Text := FloatToStr(variables.arrO2Rel[50]);
          pc52.Text := FloatToStr(variables.arrO2Rel[51]);
          pc53.Text := FloatToStr(variables.arrO2Rel[52]);
          pc54.Text := FloatToStr(variables.arrO2Rel[53]);
          pc55.Text := FloatToStr(variables.arrO2Rel[54]);
          pc56.Text := FloatToStr(variables.arrO2Rel[55]);
          pc57.Text := FloatToStr(variables.arrO2Rel[56]);
          pc58.Text := FloatToStr(variables.arrO2Rel[57]);
          pc59.Text := FloatToStr(variables.arrO2Rel[58]);
          pc60.Text := FloatToStr(variables.arrO2Rel[59]);
          pc61.Text := FloatToStr(variables.arrO2Rel[60]);
          pc62.Text := FloatToStr(variables.arrO2Rel[61]);
          pc63.Text := FloatToStr(variables.arrO2Rel[62]);
          pc64.Text := FloatToStr(variables.arrO2Rel[63]);
       end;
     end;
end;

//********************** TEST ************
procedure TForm1.testClick(Sender: TObject);
const
  RET_CARRO = #13#10;
var
  sRetCarro : string;
  sbuf :string;
  iPutn : integer;
  iPunt2 : SizeInt;

begin
  FormDebug.Show;

{
  //test de coms
  sRetCarro := RET_CARRO;
  sbuf := '12345' + #13#10 + '54321' + #13#10;
  iPutn:= pos(sRetCarro, sbuf);
  if iPutn <> 0 then
     begin
          stemp := copy(sbuf, 1, iPutn -1);
          iPunt2:= Length(sbuf);
          if iPunt2 > iPutn + 2 then
             begin
                  sbuf := copy(sbuf, iPutn + 2, iPunt2);
             end;
     end;
  //******************

  stemp := 'A ' + variables.arrSens;

//  Auxiliar.Show;
  Auxiliar.poneEstado(EST_CONECTA);

 Auxiliar.mandaSerie('L' + #13#10);
}
end;
//------------------- test 2 -------------
procedure TForm1.test2Click(Sender: TObject);
begin
//  Auxiliar.poneEstado(EST_CIERRA_PUERTO);
// CheckBox1.Checked:=true;
// CheckBox2.Checked:=true;
   Form2.Show;

end;

//****************** actualizaciones setup ***************
procedure TForm1.NumeroCajasChange(Sender: TObject);
begin
  verificaNumeroPlacas;
end;

procedure TForm1.PaginasChange(Sender: TObject);
begin
  actualizaCasillas();
  ActualizaLedsArray();
end;

procedure TForm1.verificaNumeroPlacas ();
begin
  stemp := NumeroCajas.Text;
  if (Length(stemp) > 0)then
     begin
        itemp := StrToInt(stemp);
        if (itemp > 4) then
           begin
             itemp := 2;
             NumeroCajas.Text:='2';
           end;
        stemp:= format('%d', [itemp]);
//        NumeroCajas.Text:= stemp;
        variables.numeroPlacas:=stemp;
     end;
end;

procedure TForm1.TiempoMedidasChange(Sender: TObject);
begin
  verificaTiempoMedidas;
end;

procedure TForm1.verificaTiempoMedidas();
begin
  stemp := TiempoMedidas.Text;
  if (Length(stemp) > 0) then
     begin
        itemp := StrToInt(stemp);
        if (itemp > 99) then
           begin
             itemp := 1;
             TiempoMedidas.Text:='1';
           end;
        stemp:= format('%.2d', [itemp]);
//        TiempoMedidas.Text:= stemp;
        variables.tiempoEntreMedidas:=stemp;
     end;
end;

procedure TForm1.TiempoTotalChange(Sender: TObject);
begin
     verificaTiempoTotal;
end;

procedure TForm1.verificaTiempoTotal();
begin
  stemp := TiempoTotal.Text;
  if (Length(stemp) > 0 ) then
     begin
        itemp := StrToInt(stemp);
        if (itemp > 9999) then
           begin
             itemp := 1;
             TiempoTotal.Text:= '1';
           end;
        stemp:= format('%.4d', [itemp]);
//        TiempoTotal.Text:= stemp;
        variables.tiempoTotal:=stemp;
     end;
end;

procedure TForm1.LimiteO2Change(Sender: TObject);
begin
     verificaLimiteO2;
end;

procedure TForm1.verificaLimiteO2();
begin
  stemp := LimiteO2.Text;
  if (Length(stemp) > 0 ) then
     begin
        itemp := StrToInt(stemp);
        if (itemp > 999) then
           begin
             itemp := 50;
             LimiteO2.Text:= '50';
           end;
        stemp:= format('%.4d', [itemp]);
//        LimiteO2.Text:= stemp;
        variables.limiteO2:=stemp;
     end;
end;

//***********************
procedure TForm1.actualizaChecks();
begin
     bactualizachecks:=true;
     if variables.arrSens[0] = '1' then CheckBox1.Checked:=true
     else CheckBox1.Checked:=false;
     if variables.arrSens[1] = '1' then CheckBox2.Checked:=true
     else CheckBox2.Checked:=false;
     if variables.arrSens[2] = '1' then CheckBox3.Checked:=true
     else CheckBox3.Checked:=false;
     if variables.arrSens[3] = '1' then CheckBox4.Checked:=true
     else CheckBox4.Checked:=false;
     if variables.arrSens[4] = '1' then CheckBox5.Checked:=true
     else CheckBox5.Checked:=false;
     if variables.arrSens[5] = '1' then CheckBox6.Checked:=true
     else CheckBox6.Checked:=false;
     if variables.arrSens[6] = '1' then CheckBox7.Checked:=true
     else CheckBox7.Checked:=false;
     if variables.arrSens[7] = '1' then CheckBox8.Checked:=true
     else CheckBox8.Checked:=false;
     if variables.arrSens[8] = '1' then CheckBox9.Checked:=true
     else CheckBox9.Checked:=false;
     if variables.arrSens[9] = '1' then CheckBox10.Checked:=true
     else CheckBox10.Checked:=false;
     if variables.arrSens[10] = '1' then CheckBox11.Checked:=true
     else CheckBox11.Checked:=false;
     if variables.arrSens[11] = '1' then CheckBox12.Checked:=true
     else CheckBox12.Checked:=false;
     if variables.arrSens[12] = '1' then CheckBox13.Checked:=true
     else CheckBox13.Checked:=false;
     if variables.arrSens[13] = '1' then CheckBox14.Checked:=true
     else CheckBox14.Checked:=false;
     if variables.arrSens[14] = '1' then CheckBox15.Checked:=true
     else CheckBox15.Checked:=false;
     if variables.arrSens[15] = '1' then CheckBox16.Checked:=true
     else CheckBox16.Checked:=false;
     if variables.arrSens[16] = '1' then CheckBox17.Checked:=true
     else CheckBox17.Checked:=false;
     if variables.arrSens[17] = '1' then CheckBox18.Checked:=true
     else CheckBox18.Checked:=false;
     if variables.arrSens[18] = '1' then CheckBox19.Checked:=true
     else CheckBox19.Checked:=false;
     if variables.arrSens[19] = '1' then CheckBox20.Checked:=true
     else CheckBox20.Checked:=false;
     if variables.arrSens[20] = '1' then CheckBox21.Checked:=true
     else CheckBox21.Checked:=false;
     if variables.arrSens[21] = '1' then CheckBox22.Checked:=true
     else CheckBox22.Checked:=false;
     if variables.arrSens[22] = '1' then CheckBox23.Checked:=true
     else CheckBox23.Checked:=false;
     if variables.arrSens[23] = '1' then CheckBox24.Checked:=true
     else CheckBox24.Checked:=false;
     if variables.arrSens[24] = '1' then CheckBox25.Checked:=true
     else CheckBox25.Checked:=false;
     if variables.arrSens[25] = '1' then CheckBox26.Checked:=true
     else CheckBox26.Checked:=false;
     if variables.arrSens[26] = '1' then CheckBox27.Checked:=true
     else CheckBox27.Checked:=false;
     if variables.arrSens[27] = '1' then CheckBox28.Checked:=true
     else CheckBox28.Checked:=false;
     if variables.arrSens[28] = '1' then CheckBox29.Checked:=true
     else CheckBox29.Checked:=false;
     if variables.arrSens[29] = '1' then CheckBox30.Checked:=true
     else CheckBox30.Checked:=false;
     if variables.arrSens[30] = '1' then CheckBox31.Checked:=true
     else CheckBox31.Checked:=false;
     if variables.arrSens[31] = '1' then CheckBox32.Checked:=true
     else CheckBox32.Checked:=false;
     if variables.arrSens[32] = '1' then CheckBox33.Checked:=true
     else CheckBox33.Checked:=false;
     if variables.arrSens[33] = '1' then CheckBox34.Checked:=true
     else CheckBox34.Checked:=false;
     if variables.arrSens[34] = '1' then CheckBox35.Checked:=true
     else CheckBox35.Checked:=false;
     if variables.arrSens[35] = '1' then CheckBox36.Checked:=true
     else CheckBox36.Checked:=false;
     if variables.arrSens[36] = '1' then CheckBox37.Checked:=true
     else CheckBox37.Checked:=false;
     if variables.arrSens[37] = '1' then CheckBox38.Checked:=true
     else CheckBox38.Checked:=false;
     if variables.arrSens[38] = '1' then CheckBox39.Checked:=true
     else CheckBox39.Checked:=false;
     if variables.arrSens[39] = '1' then CheckBox40.Checked:=true
     else CheckBox40.Checked:=false;
     if variables.arrSens[40] = '1' then CheckBox41.Checked:=true
     else CheckBox41.Checked:=false;
     if variables.arrSens[41] = '1' then CheckBox42.Checked:=true
     else CheckBox42.Checked:=false;
     if variables.arrSens[42] = '1' then CheckBox43.Checked:=true
     else CheckBox43.Checked:=false;
     if variables.arrSens[43] = '1' then CheckBox44.Checked:=true
     else CheckBox44.Checked:=false;
     if variables.arrSens[44] = '1' then CheckBox45.Checked:=true
     else CheckBox45.Checked:=false;
     if variables.arrSens[45] = '1' then CheckBox46.Checked:=true
     else CheckBox46.Checked:=false;
     if variables.arrSens[46] = '1' then CheckBox47.Checked:=true
     else CheckBox47.Checked:=false;
     if variables.arrSens[47] = '1' then CheckBox48.Checked:=true
     else CheckBox48.Checked:=false;
     if variables.arrSens[48] = '1' then CheckBox49.Checked:=true
     else CheckBox49.Checked:=false;
     if variables.arrSens[49] = '1' then CheckBox50.Checked:=true
     else CheckBox50.Checked:=false;
     if variables.arrSens[50] = '1' then CheckBox51.Checked:=true
     else CheckBox51.Checked:=false;
     if variables.arrSens[51] = '1' then CheckBox52.Checked:=true
     else CheckBox52.Checked:=false;
     if variables.arrSens[52] = '1' then CheckBox53.Checked:=true
     else CheckBox53.Checked:=false;
     if variables.arrSens[53] = '1' then CheckBox54.Checked:=true
     else CheckBox54.Checked:=false;
     if variables.arrSens[54] = '1' then CheckBox55.Checked:=true
     else CheckBox55.Checked:=false;
     if variables.arrSens[55] = '1' then CheckBox56.Checked:=true
     else CheckBox56.Checked:=false;
     if variables.arrSens[56] = '1' then CheckBox57.Checked:=true
     else CheckBox57.Checked:=false;
     if variables.arrSens[57] = '1' then CheckBox58.Checked:=true
     else CheckBox58.Checked:=false;
     if variables.arrSens[58] = '1' then CheckBox59.Checked:=true
     else CheckBox59.Checked:=false;
     if variables.arrSens[59] = '1' then CheckBox60.Checked:=true
     else CheckBox60.Checked:=false;
     if variables.arrSens[60] = '1' then CheckBox61.Checked:=true
     else CheckBox61.Checked:=false;
     if variables.arrSens[61] = '1' then CheckBox62.Checked:=true
     else CheckBox62.Checked:=false;
     if variables.arrSens[62] = '1' then CheckBox63.Checked:=true
     else CheckBox63.Checked:=false;
     if variables.arrSens[63] = '1' then CheckBox64.Checked:=true
     else CheckBox64.Checked:=false;

     bactualizachecks:=false;
end;


//*****************************************************

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  if bactualizachecks = true then exit;
  if (CheckBox1.Checked) then arrSens[0] := '1'
  else arrSens[0] := '0';
  if (CheckBox2.Checked) then arrSens[1] := '1'
  else arrSens[1] := '0';
  if (CheckBox3.Checked) then arrSens[2] := '1'
  else arrSens[2] := '0';
  if (CheckBox4.Checked) then arrSens[3] := '1'
  else arrSens[3] := '0';
  if (CheckBox5.Checked) then arrSens[4] := '1'
  else arrSens[4] := '0';
  if (CheckBox6.Checked) then arrSens[5] := '1'
  else arrSens[5] := '0';
  if (CheckBox7.Checked) then arrSens[6] := '1'
  else arrSens[6] := '0';
  if (CheckBox8.Checked) then arrSens[7] := '1'
  else arrSens[7] := '0';
  if (CheckBox9.Checked) then arrSens[8] := '1'
  else arrSens[8] := '0';
  if (CheckBox10.Checked) then arrSens[9] := '1'
  else arrSens[9] := '0';
  if (CheckBox11.Checked) then arrSens[10] := '1'
  else arrSens[10] := '0';
  if (CheckBox12.Checked) then arrSens[11] := '1'
  else arrSens[11] := '0';
  if (CheckBox13.Checked) then arrSens[12] := '1'
  else arrSens[12] := '0';
  if (CheckBox14.Checked) then arrSens[13] := '1'
  else arrSens[13] := '0';
  if (CheckBox15.Checked) then arrSens[14] := '1'
  else arrSens[14] := '0';
  if (CheckBox16.Checked) then arrSens[15] := '1'
  else arrSens[15] := '0';
  if (CheckBox17.Checked) then arrSens[16] := '1'
  else arrSens[16] := '0';
  if (CheckBox18.Checked) then arrSens[17] := '1'
  else arrSens[17] := '0';
  if (CheckBox19.Checked) then arrSens[18] := '1'
  else arrSens[18] := '0';
  if (CheckBox20.Checked) then arrSens[19] := '1'
  else arrSens[19] := '0';
  if (CheckBox21.Checked) then arrSens[20] := '1'
  else arrSens[20] := '0';
  if (CheckBox22.Checked) then arrSens[21] := '1'
  else arrSens[21] := '0';
  if (CheckBox23.Checked) then arrSens[22] := '1'
  else arrSens[22] := '0';
  if (CheckBox24.Checked) then arrSens[23] := '1'
  else arrSens[23] := '0';
  if (CheckBox25.Checked) then arrSens[24] := '1'
  else arrSens[24] := '0';
  if (CheckBox26.Checked) then arrSens[25] := '1'
  else arrSens[25] := '0';
  if (CheckBox27.Checked) then arrSens[26] := '1'
  else arrSens[26] := '0';
  if (CheckBox28.Checked) then arrSens[27] := '1'
  else arrSens[27] := '0';
  if (CheckBox29.Checked) then arrSens[28] := '1'
  else arrSens[28] := '0';
  if (CheckBox30.Checked) then arrSens[29] := '1'
  else arrSens[29] := '0';
  if (CheckBox31.Checked) then arrSens[30] := '1'
  else arrSens[30] := '0';
  if (CheckBox32.Checked) then arrSens[31] := '1'
  else arrSens[31] := '0';
  if (CheckBox33.Checked) then arrSens[32] := '1'
  else arrSens[32] := '0';
  if (CheckBox34.Checked) then arrSens[33] := '1'
  else arrSens[33] := '0';
  if (CheckBox35.Checked) then arrSens[34] := '1'
  else arrSens[34] := '0';
  if (CheckBox36.Checked) then arrSens[35] := '1'
  else arrSens[35] := '0';
  if (CheckBox37.Checked) then arrSens[36] := '1'
  else arrSens[36] := '0';
  if (CheckBox38.Checked) then arrSens[37] := '1'
  else arrSens[37] := '0';
  if (CheckBox39.Checked) then arrSens[38] := '1'
  else arrSens[38] := '0';
  if (CheckBox40.Checked) then arrSens[39] := '1'
  else arrSens[39] := '0';
  if (CheckBox41.Checked) then arrSens[40] := '1'
  else arrSens[40] := '0';
  if (CheckBox42.Checked) then arrSens[41] := '1'
  else arrSens[41] := '0';
  if (CheckBox43.Checked) then arrSens[42] := '1'
  else arrSens[42] := '0';
  if (CheckBox44.Checked) then arrSens[43] := '1'
  else arrSens[43] := '0';
  if (CheckBox45.Checked) then arrSens[44] := '1'
  else arrSens[44] := '0';
  if (CheckBox46.Checked) then arrSens[45] := '1'
  else arrSens[45] := '0';
  if (CheckBox47.Checked) then arrSens[46] := '1'
  else arrSens[46] := '0';
  if (CheckBox48.Checked) then arrSens[47] := '1'
  else arrSens[47] := '0';
  if (CheckBox49.Checked) then arrSens[48] := '1'
  else arrSens[48] := '0';
  if (CheckBox50.Checked) then arrSens[49] := '1'
  else arrSens[49] := '0';
  if (CheckBox51.Checked) then arrSens[50] := '1'
  else arrSens[50] := '0';
  if (CheckBox52.Checked) then arrSens[51] := '1'
  else arrSens[51] := '0';
  if (CheckBox53.Checked) then arrSens[52] := '1'
  else arrSens[52] := '0';
  if (CheckBox54.Checked) then arrSens[53] := '1'
  else arrSens[53] := '0';
  if (CheckBox55.Checked) then arrSens[54] := '1'
  else arrSens[54] := '0';
  if (CheckBox56.Checked) then arrSens[55] := '1'
  else arrSens[55] := '0';
  if (CheckBox57.Checked) then arrSens[56] := '1'
  else arrSens[56] := '0';
  if (CheckBox58.Checked) then arrSens[57] := '1'
  else arrSens[57] := '0';
  if (CheckBox59.Checked) then arrSens[58] := '1'
  else arrSens[58] := '0';
  if (CheckBox60.Checked) then arrSens[59] := '1'
  else arrSens[59] := '0';
  if (CheckBox61.Checked) then arrSens[60] := '1'
  else arrSens[60] := '0';
  if (CheckBox62.Checked) then arrSens[61] := '1'
  else arrSens[61] := '0';
  if (CheckBox63.Checked) then arrSens[62] := '1'
  else arrSens[62] := '0';
  if (CheckBox64.Checked) then arrSens[63] := '1'
  else arrSens[63] := '0';
  variables.FactArray := true;
end;

procedure TForm1.ComboComChange(Sender: TObject);
begin
    variables.puerto := ComboCom.Text;
    Auxiliar.poneEstado(EST_CONECTA_EXT);
end;

procedure TForm1.todosCheck1Change(Sender: TObject);
begin
  CheckBox1.Checked := todosCheck1.Checked;
  CheckBox2.Checked := todosCheck1.Checked;
  CheckBox3.Checked := todosCheck1.Checked;
  CheckBox4.Checked := todosCheck1.Checked;
  CheckBox5.Checked := todosCheck1.Checked;
  CheckBox6.Checked := todosCheck1.Checked;
  CheckBox7.Checked := todosCheck1.Checked;
  CheckBox8.Checked := todosCheck1.Checked;
  CheckBox9.Checked := todosCheck1.Checked;
  CheckBox10.Checked := todosCheck1.Checked;
  CheckBox11.Checked := todosCheck1.Checked;
  CheckBox12.Checked := todosCheck1.Checked;
  CheckBox13.Checked := todosCheck1.Checked;
  CheckBox14.Checked := todosCheck1.Checked;
  CheckBox15.Checked := todosCheck1.Checked;
  CheckBox16.Checked := todosCheck1.Checked;
  variables.FactArray := true;
end;

procedure TForm1.todosCheck2Change(Sender: TObject);
begin
    CheckBox17.Checked := todosCheck2.Checked;
    CheckBox18.Checked := todosCheck2.Checked;
    CheckBox19.Checked := todosCheck2.Checked;
    CheckBox20.Checked := todosCheck2.Checked;
    CheckBox21.Checked := todosCheck2.Checked;
    CheckBox22.Checked := todosCheck2.Checked;
    CheckBox23.Checked := todosCheck2.Checked;
    CheckBox24.Checked := todosCheck2.Checked;
    CheckBox25.Checked := todosCheck2.Checked;
    CheckBox26.Checked := todosCheck2.Checked;
    CheckBox27.Checked := todosCheck2.Checked;
    CheckBox28.Checked := todosCheck2.Checked;
    CheckBox29.Checked := todosCheck2.Checked;
    CheckBox30.Checked := todosCheck2.Checked;
    CheckBox31.Checked := todosCheck2.Checked;
    CheckBox32.Checked := todosCheck2.Checked;
    variables.FactArray := true;

end;

procedure TForm1.todosCheck3Change(Sender: TObject);
begin
     CheckBox33.Checked := todosCheck3.Checked;
     CheckBox34.Checked := todosCheck3.Checked;
     CheckBox35.Checked := todosCheck3.Checked;
     CheckBox36.Checked := todosCheck3.Checked;
     CheckBox37.Checked := todosCheck3.Checked;
     CheckBox38.Checked := todosCheck3.Checked;
     CheckBox39.Checked := todosCheck3.Checked;
     CheckBox40.Checked := todosCheck3.Checked;
     CheckBox41.Checked := todosCheck3.Checked;
     CheckBox42.Checked := todosCheck3.Checked;
     CheckBox43.Checked := todosCheck3.Checked;
     CheckBox44.Checked := todosCheck3.Checked;
     CheckBox45.Checked := todosCheck3.Checked;
     CheckBox46.Checked := todosCheck3.Checked;
     CheckBox47.Checked := todosCheck3.Checked;
     CheckBox48.Checked := todosCheck3.Checked;
     variables.FactArray := true;

end;

procedure TForm1.todosCheck4Change(Sender: TObject);
begin
    CheckBox49.Checked := todosCheck4.Checked;
    CheckBox50.Checked := todosCheck4.Checked;
    CheckBox51.Checked := todosCheck4.Checked;
    CheckBox52.Checked := todosCheck4.Checked;
    CheckBox53.Checked := todosCheck4.Checked;
    CheckBox54.Checked := todosCheck4.Checked;
    CheckBox55.Checked := todosCheck4.Checked;
    CheckBox56.Checked := todosCheck4.Checked;
    CheckBox57.Checked := todosCheck4.Checked;
    CheckBox58.Checked := todosCheck4.Checked;
    CheckBox59.Checked := todosCheck4.Checked;
    CheckBox60.Checked := todosCheck4.Checked;
    CheckBox61.Checked := todosCheck4.Checked;
    CheckBox62.Checked := todosCheck4.Checked;
    CheckBox63.Checked := todosCheck4.Checked;
    CheckBox64.Checked := todosCheck4.Checked;
    variables.FactArray := true;

end;

//**************************** FICHEROS ***************
procedure TForm1.FicheroDatosClick(Sender: TObject);
var
  fich : Tficheros;
begin
  OpenDialog1.InitialDir:= variables.sdirApp;
  OpenDialog1.DefaultExt:='.dat';
  OpenDialog1.FilterIndex:=2; //ficheros dat
  if OpenDialog1.Execute then
     begin
        nombreFichero.Text := OpenDialog1.FileName;
        variables.sNombreFichDatos:=OpenDialog1.FileName;
        if FileExists(variables.sNombreFichDatos)then
           begin
              if MessageDlg('ATENCION', 'El fichero existe, ¿lo borramos y creamos uno nuevo?',
                 mtConfirmation,[mbYes, mbNo],0) = mrYes then
                 begin //lo creamos nuevo
                    fich := Tficheros.Create;
                    fich.nuevoFichDatos(); //lo crea segunla variable snombreFichDatos
                    fich.Destroy;
                 end;
           end
           else
              begin
                 fich := Tficheros.Create;
                 fich.nuevoFichDatos(); //lo crea segunla variable snombreFichDatos
                 fich.Destroy;
              end;
     end;
end;

procedure TForm1.GuardaSetupClick(Sender: TObject);
var
  stemp : string;
  fich : Tficheros;
begin
  SaveDialog1.InitialDir:= variables.sdirApp;
  SaveDialog1.FilterIndex:=1; //setup
  if SaveDialog1.Execute then
     begin
        stemp := SaveDialog1.FileName;
        fich := Tficheros.Create;
        fich.guardaSetup(stemp);
        fich.Destroy;
     end;
end;

procedure TForm1.CargaSetupClick(Sender: TObject);
var
  stemp : string;
  fich : Tficheros;
begin
  OpenDialog1.InitialDir:= variables.sdirApp;
  OpenDialog1.FilterIndex := 1; //setup
  if OpenDialog1.Execute then
     begin
        stemp := OpenDialog1.FileName;
        variables.sNombreFichSetup:= stemp;
        fich := Tficheros.Create;
        if fich.leeSetup(stemp) = true then
           begin
              NumeroCajas.Text:=variables.numeroPlacas;
              TiempoMedidas.Text:=variables.tiempoEntreMedidas;
              TiempoTotal.Text:=variables.tiempoTotal;
              LimiteO2.Text:=variables.limiteO2;
              nombreFichero.Text:= variables.sNombreFichDatos;
              actualizaChecks(); //pone los check segun las variables array
           end
        else
           begin
              ShowMessage('el fichero no existe');
           end;
        fich.Destroy;
     end;

end;

procedure TForm1.BotDibujaClick(Sender: TObject);
begin
  PintaArrayO2();
end;

// ******************* tab 4 graficos *************
procedure TForm1.BotFichGrafClick(Sender: TObject);
var
  fich : Tficheros;
  f,g, inumMed : integer;
  snumMed : string;
  sfichero, smino2,smaxo2,smino2sens, smaxo2sens,
    smino2r, smaxo2r, smino2rsens, smaxo2rsens,
    smintemp, smaxtemp, smintempsens,smaxtempsens,
    sminpres, smaxpres, sminpressens, smaxpressens: string;
  fmino2, fmaxo2, fmino2r, fmaxo2r, fmintemp, fmaxtemp,
    fminpres, fmaxpres : real;
  ftemp :real;

begin
  OpenDialog1.InitialDir := variables.sdirApp;
  OpenDialog1.FilterIndex:=2;
  if OpenDialog1.Execute then begin
     sfichero:=OpenDialog1.FileName;
     EdFichDatos.Text := sfichero;
     variables.sNombreFichDatosPinta:=sfichero;
     if FileExists(sfichero)then begin
        fich := Tficheros.Create;
        fich.borraArrayDatosLeidos();
        BorraChecksGraf(); //pone checks en disable
        if fich.leeDatos(sfichero) then begin;
           fmino2 := 10000; fmaxo2:=0;
           fmino2r:=10000; fmaxo2r:=0;
           fmintemp:=10000; fmaxtemp:=0;
           fminpres:=10000; fmaxpres:=0;
           inumMed:=0;
           snumMed:='';
           for f := 0 to variables.inumDatosLeidos -1 do begin
             g := StrToInt(variables.sarrSensor[f]);
             PoneCheckGraf(g);
             if snumMed <> variables.sarrTiempo[f] then begin
                snumMed:=variables.sarrTiempo[f];
                inumMed:=inumMed+1;
             end;
             ftemp := StrToFloat(variables.sarrO2[f]);
             if ftemp < fmino2 then begin
                fmino2:=ftemp;
                smino2:= variables.sarrO2[f];
                smino2sens:= variables.sarrSensor[f];
             end;
             if ftemp > fmaxo2 then begin
                fmaxo2:=ftemp;
                smaxo2:=variables.sarrO2[f];
                smaxo2sens:=variables.sarrSensor[f];
             end;
             ftemp := StrToFloat(variables.sarrO2Rel[f]);
             if ftemp < fmino2r then begin
                fmino2r:=ftemp;
                smino2r:=variables.sarrO2Rel[f];
                smino2rsens:=variables.sarrSensor[f];
             end;
             if ftemp > fmaxo2r then begin
                fmaxo2r:=ftemp;
                smaxo2r:=variables.sarrO2Rel[f];
                smaxo2rsens:=variables.sarrSensor[f];
             end;
             ftemp := StrToFloat(variables.sarrTemp[f]);
             if ftemp < fmintemp then begin
                fmintemp:=ftemp;
                smintemp:=variables.sarrTemp[f];
                smintempsens:=variables.sarrSensor[f];
             end;
             if ftemp > fmaxtemp then begin
                fmaxtemp:=ftemp;
                smaxtemp:=variables.sarrTemp[f];
                smaxtempsens:=variables.sarrSensor[f];
             end;
             ftemp := StrToFloat(variables.sarrPres[f]);
             if ftemp < fminpres then begin
                fminpres:=ftemp;
                sminpres:=variables.sarrPres[f];
                sminpressens:=variables.sarrSensor[f];
             end;
             if ftemp > fmaxpres then begin
                fmaxpres:=ftemp;
                smaxpres:=variables.sarrPres[f];
                smaxpressens:=variables.sarrSensor[f];
             end;
           end;
           EdMinO2.Text:=smino2;
           EdMinO2Sens.Text:=smino2sens;
           EdMaxO2.Text:=smaxo2;
           EdMaxO2Sens.Text:=smaxo2sens;

           EdMinO2Rel.Text:=smino2r;
           EdMinO2RelSens.Text:=smino2rsens;
           EdMaxO2Rel.Text:=smaxo2r;
           EdMaxO2RelSens.Text:=smaxo2rsens;

           EdMinTemp.Text:=smintemp;
           EdMinTempSens.Text:=smintempsens;
           EdMaxTemp.Text:=smaxtemp;
           EdMaxTempSens.Text:=smaxtempsens;

           EdMinPres.Text:=sminpres;
           EdMinPresSens.Text:=sminpressens;
           EdMaxPres.Text:=smaxpres;
           EdMaxPresSens.Text:=smaxpressens;

           EdNumMedidas.Text:= IntToStr(inumMed);
        end;
        fich.Destroy;
     end;
  end;

end;

procedure TForm1.BtGuardaExcelClick(Sender: TObject);
type
  tarrCheck = array of TCheckBox;
var
  fich : Tficheros;
  stemp : string;
  arCh : tarrCheck;
  f: integer;
begin

  arCh := tarrCheck.Create(CheckSel1, CheckSel2, CheckSel3, CheckSel4, CheckSel5, CheckSel6, CheckSel7, CheckSel8, CheckSel9, CheckSel10, CheckSel11, CheckSel12, CheckSel13, CheckSel14, CheckSel15, CheckSel16,
  CheckSel17, CheckSel18, CheckSel19, CheckSel20, CheckSel21, CheckSel22, CheckSel23, CheckSel24, CheckSel25, CheckSel26, CheckSel27, CheckSel28, CheckSel29, CheckSel30, CheckSel31, CheckSel32,
  CheckSel33, CheckSel34, CheckSel35, CheckSel36, CheckSel37, CheckSel38, CheckSel39, CheckSel40, CheckSel41, CheckSel42, CheckSel43, CheckSel44, CheckSel45, CheckSel46, CheckSel47, CheckSel48,
  CheckSel49, CheckSel50, CheckSel51, CheckSel52, CheckSel53, CheckSel54, CheckSel55, CheckSel56, CheckSel57, CheckSel58, CheckSel59, CheckSel60, CheckSel61, CheckSel62, CheckSel63, CheckSel64);

  fich := Tficheros.Create;
  stemp := copy(variables.sNombreFichDatosPinta, 0,Length(variables.sNombreFichDatosPinta) - 3);
  stemp := stemp + 'xls';
  fich.guardaExcel(stemp, 0); //guarda todo

  for f := 0 to 63 do begin //guarda de uno en uno
    if arCh[f].Checked then begin
       stemp := copy(variables.sNombreFichDatosPinta, 0 , Length(variables.sNombreFichDatosPinta) - 4);
       stemp :=stemp + '_' + IntToStr(f + 1) + '.xls';
       fich.guardaExcel(stemp, f + 1);
    end;
  end;
  fich.Destroy;

end;

procedure TForm1.btZoomOffClick(Sender: TObject);
begin
  Chart1.ZoomFull();
end;

procedure TForm1.BorraChecksGraf();
begin
     CheckSel1.Enabled:=false;
     CheckSel2.Enabled:=false;
     CheckSel3.Enabled:=false;
     CheckSel4.Enabled:=false;
     CheckSel5.Enabled:=false;
     CheckSel6.Enabled:=false;
     CheckSel7.Enabled:=false;
     CheckSel8.Enabled:=false;
     CheckSel9.Enabled:=false;
     CheckSel10.Enabled:=false;
     CheckSel11.Enabled:=false;
     CheckSel12.Enabled:=false;
     CheckSel13.Enabled:=false;
     CheckSel14.Enabled:=false;
     CheckSel15.Enabled:=false;
     CheckSel16.Enabled:=false;

     CheckSel17.Enabled:=false;
     CheckSel18.Enabled:=false;
     CheckSel19.Enabled:=false;
     CheckSel20.Enabled:=false;
     CheckSel21.Enabled:=false;
     CheckSel22.Enabled:=false;
     CheckSel23.Enabled:=false;
     CheckSel24.Enabled:=false;
     CheckSel25.Enabled:=false;
     CheckSel26.Enabled:=false;
     CheckSel27.Enabled:=false;
     CheckSel28.Enabled:=false;
     CheckSel29.Enabled:=false;
     CheckSel30.Enabled:=false;
     CheckSel31.Enabled:=false;
     CheckSel32.Enabled:=false;

     CheckSel33.Enabled:=false;
     CheckSel34.Enabled:=false;
     CheckSel35.Enabled:=false;
     CheckSel36.Enabled:=false;
     CheckSel37.Enabled:=false;
     CheckSel38.Enabled:=false;
     CheckSel39.Enabled:=false;
     CheckSel40.Enabled:=false;
     CheckSel41.Enabled:=false;
     CheckSel42.Enabled:=false;
     CheckSel43.Enabled:=false;
     CheckSel44.Enabled:=false;
     CheckSel45.Enabled:=false;
     CheckSel46.Enabled:=false;
     CheckSel47.Enabled:=false;
     CheckSel48.Enabled:=false;

     CheckSel49.Enabled:=false;
     CheckSel50.Enabled:=false;
     CheckSel51.Enabled:=false;
     CheckSel52.Enabled:=false;
     CheckSel53.Enabled:=false;
     CheckSel54.Enabled:=false;
     CheckSel55.Enabled:=false;
     CheckSel56.Enabled:=false;
     CheckSel57.Enabled:=false;
     CheckSel58.Enabled:=false;
     CheckSel59.Enabled:=false;
     CheckSel60.Enabled:=false;
     CheckSel61.Enabled:=false;
     CheckSel62.Enabled:=false;
     CheckSel63.Enabled:=false;
     CheckSel64.Enabled:=false;

end;

procedure TForm1.PoneCheckGraf(num: integer);
begin
     case num of
       1: CheckSel1.Enabled:=true;
       2: CheckSel2.Enabled:=true;
       3: CheckSel3.Enabled:=true;
       4: CheckSel4.Enabled:=true;
       5: CheckSel5.Enabled:=true;
       6: CheckSel6.Enabled:=true;
       7: CheckSel7.Enabled:=true;
       8: CheckSel8.Enabled:=true;
       9: CheckSel9.Enabled:=true;
       10: CheckSel10.Enabled:=true;
       11: CheckSel11.Enabled:=true;
       12: CheckSel12.Enabled:=true;
       13: CheckSel13.Enabled:=true;
       14: CheckSel14.Enabled:=true;
       15: CheckSel15.Enabled:=true;
       16: CheckSel16.Enabled:=true;
       17: CheckSel17.Enabled:=true;
       18: CheckSel18.Enabled:=true;
       19: CheckSel19.Enabled:=true;
       20: CheckSel20.Enabled:=true;
       21: CheckSel21.Enabled:=true;
       22: CheckSel22.Enabled:=true;
       23: CheckSel23.Enabled:=true;
       24: CheckSel24.Enabled:=true;
       25: CheckSel25.Enabled:=true;
       26: CheckSel26.Enabled:=true;
       27: CheckSel27.Enabled:=true;
       28: CheckSel28.Enabled:=true;
       29: CheckSel29.Enabled:=true;
       30: CheckSel30.Enabled:=true;
       31: CheckSel31.Enabled:=true;
       32: CheckSel32.Enabled:=true;
       33: CheckSel33.Enabled:=true;
       34: CheckSel34.Enabled:=true;
       35: CheckSel35.Enabled:=true;
       36: CheckSel36.Enabled:=true;
       37: CheckSel37.Enabled:=true;
       38: CheckSel38.Enabled:=true;
       39: CheckSel39.Enabled:=true;
       40: CheckSel40.Enabled:=true;
       41: CheckSel41.Enabled:=true;
       42: CheckSel42.Enabled:=true;
       43: CheckSel43.Enabled:=true;
       44: CheckSel44.Enabled:=true;
       45: CheckSel45.Enabled:=true;
       46: CheckSel46.Enabled:=true;
       47: CheckSel47.Enabled:=true;
       48: CheckSel48.Enabled:=true;
       49: CheckSel49.Enabled:=true;
       50: CheckSel50.Enabled:=true;
       51: CheckSel51.Enabled:=true;
       52: CheckSel52.Enabled:=true;
       53: CheckSel53.Enabled:=true;
       54: CheckSel54.Enabled:=true;
       55: CheckSel55.Enabled:=true;
       56: CheckSel56.Enabled:=true;
       57: CheckSel57.Enabled:=true;
       58: CheckSel58.Enabled:=true;
       59: CheckSel59.Enabled:=true;
       60: CheckSel60.Enabled:=true;
       61: CheckSel61.Enabled:=true;
       62: CheckSel62.Enabled:=true;
       63: CheckSel63.Enabled:=true;
       64: CheckSel64.Enabled:=true;
     end;
end;

//-------------------------------------------

procedure TForm1.PintaArrayO2();
var
  f, g, inumMed : integer;
  snumMed : string;
  btemp : boolean;
  ftemp : real;
begin

  g:= 0;
  if RadioBO2.Checked = true then g:=1;
  if RadioBO2R.Checked = true then g := 2;
  borrachart1list();
  inumMed:=0;
  for f:=0 to variables.inumDatosLeidos -1 do begin
    if snumMed <> variables.sarrTiempo[f] then begin
       snumMed:=variables.sarrTiempo[f];
       inumMed:=inumMed +1;
    end;

    case g of
      1: begin
        if (CheckSel1.Checked) and (variables.sarrSensor[f] = '001') then
           Chart1LineSeries1.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel2.Checked) and (variables.sarrSensor[f] = '002') then
           Chart1LineSeries2.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel3.Checked) and (variables.sarrSensor[f] = '003') then
           Chart1LineSeries3.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel4.Checked) and (variables.sarrSensor[f] = '004') then
           Chart1LineSeries4.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel5.Checked) and (variables.sarrSensor[f] = '005') then
           Chart1LineSeries5.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel6.Checked) and (variables.sarrSensor[f] = '006') then
           Chart1LineSeries6.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel7.Checked) and (variables.sarrSensor[f] = '007') then
           Chart1LineSeries7.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel8.Checked) and (variables.sarrSensor[f] = '008') then
           Chart1LineSeries8.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel9.Checked) and (variables.sarrSensor[f] = '009') then
           Chart1LineSeries9.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel10.Checked) and (variables.sarrSensor[f] = '010') then
           Chart1LineSeries10.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel11.Checked) and (variables.sarrSensor[f] = '011') then
           Chart1LineSeries11.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel12.Checked) and (variables.sarrSensor[f] = '012') then
           Chart1LineSeries12.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel13.Checked) and (variables.sarrSensor[f] = '013') then
           Chart1LineSeries13.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel14.Checked) and (variables.sarrSensor[f] = '014') then
           Chart1LineSeries14.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel15.Checked) and (variables.sarrSensor[f] = '015') then
           Chart1LineSeries15.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel16.Checked) and (variables.sarrSensor[f] = '016') then
           Chart1LineSeries16.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel17.Checked) and (variables.sarrSensor[f] = '017') then
           Chart1LineSeries17.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel18.Checked) and (variables.sarrSensor[f] = '018') then
           Chart1LineSeries18.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel19.Checked) and (variables.sarrSensor[f] = '019') then
           Chart1LineSeries19.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel20.Checked) and (variables.sarrSensor[f] = '020') then
           Chart1LineSeries20.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel21.Checked) and (variables.sarrSensor[f] = '021') then
           Chart1LineSeries21.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel22.Checked) and (variables.sarrSensor[f] = '022') then
           Chart1LineSeries22.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel23.Checked) and (variables.sarrSensor[f] = '023') then
           Chart1LineSeries23.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel24.Checked) and (variables.sarrSensor[f] = '024') then
           Chart1LineSeries24.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel25.Checked) and (variables.sarrSensor[f] = '025') then
           Chart1LineSeries25.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel26.Checked) and (variables.sarrSensor[f] = '026') then
           Chart1LineSeries26.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel27.Checked) and (variables.sarrSensor[f] = '027') then
           Chart1LineSeries27.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel28.Checked) and (variables.sarrSensor[f] = '028') then
           Chart1LineSeries28.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel29.Checked) and (variables.sarrSensor[f] = '029') then
           Chart1LineSeries29.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel30.Checked) and (variables.sarrSensor[f] = '030') then
           Chart1LineSeries30.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel31.Checked) and (variables.sarrSensor[f] = '031') then
           Chart1LineSeries31.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel32.Checked) and (variables.sarrSensor[f] = '032') then
           Chart1LineSeries32.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel33.Checked) and (variables.sarrSensor[f] = '033') then
           Chart1LineSeries33.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel34.Checked) and (variables.sarrSensor[f] = '034') then
           Chart1LineSeries34.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel35.Checked) and (variables.sarrSensor[f] = '035') then
           Chart1LineSeries35.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel36.Checked) and (variables.sarrSensor[f] = '036') then
           Chart1LineSeries36.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel37.Checked) and (variables.sarrSensor[f] = '037') then
           Chart1LineSeries37.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel38.Checked) and (variables.sarrSensor[f] = '038') then
           Chart1LineSeries38.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel39.Checked) and (variables.sarrSensor[f] = '039') then
           Chart1LineSeries39.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel40.Checked) and (variables.sarrSensor[f] = '040') then
           Chart1LineSeries40.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel41.Checked) and (variables.sarrSensor[f] = '041') then
           Chart1LineSeries41.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel42.Checked) and (variables.sarrSensor[f] = '042') then
           Chart1LineSeries42.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel43.Checked) and (variables.sarrSensor[f] = '043') then
           Chart1LineSeries43.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel44.Checked) and (variables.sarrSensor[f] = '044') then
           Chart1LineSeries44.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel45.Checked) and (variables.sarrSensor[f] = '045') then
           Chart1LineSeries45.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel46.Checked) and (variables.sarrSensor[f] = '046') then
           Chart1LineSeries46.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel47.Checked) and (variables.sarrSensor[f] = '047') then
           Chart1LineSeries47.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel48.Checked) and (variables.sarrSensor[f] = '048') then
           Chart1LineSeries48.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel49.Checked) and (variables.sarrSensor[f] = '049') then
           Chart1LineSeries49.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel50.Checked) and (variables.sarrSensor[f] = '050') then
           Chart1LineSeries50.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel51.Checked) and (variables.sarrSensor[f] = '051') then
           Chart1LineSeries51.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel52.Checked) and (variables.sarrSensor[f] = '052') then
           Chart1LineSeries52.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel53.Checked) and (variables.sarrSensor[f] = '053') then
           Chart1LineSeries53.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel54.Checked) and (variables.sarrSensor[f] = '054') then
           Chart1LineSeries54.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel55.Checked) and (variables.sarrSensor[f] = '055') then
           Chart1LineSeries55.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel56.Checked) and (variables.sarrSensor[f] = '056') then
           Chart1LineSeries56.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel57.Checked) and (variables.sarrSensor[f] = '057') then
           Chart1LineSeries57.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel58.Checked) and (variables.sarrSensor[f] = '058') then
           Chart1LineSeries58.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel59.Checked) and (variables.sarrSensor[f] = '059') then
           Chart1LineSeries59.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel60.Checked) and (variables.sarrSensor[f] = '060') then
           Chart1LineSeries60.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel61.Checked) and (variables.sarrSensor[f] = '061') then
           Chart1LineSeries61.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel62.Checked) and (variables.sarrSensor[f] = '062') then
           Chart1LineSeries62.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel63.Checked) and (variables.sarrSensor[f] = '063') then
           Chart1LineSeries63.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel64.Checked) and (variables.sarrSensor[f] = '064') then
           Chart1LineSeries64.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
      end;
      2: begin
        if (CheckSel1.Checked) and (variables.sarrSensor[f] = '001') then
           Chart1LineSeries1.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel2.Checked) and (variables.sarrSensor[f] = '002') then
           Chart1LineSeries2.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel3.Checked) and (variables.sarrSensor[f] = '003') then
           Chart1LineSeries3.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel4.Checked) and (variables.sarrSensor[f] = '004') then
           Chart1LineSeries4.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel5.Checked) and (variables.sarrSensor[f] = '005') then
           Chart1LineSeries5.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel6.Checked) and (variables.sarrSensor[f] = '006') then
           Chart1LineSeries6.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel7.Checked) and (variables.sarrSensor[f] = '007') then
           Chart1LineSeries7.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel8.Checked) and (variables.sarrSensor[f] = '008') then
           Chart1LineSeries8.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel9.Checked) and (variables.sarrSensor[f] = '009') then
           Chart1LineSeries9.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel10.Checked) and (variables.sarrSensor[f] = '010') then
           Chart1LineSeries10.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel11.Checked) and (variables.sarrSensor[f] = '011') then
           Chart1LineSeries11.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel12.Checked) and (variables.sarrSensor[f] = '012') then
           Chart1LineSeries12.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel13.Checked) and (variables.sarrSensor[f] = '013') then
           Chart1LineSeries13.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel14.Checked) and (variables.sarrSensor[f] = '014') then
           Chart1LineSeries14.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel15.Checked) and (variables.sarrSensor[f] = '015') then
           Chart1LineSeries15.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel16.Checked) and (variables.sarrSensor[f] = '016') then
           Chart1LineSeries16.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel17.Checked) and (variables.sarrSensor[f] = '017') then
           Chart1LineSeries17.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel18.Checked) and (variables.sarrSensor[f] = '018') then
           Chart1LineSeries18.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel19.Checked) and (variables.sarrSensor[f] = '019') then
           Chart1LineSeries19.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel20.Checked) and (variables.sarrSensor[f] = '020') then
           Chart1LineSeries20.AddXY(inumMed,StrToFloat(variables.sarrO2[f]));
        if (CheckSel21.Checked) and (variables.sarrSensor[f] = '021') then
           Chart1LineSeries21.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel22.Checked) and (variables.sarrSensor[f] = '022') then
           Chart1LineSeries22.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel23.Checked) and (variables.sarrSensor[f] = '023') then
           Chart1LineSeries23.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel24.Checked) and (variables.sarrSensor[f] = '024') then
           Chart1LineSeries24.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel25.Checked) and (variables.sarrSensor[f] = '025') then
           Chart1LineSeries25.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel26.Checked) and (variables.sarrSensor[f] = '026') then
           Chart1LineSeries26.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel27.Checked) and (variables.sarrSensor[f] = '027') then
           Chart1LineSeries27.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel28.Checked) and (variables.sarrSensor[f] = '028') then
           Chart1LineSeries28.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel29.Checked) and (variables.sarrSensor[f] = '029') then
           Chart1LineSeries29.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel30.Checked) and (variables.sarrSensor[f] = '030') then
           Chart1LineSeries30.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel31.Checked) and (variables.sarrSensor[f] = '031') then
           Chart1LineSeries31.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel32.Checked) and (variables.sarrSensor[f] = '032') then
           Chart1LineSeries32.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel33.Checked) and (variables.sarrSensor[f] = '033') then
           Chart1LineSeries33.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel34.Checked) and (variables.sarrSensor[f] = '034') then
           Chart1LineSeries34.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel35.Checked) and (variables.sarrSensor[f] = '035') then
           Chart1LineSeries35.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel36.Checked) and (variables.sarrSensor[f] = '036') then
           Chart1LineSeries36.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel37.Checked) and (variables.sarrSensor[f] = '037') then
           Chart1LineSeries37.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel38.Checked) and (variables.sarrSensor[f] = '038') then
           Chart1LineSeries38.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel39.Checked) and (variables.sarrSensor[f] = '039') then
           Chart1LineSeries39.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel40.Checked) and (variables.sarrSensor[f] = '040') then
           Chart1LineSeries40.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel41.Checked) and (variables.sarrSensor[f] = '041') then
           Chart1LineSeries41.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel42.Checked) and (variables.sarrSensor[f] = '042') then
           Chart1LineSeries42.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel43.Checked) and (variables.sarrSensor[f] = '043') then
           Chart1LineSeries43.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel44.Checked) and (variables.sarrSensor[f] = '044') then
           Chart1LineSeries44.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel45.Checked) and (variables.sarrSensor[f] = '045') then
           Chart1LineSeries45.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel46.Checked) and (variables.sarrSensor[f] = '046') then
           Chart1LineSeries46.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel47.Checked) and (variables.sarrSensor[f] = '047') then
           Chart1LineSeries47.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel48.Checked) and (variables.sarrSensor[f] = '048') then
           Chart1LineSeries48.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel49.Checked) and (variables.sarrSensor[f] = '049') then
           Chart1LineSeries49.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel50.Checked) and (variables.sarrSensor[f] = '050') then
           Chart1LineSeries50.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel51.Checked) and (variables.sarrSensor[f] = '051') then
           Chart1LineSeries51.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel52.Checked) and (variables.sarrSensor[f] = '052') then
           Chart1LineSeries52.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel53.Checked) and (variables.sarrSensor[f] = '053') then
           Chart1LineSeries53.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel54.Checked) and (variables.sarrSensor[f] = '054') then
           Chart1LineSeries54.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel55.Checked) and (variables.sarrSensor[f] = '055') then
           Chart1LineSeries55.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel56.Checked) and (variables.sarrSensor[f] = '056') then
           Chart1LineSeries56.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel57.Checked) and (variables.sarrSensor[f] = '057') then
           Chart1LineSeries57.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel58.Checked) and (variables.sarrSensor[f] = '058') then
           Chart1LineSeries58.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel59.Checked) and (variables.sarrSensor[f] = '059') then
           Chart1LineSeries59.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel60.Checked) and (variables.sarrSensor[f] = '060') then
           Chart1LineSeries60.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel61.Checked) and (variables.sarrSensor[f] = '061') then
           Chart1LineSeries61.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel62.Checked) and (variables.sarrSensor[f] = '062') then
           Chart1LineSeries62.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel63.Checked) and (variables.sarrSensor[f] = '063') then
           Chart1LineSeries63.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
        if (CheckSel64.Checked) and (variables.sarrSensor[f] = '064') then
           Chart1LineSeries64.AddXY(inumMed,StrToFloat(variables.sarrO2Rel[f]));
      end;
    end;
  end;

end;

procedure TForm1.BorraClick(Sender: TObject);
begin
   borrachart1list();
end;

procedure TForm1.borrachart1list();
begin
  Chart1LineSeries1.Clear;
  Chart1LineSeries2.Clear;
  Chart1LineSeries3.Clear;
  Chart1LineSeries4.Clear;
  Chart1LineSeries5.Clear;
  Chart1LineSeries6.Clear;
  Chart1LineSeries7.Clear;
  Chart1LineSeries8.Clear;
  Chart1LineSeries9.Clear;
  Chart1LineSeries10.Clear;
  Chart1LineSeries11.Clear;
  Chart1LineSeries12.Clear;
  Chart1LineSeries13.Clear;
  Chart1LineSeries14.Clear;
  Chart1LineSeries15.Clear;
  Chart1LineSeries16.Clear;
  Chart1LineSeries17.Clear;
  Chart1LineSeries18.Clear;
  Chart1LineSeries19.Clear;
  Chart1LineSeries20.Clear;
  Chart1LineSeries21.Clear;
  Chart1LineSeries22.Clear;
  Chart1LineSeries23.Clear;
  Chart1LineSeries24.Clear;
  Chart1LineSeries25.Clear;
  Chart1LineSeries26.Clear;
  Chart1LineSeries27.Clear;
  Chart1LineSeries28.Clear;
  Chart1LineSeries29.Clear;
  Chart1LineSeries30.Clear;
  Chart1LineSeries31.Clear;
  Chart1LineSeries32.Clear;
  Chart1LineSeries33.Clear;
  Chart1LineSeries34.Clear;
  Chart1LineSeries35.Clear;
  Chart1LineSeries36.Clear;
  Chart1LineSeries37.Clear;
  Chart1LineSeries38.Clear;
  Chart1LineSeries39.Clear;
  Chart1LineSeries40.Clear;
  Chart1LineSeries41.Clear;
  Chart1LineSeries42.Clear;
  Chart1LineSeries43.Clear;
  Chart1LineSeries44.Clear;
  Chart1LineSeries45.Clear;
  Chart1LineSeries46.Clear;
  Chart1LineSeries47.Clear;
  Chart1LineSeries48.Clear;
  Chart1LineSeries49.Clear;
  Chart1LineSeries50.Clear;
  Chart1LineSeries51.Clear;
  Chart1LineSeries52.Clear;
  Chart1LineSeries53.Clear;
  Chart1LineSeries54.Clear;
  Chart1LineSeries55.Clear;
  Chart1LineSeries56.Clear;
  Chart1LineSeries57.Clear;
  Chart1LineSeries58.Clear;
  Chart1LineSeries59.Clear;
  Chart1LineSeries60.Clear;
  Chart1LineSeries61.Clear;
  Chart1LineSeries62.Clear;
  Chart1LineSeries63.Clear;
  Chart1LineSeries64.Clear;

end;

//-------------------------------------------

procedure TForm1.cuadrado1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
type
    TArrayListas = array of TLineSeries;
var
  stemp, stemp2 : string;
  itemp : integer;
  xline : TLineSeries;
  arrListas : TArrayListas;
begin

  arrListas :=TArrayListas.Create(Chart1LineSeries1, Chart1LineSeries2, Chart1LineSeries3, Chart1LineSeries4, Chart1LineSeries5, Chart1LineSeries6, Chart1LineSeries7, Chart1LineSeries8,
   Chart1LineSeries9, Chart1LineSeries10, Chart1LineSeries11, Chart1LineSeries12, Chart1LineSeries13, Chart1LineSeries14, Chart1LineSeries15, Chart1LineSeries16,
    Chart1LineSeries17, Chart1LineSeries18, Chart1LineSeries19, Chart1LineSeries20, Chart1LineSeries21, Chart1LineSeries22, Chart1LineSeries23, Chart1LineSeries24,
     Chart1LineSeries25, Chart1LineSeries26, Chart1LineSeries27, Chart1LineSeries28, Chart1LineSeries29, Chart1LineSeries30, Chart1LineSeries31, Chart1LineSeries32,
      Chart1LineSeries33, Chart1LineSeries34, Chart1LineSeries35, Chart1LineSeries36, Chart1LineSeries37, Chart1LineSeries38, Chart1LineSeries39, Chart1LineSeries40,
       Chart1LineSeries41, Chart1LineSeries42, Chart1LineSeries43, Chart1LineSeries44, Chart1LineSeries45, Chart1LineSeries46, Chart1LineSeries47, Chart1LineSeries48,
        Chart1LineSeries49, Chart1LineSeries50, Chart1LineSeries51, Chart1LineSeries52, Chart1LineSeries53, Chart1LineSeries54, Chart1LineSeries55, Chart1LineSeries56,
         Chart1LineSeries57, Chart1LineSeries58, Chart1LineSeries59, Chart1LineSeries60, Chart1LineSeries61, Chart1LineSeries62, Chart1LineSeries63, Chart1LineSeries64);

  if Button = mbLeft then begin
     if ColorDialog1.Execute then begin
        (Sender as TShape).Brush.Color:=ColorDialog1.Color;
        stemp := (Sender as TShape).Name;
        stemp2 := copy(stemp, 9, 2);
        itemp := StrToInt(stemp2) - 1;
        arrListas[itemp].SeriesColor:=ColorDialog1.Color;


//        xline := Chart1LineSeries1;
//        xline.SeriesColor:=ColorDialog1.Color;
     end;
  end;

end;

procedure TForm1.rBZoomChange(Sender: TObject);
begin
  ChartToolset1ZoomMouseWheelTool1.Enabled:=rBZoom.Checked;
  ChartToolset1ZoomMouseWheelTool_vert.Enabled:=rBZoom.Checked;
  ChartToolset1ZoomMouseWheelTool_hor.Enabled:=rBZoom.Checked;

  ChartToolset1PanMouseWheelTool_vert.Enabled:=rBPan.Checked;
  ChartToolset1PanMouseWheelTool_hor.Enabled:=rBPan.Checked;
end;

procedure TForm1.ChartToolset1DataPointClickTool1PointClick(ATool: TChartTool;
  APoint: TPoint);
var
  stemp, stemp2 : string;
begin
  with ATool as TDataPointClickTool do
     if (series is TLineSeries) then begin
        stemp2 := TLineSeries(Series).Name;
        stemp := 'linea ' + copy(stemp2,17,2);
        edNombreLinea.Text:=stemp;

     end
     else edNombreLinea.Text:='';
end;

procedure TForm1.Chart1Click(Sender: TObject);
begin
     edNombreLinea.Text:='';
end;


//************************ menus ***************
procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Application.Terminate;
end;


end.
