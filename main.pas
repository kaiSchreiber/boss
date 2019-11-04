unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Math, ComCtrls, jpeg, ExtCtrls, IniFiles;

type
  TFormMain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    VerVer: TEdit;
    VerVrg: TEdit;
    VGScroll: TScrollBar;
    VVScroll: TScrollBar;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    HorVer: TEdit;
    HorVrg: TEdit;
    HVScroll: TScrollBar;
    HGScroll: TScrollBar;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label6: TLabel;
    UseDonders: TRadioButton;
    Custom: TRadioButton;
    TorVer: TEdit;
    TorVrg: TEdit;
    TGScroll: TScrollBar;
    TVScroll: TScrollBar;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    DrEpiLin: TCheckBox;
    DrDots: TCheckBox;
    DrDisp: TCheckBox;
    ShowPlane: TCheckBox;
    GroupBox6: TGroupBox;
    DrAlignY: TCheckBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Magni: TEdit;
    SetScale: TScrollBar;
    DrSquares: TCheckBox;
    Label8: TLabel;
    PlaneX: TEdit;
    PlaneXScroll: TScrollBar;
    PlaneYScroll: TScrollBar;
    PlaneY: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    PlaneZ: TEdit;
    PlaneZScroll: TScrollBar;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    PlaneAH: TEdit;
    PlaneAV: TEdit;
    PlaneAT: TEdit;
    PlaneATScroll: TScrollBar;
    PlaneAVScroll: TScrollBar;
    PlaneAHScroll: TScrollBar;
    targetPlaneWidth: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    targetPlaneHeight: TEdit;
    Label17: TLabel;
    targetPlaneNumX: TEdit;
    Label18: TLabel;
    targetPlaneNumY: TEdit;
    GroupBox10: TGroupBox;
    FixationLock: TCheckBox;
    SlantAdjust: TCheckBox;
    CyclSlantH: TEdit;
    CyclSlantV: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    WidthAdjust: TCheckBox;
    PlaneDH: TEdit;
    Label21: TLabel;
    PlaneDV: TEdit;
    Label22: TLabel;
    DrAlignX: TCheckBox;
    dEpipolar: TEdit;
    Label23: TLabel;
    SquareDist: TEdit;
    Image1: TImage;
    dFactor: TEdit;
    Label25: TLabel;
    ShowPlaneDisp: TCheckBox;
    PickDonders: TScrollBar;
    Label24: TLabel;
    Label26: TLabel;
    DondersAmount: TLabel;
    UseHH: TRadioButton;
    UseFick: TRadioButton;
    TabSheet4: TTabSheet;
    GroupBox11: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    CSHorVer: TEdit;
    CSHorVrg: TEdit;
    CSHVScroll: TScrollBar;
    CSHGScroll: TScrollBar;
    GroupBox12: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    CSVerVer: TEdit;
    CSVerVrg: TEdit;
    CSVGScroll: TScrollBar;
    CSVVScroll: TScrollBar;
    GroupBox13: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    CSDondersAmount: TLabel;
    CSUseDonders: TRadioButton;
    CSCustom: TRadioButton;
    CSTorVer: TEdit;
    CSTorVrg: TEdit;
    CSTGScroll: TScrollBar;
    CSTVScroll: TScrollBar;
    CSPickDonders: TScrollBar;
    UnlockIt: TCheckBox;
    UseCS: TCheckBox;
    GroupBox14: TGroupBox;
    Label35: TLabel;
    MagLEX: TEdit;
    MagLEY: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    MagREX: TEdit;
    Label40: TLabel;
    MagREY: TEdit;
    CSEpipolar: TCheckBox;
    ActivateMag: TCheckBox;
    WriteFile: TCheckBox;
    SaveDialog: TSaveDialog;
    MakeCircles: TCheckBox;
    procedure computeHHAngles;
    procedure computeCSHHAngles;
    procedure paintEyes;
    procedure paintLines;
    procedure HVScrollChange(Sender: TObject);
    procedure HGScrollChange(Sender: TObject);
    procedure VVScrollChange(Sender: TObject);
    procedure VGScrollChange(Sender: TObject);
    procedure TVScrollChange(Sender: TObject);
    procedure TGScrollChange(Sender: TObject);
    procedure CSHVScrollChange(Sender: TObject);
    procedure CSHGScrollChange(Sender: TObject);
    procedure CSVVScrollChange(Sender: TObject);
    procedure CSVGScrollChange(Sender: TObject);
    procedure CSTVScrollChange(Sender: TObject);
    procedure CSTGScrollChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure HorVerChange(Sender: TObject);
    procedure DrEpiLinClick(Sender: TObject);
    procedure SetScaleChange(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure DrAlignYClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure PlaneXScrollChange(Sender: TObject);
    procedure PlaneXChange(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure PlaneYScrollChange(Sender: TObject);
    procedure PlaneZScrollChange(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure PlaneAHScrollChange(Sender: TObject);
    procedure PlaneAVScrollChange(Sender: TObject);
    procedure PlaneATScrollChange(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure targetPlaneHeightKeyPress(Sender: TObject; var Key: Char);
    procedure SlantAdjustClick(Sender: TObject);
    procedure FixationLockClick(Sender: TObject);
    procedure FullRefresh;
    procedure CyclSlantVChange(Sender: TObject);
    procedure WidthAdjustClick(Sender: TObject);
    procedure AlignForms;
    procedure ShowPlaneClick(Sender: TObject);
    procedure dEpipolarChange(Sender: TObject);
    procedure SquareDistChange(Sender: TObject);
    procedure dFactorChange(Sender: TObject);
    procedure LoadIniFile;
    procedure PickDondersChange(Sender: TObject);
    procedure UseHHClick(Sender: TObject);
    procedure UseFickClick(Sender: TObject);
    procedure UnlockItClick(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure Label32Click(Sender: TObject);
    procedure CSCustomClick(Sender: TObject);
    procedure CSPickDondersChange(Sender: TObject);
    procedure CSHorVerChange(Sender: TObject);
    procedure UseCSClick(Sender: TObject);
    procedure CSEpipolarClick(Sender: TObject);
    procedure ActivateMagClick(Sender: TObject);
    procedure MakeCirclesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 ThreeDPoint = record
  x,y,z: Double;
  end;

var
  HHA: array[1..2] of array[1..3] of Double;
  CSHHA: array[1..2] of array[1..3] of Double;
  FormMain: TFormMain;
  augen, epilines: TBitmap;
  MAGNIFICATION, dOldFact: Double;
  targetPlane: array of array of ThreeDPoint;
  otherEyePlane: array of array of record x,y: Integer; end;
  justKidding, doingPaintLines, doingPaintEyes: Boolean;
  IPD: Double = 7;

implementation

uses eyes, display;

{$R *.DFM}

procedure TFormMain.LoadIniFile;
var
  Ini: TIniFile;

begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.ini' ) );
  doingPaintLines:=true;
  doingPaintEyes:=true;
  FormMain.Top:=Ini.ReadInteger('screen layout','main_top',100);
  FormMain.Left:=Ini.ReadInteger('screen layout','main_left',200);
  FormDisplay.Width:=Ini.ReadInteger('screen layout','display_width',600);
  FormDisplay.Height:=Ini.ReadInteger('screen layout','display_height',600);

  HVScroll.Position:=Ini.ReadInteger('eye_position','HV',0);
  HGScroll.Position:=Ini.ReadInteger('eye_position','HG',0);
  VVScroll.Position:=Ini.ReadInteger('eye_position','VV',0);
  VGScroll.Position:=Ini.ReadInteger('eye_position','VG',0);
  TVScroll.Position:=Ini.ReadInteger('eye_position','TV',0);
  TGScroll.Position:=Ini.ReadInteger('eye_position','TG',0);
  UseDonders.Checked:=Ini.ReadBool('eye_position','use_donders',true);
  PickDonders.Position:=Ini.ReadInteger('eye_position','pick_donders',0);
  Custom.Checked:=Ini.ReadBool('eye_position','custom',false);

  CSHVScroll.Position:=Ini.ReadInteger('CSeye_position','CSHV',0);
  CSHGScroll.Position:=Ini.ReadInteger('CSeye_position','CSHG',0);
  CSVVScroll.Position:=Ini.ReadInteger('CSeye_position','CSVV',0);
  CSVGScroll.Position:=Ini.ReadInteger('CSeye_position','CSVG',0);
  CSTVScroll.Position:=Ini.ReadInteger('CSeye_position','CSTV',0);
  CSTGScroll.Position:=Ini.ReadInteger('CSeye_position','CSTG',0);
  CSUseDonders.Checked:=Ini.ReadBool('CSeye_position','CSuse_donders',true);
  CSPickDonders.Position:=Ini.ReadInteger('CSeye_position','CSpick_donders',0);
  CSCustom.Checked:=Ini.ReadBool('CSeye_position','CScustom',false);
  UseCS.Checked:=Ini.ReadBool('CSeye_position','CSUseIt',false);

  PlaneXScroll.Position:=Ini.ReadInteger('target_plane','plane_x',44);
  PlaneYScroll.Position:=Ini.ReadInteger('target_plane','plane_y',0);
  PlaneZScroll.Position:=Ini.ReadInteger('target_plane','plane_z',0);
  PlaneAHScroll.Position:=Ini.ReadInteger('target_plane','plane_ah',0);
  PlaneAVScroll.Position:=Ini.ReadInteger('target_plane','plane_av',0);
  PlaneATScroll.Position:=Ini.ReadInteger('target_plane','plane_at',0);
  targetPlaneWidth.Text:=Ini.ReadString('target_plane','plane_width','5');
  targetPlaneHeight.Text:=Ini.ReadString('target_plane','plane_height','5');
  targetPlaneNumX.Text:=Ini.ReadString('target_plane','plane_num_x','11');
  targetPlaneNumY.Text:=Ini.ReadString('target_plane','plane_num_y','11');
  FixationLock.Checked:=Ini.ReadBool('target_plane','fixtion_lock',false);
  SlantAdjust.Checked:=Ini.ReadBool('target_plane','slant_adjust',false);
  WidthAdjust.Checked:=Ini.ReadBool('target_plane','width_adjust',false);
  dFactor.Text:=Ini.ReadString('target_plane','dFactor','1');
  CyclSlantH.Text:=Ini.ReadString('target_plane','cycl_slant_h','0');
  CyclSlantV.Text:=Ini.ReadString('target_plane','cycl_slant_v','0');
  PlaneDH.Text:=Ini.ReadString('target_plane','plane_dh','25');
  PlaneDV.Text:=Ini.ReadString('target_plane','plane_dv','25');
  DrEpiLin.Checked:=Ini.ReadBool('options','dr_epi_lin',true);
  DrDisp.Checked:=Ini.ReadBool('options','dr_epi_disp',true);
  DrDots.Checked:=Ini.ReadBool('options','dr_epi_dots',true);
  ShowPlane.Checked:=Ini.ReadBool('options','show_plane',true);
  ShowPlaneDisp.Checked:=Ini.ReadBool('options','show_plane_disp',false);
  DrAlignX.Checked:=Ini.ReadBool('options','dr_align_x',true);
  DrAlignY.Checked:=Ini.ReadBool('options','dr_align_y',true);
  UseFick.Checked:=Ini.ReadBool('options','use_fick',false);
  UseHH.Checked:=Ini.ReadBool('options','use_hh',true);
  dEpipolar.Text:=Ini.ReadString('options','d_epipolar','5');
  SetScale.Position:=Ini.ReadInteger('options','setscale',300);
  DrSquares.Checked:=Ini.ReadBool('options','dr_squares',false);
  SquareDist.Text:=Ini.ReadString('options','d_square_dist','18');
  doingPaintLines:=false; doingPaintEyes:=false;
  FullRefresh;
  Ini.Free;
end;


procedure TFormMain.AlignForms;

begin
  FormDisplay.Left:=FormMain.Left+FormMain.Width+4;
  FormDisplay.Top:=FormMain.Top;
  FormEyes.Top:=FormMain.Top+FormMain.Height+4;
  FormEyes.Left:=FormMain.Left;
  FormEyes.Width:=FormMain.Width;
end;

procedure TFormMain.FullRefresh;

begin
  paintLines;
  FormDisplay.Repaint;
  paintEyes;
  FormEyes.Repaint;
end;

procedure TFormMain.HVScrollChange(Sender: TObject);
begin
  HorVer.Text:=FormatFloat('00.0',HVScroll.Position/2);
end;

procedure TFormMain.HGScrollChange(Sender: TObject);
begin
  HorVrg.Text:=FormatFloat('00.0',HGScroll.Position/2);
end;

procedure TFormMain.VVScrollChange(Sender: TObject);
begin
  VerVer.Text:=FormatFloat('00.0',VVScroll.Position/2);
end;

procedure TFormMain.VGScrollChange(Sender: TObject);
begin
  VerVrg.Text:=FormatFloat('00.0',VGScroll.Position/2);
end;

procedure TFormMain.TVScrollChange(Sender: TObject);
begin
  TorVer.Text:=FormatFloat('00.0',TVScroll.Position/2);
end;

procedure TFormMain.TGScrollChange(Sender: TObject);
begin
  TorVrg.Text:=FormatFloat('00.0',TGScroll.Position/2);
end;

procedure TFormMain.CSHVScrollChange(Sender: TObject);
begin
  CSHorVer.Text:=FormatFloat('00.0',CSHVScroll.Position/2);
end;

procedure TFormMain.CSHGScrollChange(Sender: TObject);
begin
  CSHorVrg.Text:=FormatFloat('00.0',CSHGScroll.Position/2);
end;

procedure TFormMain.CSVVScrollChange(Sender: TObject);
begin
  CSVerVer.Text:=FormatFloat('00.0',CSVVScroll.Position/2);
end;

procedure TFormMain.CSVGScrollChange(Sender: TObject);
begin
  CSVerVrg.Text:=FormatFloat('00.0',CSVGScroll.Position/2);
end;

procedure TFormMain.CSTVScrollChange(Sender: TObject);
begin
  CSTorVer.Text:=FormatFloat('00.0',CSTVScroll.Position/2);
end;

procedure TFormMain.CSTGScrollChange(Sender: TObject);
begin
  CSTorVrg.Text:=FormatFloat('00.0',CSTGScroll.Position/2);
end;

procedure TFormMain.FormCreate(Sender: TObject);

begin
  augen:=TBitmap.Create;
  epilines:=TBitmap.Create;
  MAGNIFICATION:=5;
  justKidding:=false;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
var
  Ini: TIniFile;

begin
  //save the setup
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.ini' ) );
  Ini.WriteInteger('screen layout','main_top',FormMain.Top);
  Ini.WriteInteger('screen layout','main_left',FormMain.Left);
  Ini.WriteInteger('screen layout','display_width',FormDisplay.Width);
  Ini.WriteInteger('screen layout','display_height',FormDisplay.Height);
  Ini.WriteInteger('eye_position','HV',HVScroll.Position);
  Ini.WriteInteger('eye_position','HG',HGScroll.Position);
  Ini.WriteInteger('eye_position','VV',VVScroll.Position);
  Ini.WriteInteger('eye_position','VG',VGScroll.Position);
  Ini.WriteInteger('eye_position','TV',TVScroll.Position);
  Ini.WriteInteger('eye_position','TG',TGScroll.Position);
  Ini.WriteBool('eye_position','use_donders',UseDonders.Checked);
  Ini.WriteInteger('eye_position','pick_donders',PickDonders.Position);
  Ini.WriteBool('eye_position','custom',Custom.Checked);

  Ini.WriteInteger('CSeye_position','CSHV',CSHVScroll.Position);
  Ini.WriteInteger('CSeye_position','CSHG',CSHGScroll.Position);
  Ini.WriteInteger('CSeye_position','CSVV',CSVVScroll.Position);
  Ini.WriteInteger('CSeye_position','CSVG',CSVGScroll.Position);
  Ini.WriteInteger('CSeye_position','CSTV',CSTVScroll.Position);
  Ini.WriteInteger('CSeye_position','CSTG',CSTGScroll.Position);
  Ini.WriteBool('CSeye_position','CSuse_donders',CSUseDonders.Checked);
  Ini.WriteInteger('CSeye_position','CSpick_donders',CSPickDonders.Position);
  Ini.WriteBool('CSeye_position','CScustom',CSCustom.Checked);
  Ini.WriteBool('CSeye_position','CSUseIt',UseCS.Checked);

  Ini.WriteInteger('target_plane','plane_x',PlaneXScroll.Position);
  Ini.WriteInteger('target_plane','plane_y',PlaneYScroll.Position);
  Ini.WriteInteger('target_plane','plane_z',PlaneZScroll.Position);
  Ini.WriteInteger('target_plane','plane_ah',PlaneAHScroll.Position);
  Ini.WriteInteger('target_plane','plane_av',PlaneAVScroll.Position);
  Ini.WriteInteger('target_plane','plane_at',PlaneATScroll.Position);
  Ini.WriteString('target_plane','plane_width',targetPlaneWidth.Text);
  Ini.WriteString('target_plane','plane_height',targetPlaneHeight.Text);
  Ini.WriteString('target_plane','plane_num_x',targetPlaneNumX.Text);
  Ini.WriteString('target_plane','plane_num_y',targetPlaneNumY.Text);
  Ini.WriteBool('target_plane','fixtion_lock',FixationLock.Checked);
  Ini.WriteBool('target_plane','slant_adjust',SlantAdjust.Checked);
  Ini.WriteBool('target_plane','width_adjust',WidthAdjust.Checked);
  Ini.WriteString('target_plane','dFactor',dFactor.Text);
  Ini.WriteString('target_plane','cycl_slant_h',CyclSlantH.Text);
  Ini.WriteString('target_plane','cycl_slant_v',CyclSlantV.Text);
  Ini.WriteString('target_plane','plane_dh',PlaneDH.Text);
  Ini.WriteString('target_plane','plane_dv',PlaneDV.Text);
  Ini.WriteBool('options','dr_epi_lin',DrEpiLin.Checked);
  Ini.WriteBool('options','dr_epi_disp',DrDisp.Checked);
  Ini.WriteBool('options','dr_epi_dots',DrDots.Checked);
  Ini.WriteBool('options','show_plane',ShowPlane.Checked);
  Ini.WriteBool('options','show_plane_disp',ShowPlaneDisp.Checked);
  Ini.WriteBool('options','dr_align_x',DrAlignX.Checked);
  Ini.WriteBool('options','dr_align_y',DrAlignY.Checked);
  Ini.WriteBool('options','use_fick',useFick.Checked);
  Ini.WriteBool('options','use_hh',useHH.Checked);
  Ini.WriteString('options','d_epipolar',dEpipolar.Text);
  Ini.WriteInteger('options','setscale',SetScale.Position);
  Ini.WriteBool('options','dr_squares',DrSquares.Checked);
  Ini.WriteString('options','d_square_dist',SquareDist.Text);
  Ini.Free;

  augen.Free;
  epilines.Free;
end;

procedure TFormMain.computeHHAngles;
var i: Integer;

begin
  MAGNIFICATION:=StrToFloat(Magni.Text);
  HHA[1,1]:=(StrToFloat(HorVer.Text)-StrToFloat(HorVrg.Text)/2)/180*PI;
  HHA[2,1]:=(StrToFloat(HorVer.Text)+StrToFloat(HorVrg.Text)/2)/180*PI;
  //1 left eye, 2 right eye
  //vergence increases right eyes angle (positive is looking left)
  HHA[1,2]:=(StrToFloat(VerVer.Text)+StrToFloat(VerVrg.Text)/2)/180*PI;
  HHA[2,2]:=(StrToFloat(VerVer.Text)-StrToFloat(VerVrg.Text)/2)/180*PI;
  //vergence increases left eyes angle (positive vergence means right
  //eye looking up (positive is looking down)
  for i:=1 to 2 do
    // ********************************** CHANGE TO CORRECT FORMULA FOR L2 & LISTING'S LAW
    if UseDonders.Checked then
      HHA[i,3]:=- PickDonders.Position/100 * (HHA[1,1]+HHA[2,1])*HHA[i,2]/4 -
        (1-PickDonders.Position/100) * HHA[i,1]*HHA[i,2]/2;
  if not Custom.Checked then
   begin
    TVScroll.Position:=Floor((HHA[1,3]+HHA[2,3])*180/PI);
    TGScroll.Position:=Floor((HHA[2,3]-HHA[1,3])*360/PI);
   end;

  HHA[1,3]:=(StrToFloat(TorVer.Text)+StrToFloat(TorVrg.Text)/2)/180*PI;
  HHA[2,3]:=(StrToFloat(TorVer.Text)-StrToFloat(TorVrg.Text)/2)/180*PI;
  //vergence increases left eyes angle, vergence means excyclorotation
end;

procedure TFormMain.computeCSHHAngles;
var i: Integer;

begin
  CSHHA[1,1]:=(StrToFloat(CSHorVer.Text)-StrToFloat(CSHorVrg.Text)/2)/180*PI;
  CSHHA[2,1]:=(StrToFloat(CSHorVer.Text)+StrToFloat(CSHorVrg.Text)/2)/180*PI;
  //1 left eye, 2 right eye
  //vergence increases right eyes angle (positive is looking left)
  CSHHA[1,2]:=(StrToFloat(CSVerVer.Text)+StrToFloat(CSVerVrg.Text)/2)/180*PI;
  CSHHA[2,2]:=(StrToFloat(CSVerVer.Text)-StrToFloat(CSVerVrg.Text)/2)/180*PI;
  //vergence increases left eyes angle (positive vergence means right
  //eye looking up (positive is looking down)
  for i:=1 to 2 do
    // ********************************** CHANGE TO CORRECT FORMULA FOR L2 & LISTING'S LAW
    if CSUseDonders.Checked then
      CSHHA[i,3]:=- CSPickDonders.Position/100 * (CSHHA[1,1]+CSHHA[2,1])*CSHHA[i,2]/4 -
        (1-CSPickDonders.Position/100) * CSHHA[i,1]*CSHHA[i,2]/2;
  if not CSCustom.Checked then
   begin
    CSTVScroll.Position:=Floor((CSHHA[1,3]+CSHHA[2,3])*180/PI);
    CSTGScroll.Position:=Floor((CSHHA[2,3]-CSHHA[1,3])*360/PI);
   end;

  CSHHA[1,3]:=(StrToFloat(CSTorVer.Text)+StrToFloat(CSTorVrg.Text)/2)/180*PI;
  CSHHA[2,3]:=(StrToFloat(CSTorVer.Text)-StrToFloat(CSTorVrg.Text)/2)/180*PI;
  //vergence increases left eyes angle, vergence means excyclorotation
end;

procedure TFormMain.paintEyes;
var scale, scale_p: Double;
    middle: TPoint;
    auge: array[1..2] of array[1..3] of Double;
    r_auge: Double;
    i,j: Integer;
    shift: Double;

begin
  if doingPaintEyes then Exit else doingPaintEyes:=true;
  augen.Width:=FormEyes.ClientWidth;
  augen.Height:=FormEyes.ClientHeight;
  scale:=augen.Height/1.1;
  if augen.Width/2.2 < scale then scale:=augen.Width/2.2;
  r_auge:=0.07*scale;;
  middle.x:=Floor(augen.width/2);
  middle.y:=Floor(augen.height/2);
  for i:=1 to 2 do
   begin
    auge[i,1]:=r_auge*cos(HHA[i,1])*cos(HHA[i,2]);
    auge[i,2]:=r_auge*sin(HHA[i,1]);
    auge[i,3]:=-r_auge*cos(HHA[i,1])*sin(HHA[i,2]);
   end;

  with augen.Canvas do
   begin
    Pen.Color:=clBlack;
    Brush.Color:=clWhite;
    FillRect(Rect(0,0,augen.Width,augen.Height));
    Rectangle(Floor(middle.x-scale*1.05),Floor(middle.y-scale*0.5),
      Floor(middle.x-scale*0.05),Floor(middle.y+scale*0.5));
    Rectangle(Floor(middle.x+scale*1.05),Floor(middle.y-scale*0.5),
      Floor(middle.x+scale*0.05),Floor(middle.y+scale*0.5));
    Pen.Color:=clLtGray;
    for i:=-18 to 18 do
     begin
      if DrAlignX.Checked then shift:=HHA[1,2] else shift:=0;
      if cos(i*5/180*PI+shift)<0.0000001 then
       begin
        MoveTo(Floor(middle.x+scale*0.15),Floor(middle.y-scale*0.5));
        LineTo(Floor(middle.x+scale*0.15),Floor(middle.y+scale*0.5));
       end
      else
       begin
        MoveTo(Floor(middle.x+scale*1.05),Floor(middle.y+tan(i*5/180*PI+shift)*0.9*scale));
        LineTo(Floor(middle.x+scale*0.05),Floor(middle.y+tan(i*5/180*PI+shift)*-0.1*scale));
       end;
     end;
    for i:=1 to 2 do
     begin
      case i of
       1: Pen.Color:=clGreen;
       2: Pen.Color:=clRed;
      end;
      Ellipse(middle.x+Floor((-1.15+0.4*i)*scale-r_auge),middle.y+Floor(0.4*scale-r_auge),
        middle.x+Floor((-1.15+0.4*i)*scale+r_auge),middle.y+Floor(0.4*scale+r_auge));
      MoveTo(middle.x+Floor((-1.15+0.4*i)*scale+auge[i,2]),middle.y+Floor(auge[i,1]+0.4*scale));
      LineTo(middle.x+Floor((-1.15+0.4*i)*scale-15*auge[i,2]),middle.y+Floor(-15*auge[i,1]+0.4*scale));
      Ellipse(middle.x+Floor(0.15*scale-r_auge),middle.y-Floor(r_auge),
        middle.x+Floor(0.15*scale+r_auge),middle.y+Floor(r_auge));
      MoveTo(middle.x+Floor(0.15*scale-auge[i,1]),middle.y+Floor(auge[i,3]));
      LineTo(middle.x+Floor(0.15*scale+15*auge[i,1]),middle.y+Floor(-15*auge[i,3]));
     end;
    scale_p:=scale*0.4/IPD;
    if ShowPlane.Checked or ShowPlaneDisp.Checked then
     for i:=0 to High(targetPlane) do
      for j:=0 to High(targetPlane[0]) do
       begin
        //plot the dots
        Brush.Color:=clBlack;
        // left pane
        FillRect( Rect(middle.x + Floor((targetPlane[i,j].y)*scale_p-0.55*scale)-1,middle.y+Floor((-targetPlane[i,j].x)*scale_p+0.4*scale)-1,
        middle.x + Floor((targetPlane[i,j].y)*scale_p-0.55*scale)+1,middle.y+Floor((-targetPlane[i,j].x)*scale_p+0.4*scale)+1));
        // right pane
        FillRect( Rect(middle.x + Floor((targetPlane[i,j].x)*scale_p+0.15*scale)-1,middle.y+Floor(targetPlane[i,j].z*scale_p)-1,
        middle.x + Floor((targetPlane[i,j].x)*scale_p+0.15*scale)+1,middle.y+Floor(targetPlane[i,j].z*scale_p)+1));
       end;
   end;
  doingPaintEYes:=false;
end;

procedure TFormMain.paintLines;
var scale, alpha: Double;
    i, j, k, jx, mnx: Integer;
    middle: TPoint;
    u,v,psi,phi,the,the1,the2, distance: Double;
    x,y: Integer;
    Point, Mag: record x,y,z: Double end;
    a1,a2,a3,a4,a5,a6,b1,b2,sx,cx,x1,y1: Double;
    vec: array[0..2,0..5] of record x,y,z: Double; end;
    p1,x2,y2,dEpi: Double;
    planeW, planeH: Double;
    mn, abstand, vec_temp_n, dFact: Double;
    shift: record x,y: Double end;
    reye: array[-30..30] of array[-90..90] of array[1..2] of Double;
    file_epi, file_plane: TStringList;
    t_a,t_r: Double;

begin
  // make sure we don't get called while we're still busy
  if doingPaintLines then Exit else doingPaintLines:=true;

  // if we're supposed to save files, ask for a name and initialize the StringList
  if WriteFile.Checked then
   if SaveDialog.Execute then
    begin
     // setup the stringlists
     file_epi:=TStringList.Create;
     file_plane:=TStringList.Create;
    end
   else
    // if user selects cancel, pretend we never started this
    WriteFile.Checked:=false;

  // compute the position of the target plane, if needed
  if ShowPlane.Checked or ShowPlaneDisp.Checked then
   begin
    //if (StrToInt(targetplaneNumX.Text)<2) or then targetplaneNumX.Text:='2';
    //if StrToInt(targetplaneNumY.Text)<2 then targetplaneNumY.Text:='2';
    if (targetplaneNumX.Text='') or (targetplaneNumY.Text='') then
      begin
       SetLength(targetPlane,0,0);
       SetLength(otherEyePlane,0,0);
      end
    else
     if (StrToInt(targetplaneNumX.Text)<2) or (StrToInt(targetplaneNumY.Text)<2) then
      begin
       SetLength(targetPlane,0,0);
       SetLength(otherEyePlane,0,0);
      end
     else
      begin
       SetLength(targetPlane,StrToInt(targetplaneNumX.Text),StrToInt(targetplaneNumY.Text));
       SetLength(otherEyePlane,StrToInt(targetplaneNumX.Text),StrToInt(targetplaneNumY.Text));
      end;

    if FixationLock.Checked then
     //move plane to fixation
     begin
      //find the intersection of horizontal gaze in the plane of the average vertical angle
      the1:=StrToFloat(HorVer.Text)/180*PI-StrToFloat(HorVrg.Text)/360*PI;
      the2:=StrToFloat(HorVer.Text)/180*PI+StrToFloat(HorVrg.Text)/360*PI;
      if HGScroll.Position=0 then
        //looking at infinity
        begin the1:=the1-0.000001; the2:=the2+0.000001; end;
      phi:=StrToFloat(VerVer.Text)/180*PI;
      v:=IPD*cos(the1)/(sin(the1)*cos(the2)-cos(the1)*sin(the2));
      try
        dFact:=StrToFloat(dFactor.Text);
      except
        dFact:=dOldFact;
      end;
      dOldFact:=dFact;
      vec[0,0].x:=dFact*-v*cos(the2)*cos(phi);
      vec[0,0].y:=dFact*(v*sin(the2)+IPD/2);
      vec[0,0].z:=dFact*-v*cos(the2)*sin(phi);
      PlaneX.Text:=FormatFloat('0.00',vec[0,0].x);
      PlaneY.Text:=FormatFloat('0.00',vec[0,0].y);
      PlaneZ.Text:=FormatFloat('0.00',vec[0,0].z);
    end;

    //store the plane's center position
    vec[0,0].x:=StrToFloat(PlaneX.Text);
    vec[0,0].y:=StrToFloat(PlaneY.Text);
    vec[0,0].z:=StrToFloat(PlaneZ.Text);

    if (WidthAdjust.Checked) and (PlaneDH.Text<>'') and (PlaneDV.Text<>'') then
     begin
      //adjust the width to constant angular width
      distance:=sqrt(vec[0,0].x*vec[0,0].x+vec[0,0].y*vec[0,0].y+vec[0,0].z*vec[0,0].z);
      targetPlaneWidth.Text:=FormatFloat('00.000',distance*tan(StrToInt(PlaneDH.Text)/360*PI));
      targetPlaneHeight.Text:=FormatFloat('00.000',distance*tan(StrToInt(PlaneDV.Text)/360*PI));
     end;

    if SlantAdjust.Checked then
     begin
      //adjust the plane's orientation
      if CyclSlantH.Text='' then PlaneAH.Text:=FormatFloat('0.00',-StrToFloat(HorVer.Text))
       else PlaneAH.Text:=FormatFloat('0.00',-StrToFloat(HorVer.Text)+StrToFloat(CyclSlantH.Text));
      if CyclSlantV.Text='' then PlaneAV.Text:=FormatFloat('0.00',-StrToFloat(VerVer.Text))
       else PlaneAV.Text:=FormatFloat('0.00',-StrToFloat(VerVer.Text)+StrToFloat(CyclSlantV.Text));
     end;

    //compute the base vectors for the plane's orientation

    //retrieve the orientation angles
    psi:=StrToFloat(PlaneAT.Text)/180*PI;
    phi:=StrToFloat(PlaneAV.Text)/180*PI;
    the:=StrToFloat(PlaneAH.Text)/180*PI;

    //base vector for width
    vec[0,1].z:=sin(psi)*cos(phi);
    vec[0,1].y:=sin(psi)*sin(phi)*sin(the)+cos(psi)*cos(the);
    vec[0,1].x:=sin(psi)*sin(phi)*cos(the)-cos(psi)*sin(the);

    //base vector for height
    vec[0,2].z:=cos(psi)*cos(phi);
    vec[0,2].y:=cos(psi)*sin(phi)*sin(the)-sin(psi)*cos(the);
    vec[0,2].x:=cos(psi)*sin(phi)*cos(the)+sin(psi)*sin(the);

    //compute the two base vectors for magnification

    //vertical
    vec[0,3].x:=0;
    vec[0,3].y:=0;
    vec[0,3].z:=1;

    //horizontal
    vec[0,4].x:=0;
    vec[0,4].y:=1;
    vec[0,4].z:=0;

    //gaze
    vec[0,5].x:=1;
    vec[0,5].y:=0;
    vec[0,5].z:=0;

    try
     planeW:=StrToFloat(targetPlaneWidth.Text);
    except
     setLength(targetPlane,0,0);
    end;

    try
     planeH:=StrToFloat(targetPlaneHeight.Text);
    except
     setLength(targetPlane,0,0);
    end;

    //compute target plane for eye position display
    for i:=0 to High(targetPlane) do
      for j:=0 to High(targetPlane[0]) do
       begin
        //compute the point coordinates in the plane base vector coordinate system
        u:=(2*i/High(targetPlane)-1)*planeW;
        v:=(2*j/High(targetPlane[0])-1)*planeH;
        //compute the spatial coordinates of each point
        targetPlane[i,j].x:=vec[0,0].x + vec[0,1].x*u + vec[0,2].x*v;
        targetPlane[i,j].y:=vec[0,0].y + vec[0,1].y*u + vec[0,2].y*v;
        targetPlane[i,j].z:=vec[0,0].z + vec[0,1].z*u + vec[0,2].z*v;
       end;
   end;

  //set the size of the bitmap to the window size
  epilines.Width:=FormDisplay.ClientWidth;
  epilines.Height:=FormDisplay.ClientHeight;

  //pick the scale for the smaller dimension, so that the 1x1 square is within the bitmap
  scale:=epilines.Height/2;
  if epilines.Width/2 < scale then scale:=epilines.Width/2;

  //apply magnification
  scale:=scale*MAGNIFICATION;

  //find middle of the bitmap
  middle.x:=Floor(epilines.width/2);
  middle.y:=Floor(epilines.height/2);

  //clear bitmap
  epilines.Canvas.Pen.Color:=clBlack;
  epilines.Canvas.Brush.Color:=clBlack;
  epilines.Canvas.FillRect(Rect(0,0,epilines.Width,epilines.Height));

  //shift for aligment of the epipolar lines with the left eye
  if DrAlignY.Checked then shift.y:=-HHA[2,2] else shift.y:=0;
  if DrAlignX.Checked then shift.x:=HHA[2,1] else shift.x:=0;

  //now compute the lines, for both eyes seperately
  for i:=2 downto 1 do
   begin
    //precompute parameters of the epipolar lines in helmholtz coordinates
    a1:=cos(HHA[i,3])*sin(HHA[i,1]);
    a2:=cos(HHA[i,3])*cos(HHA[i,1]);
    a3:=-sin(HHA[i,3]);
    a4:=-sin(HHA[i,3])*sin(HHA[i,1]);
    a5:=-sin(HHA[i,3])*cos(HHA[i,1]);
    a6:=-cos(HHA[i,3]);
    //determine number of lines from spacing
    try
     dEpi:=StrToFloat(dEpipolar.Text);
    except
     dEpi:=90;
    end;
    for y:=-Round(90/dEpi) to Round(90/dEpi) do
     //for all the lines
     begin
      b1:=cos(y*dEpi/180*PI+HHA[i,2]+shift.y);
      b2:=sin(y*dEpi/180*PI+HHA[i,2]+shift.y);
      for x:=-30 to 30 do
       //for all of the visual field
       begin
        sx:=sin(x*3/180*PI+shift.x);
        cx:=cos(x*3/180*PI+shift.x);
        x1:=ArcSin(Max(-1,Min(1,a1*b1*cx+a2*sx+a3*b2*cx)));
        y1:=ArcSin( Max(-1,Min(1,(a4*b1*cx+a5*sx+a6*b2*cx)/cos(x1))))/PI*2;
        x1:=x1/PI*2;
        //store the right eye's line for disparity traces and the likes
        if i=2 then
         begin
          reye[x,y,1]:=x1;
          reye[x,y,2]:=y1;
         end;
        //right eye: red, left eye: green
        case i of
         1: epilines.Canvas.Pen.Color:=clGreen;
         2: epilines.Canvas.Pen.Color:=clRed;
        end;
        if DrEpiLin.Checked then
         //draw the epipolar lines
          if x=-30 then
            epilines.Canvas.MoveTo(Floor(x1*scale+middle.x),
              Floor(y1*scale+middle.y))
          else
            epilines.Canvas.LineTo(Floor(x1*scale+middle.x),
              Floor(y1*scale+middle.y));

        //compute disparity traces if Dots or Traces or both are needed
        if i=1 then if (DrDisp.checked) or (DrDots.Checked)  then
         //draw disparity traces for the second run
         //are we within the visible part?
         if (x1*scale<middle.x) and (x1*scale>-middle.x) then
         if (y1*scale<middle.y) and (y1*scale>-middle.y) then
         begin
          //find the closest point on the right eye's corresponding epipolar line
          mn:=30; mnx:=0;
          for jx:=-30 to 30 do
           begin
            abstand:=Power(reye[jx,y,1]-x1,2)+Power(reye[jx,y,2]-y1,2);
            if abstand<mn then
             begin
              mn:=abstand;
              mnx:=jx;
             end;
           end;
          if mnx>-30 then
           begin
            p1:=((x1-reye[mnx,y,1])*(reye[mnx-1,y,1]-reye[mnx,y,1])+
                   (y1-reye[mnx,y,2])*(reye[mnx-1,y,2]-reye[mnx,y,2]))/
                   (Power( reye[mnx-1,y,1]-reye[mnx,y,1] ,2)+
                     Power(reye[mnx-1,y,2]-reye[mnx,y,2],2));
            x2:=reye[mnx,y,1]+p1*(reye[mnx-1,y,1]-reye[mnx,y,1]);
            y2:=reye[mnx,y,2]+p1*(reye[mnx-1,y,2]-reye[mnx,y,2]);
           end;
          if mnx=-30 then
           begin
            p1:=((x1-reye[mnx,y,1])*(reye[mnx+1,y,1]-reye[mnx,y,1])+
                   (y1-reye[mnx,y,2])*(reye[mnx+1,y,2]-reye[mnx,y,2]))/
                   (Power( reye[mnx+1,y,1]-reye[mnx,y,1] ,2)+
                     Power(reye[mnx+1,y,2]-reye[mnx,y,2],2));
            x2:=reye[mnx,y,1]+p1*(reye[mnx+1,y,1]-reye[mnx,y,1]);
            y2:=reye[mnx,y,2]+p1*(reye[mnx+1,y,2]-reye[mnx,y,2]);
           end;
          if (WriteFile.Checked) and (i=2) then
            file_epi.Add(FormatFloat('##.000',x1*90)+'  '+FormatFloat('##.000',-y1*90)+'   '+FormatFloat('##.000',x2*90)+'   '+FormatFloat('##.000',-y2*90));
          epilines.Canvas.Pen.Color:=clLtGray;
          if DrDisp.Checked and (i=1) then
           begin
            epilines.Canvas.MoveTo(Floor(x2*scale+middle.x),
             Floor(y2*scale+middle.y));
            epilines.Canvas.LineTo(Floor(x1*scale+middle.x),
             Floor(y1*scale+middle.y));
            if not DrDots.Checked then
             begin
              epilines.Canvas.Pen.Color:=clWhite;
              epilines.Canvas.Brush.Color:=clBlack;
              epilines.Canvas.Rectangle(Floor(x1*scale+middle.x)-2,Floor(y1*scale+middle.y)-2,
                Floor(x1*scale+middle.x)+2,Floor(y1*scale+middle.y)+2);
             end;
           end;
          if (DrDots.Checked) and (i=1) then
           begin
            epilines.Canvas.Brush.Color:=clWhite;
            epilines.Canvas.Pen.Color:=clGreen;
            epilines.Canvas.Rectangle(Floor(x1*scale+middle.x)-2,Floor(y1*scale+middle.y)-2,
              Floor(x1*scale+middle.x)+2,Floor(y1*scale+middle.y)+2);
            epilines.Canvas.Pen.Color:=clRed;
            epilines.Canvas.Rectangle(Floor(x2*scale+middle.x)-2,Floor(y2*scale+middle.y)-2,
              Floor(x2*scale+middle.x)+2,Floor(y2*scale+middle.y)+2);
           end;
         end;
       end;
     end;
   end;
  // produce the coordinate squares
  if DrSquares.Checked then
  begin
   epilines.Canvas.Brush.Color:=clGray;
   for i:=1 to Round(90/StrToInt(SquareDist.Text)) do
    epilines.Canvas.FrameRect(Rect(Floor(middle.x-i/(90/StrToInt(SquareDist.Text))*scale),Floor(middle.y-i/(90/StrToInt(SquareDist.Text))*scale),
     Floor(middle.x+i/(90/StrToInt(SquareDist.Text))*scale),Floor(middle.y+i/(90/StrToInt(SquareDist.Text))*scale)));
  end;
  if ShowPlane.Checked or ShowPlaneDisp.Checked then
   //draw the projections of the target plane into the retinal coordinate system
   for i:=1 to 2 do
    //do the eyes one at a time
    begin

     //rotate the center and base vectors for the plane into an eye fixed coordinate system
     for j:=0 to 5 do
      begin
       //shift origin
       vec[i,j].x:=vec[0,j].x;
       vec[i,j].y:=vec[0,j].y;
       if j=0 then
         if i=1 then vec[i,j].y:=vec[0,j].y+IPD/2 else vec[i,j].y:=vec[0,j].y-IPD/2;
       vec[i,j].z:=vec[0,j].z;

       //rotate vertical
       vec_temp_n:=vec[i,j].x;
       vec[i,j].x:=cos(-HHA[i,2]) * vec[i,j].x - sin(-HHA[i,2]) * vec[i,j].z;
       vec[i,j].z:=sin(-HHA[i,2]) * vec_temp_n + cos(-HHA[i,2]) * vec[i,j].z;

       //rotate horizontal
       vec_temp_n:=vec[i,j].x;
       vec[i,j].x:=cos(-HHA[i,1]) * vec[i,j].x + sin(-HHA[i,1]) * vec[i,j].y;
       vec[i,j].y:=-sin(-HHA[i,1]) * vec_temp_n + cos(-HHA[i,1]) * vec[i,j].y;

       //rotate torsional
       vec_temp_n:=vec[i,j].y;
       vec[i,j].y:=cos(-HHA[i,3]) * vec[i,j].y - sin(-HHA[i,3]) * vec[i,j].z;
       vec[i,j].z:=sin(-HHA[i,3]) * vec_temp_n + cos(-HHA[i,3]) * vec[i,j].z;

       //add rotations for the custom coordinate system, if required

       if UseCS.Checked then
        begin
         //rotate torsional
         vec_temp_n:=vec[i,j].y;
         vec[i,j].y:=cos(CSHHA[i,3]) * vec[i,j].y - sin(CSHHA[i,3]) * vec[i,j].z;
         vec[i,j].z:=sin(CSHHA[i,3]) * vec_temp_n + cos(CSHHA[i,3]) * vec[i,j].z;

         //rotate horizontal
         vec_temp_n:=vec[i,j].x;
         vec[i,j].x:=cos(CSHHA[i,1]) * vec[i,j].x + sin(CSHHA[i,1]) * vec[i,j].y;
         vec[i,j].y:=-sin(CSHHA[i,1]) * vec_temp_n + cos(CSHHA[i,1]) * vec[i,j].y;

         //rotate vertical
         vec_temp_n:=vec[i,j].x;
         vec[i,j].x:=cos(CSHHA[i,2]) * vec[i,j].x - sin(CSHHA[i,2]) * vec[i,j].z;
         vec[i,j].z:=sin(CSHHA[i,2]) * vec_temp_n + cos(CSHHA[i,2]) * vec[i,j].z;
        end;
      end; //loop - vectors

      //now compute the spatial locations of the dots and project them
      for j:=0 to High(targetPlane) do
       for k:=0 to High(targetPlane[0]) do
        begin
         //pick color
         case i of
          1: epilines.Canvas.Pen.Color:=clGreen;
          2: epilines.Canvas.Pen.Color:=clRed;
         end;
         epilines.Canvas.Brush.Color:=clWhite;

         //compute the point coordinates in the plane base vector coordinate system
         u:=(2*j/High(targetPlane)-1)*StrToFloat(targetPlaneWidth.Text);
         v:=(2*k/High(targetPlane[0])-1)*StrToFloat(targetPlaneHeight.Text);

         if MakeCircles.Checked then
         begin
          // this produces a series of circles on the target plane
          if (j mod 4)<3 then
            t_r := 2 * (j mod 4) / 8 * StrToFloat(targetPlaneWidth.Text)
          else
            t_r := StrToFloat(targetPlaneWidth.Text);
          t_a := k * pi/8;
          if j>3 then t_a := t_a + pi;
          u := sin(t_a) * t_r;
          v := cos(t_a) * t_r;
         end;

         //compute the spatial coordinates of the point
         Point.x:=vec[i,0].x + vec[i,1].x*u + vec[i,2].x*v;
         Point.y:=vec[i,0].y + vec[i,1].y*u + vec[i,2].y*v;
         Point.z:=vec[i,0].z + vec[i,1].z*u + vec[i,2].z*v;

         //magnify this point along the two axis

         if ActivateMag.Checked then
         begin
         //project into the magnification coordinate system
         Mag.x:=vec[i,5].x * Point.x + vec[i,5].y * Point.y + vec[i,5].z * Point.z;
         Mag.y:=vec[i,4].x * Point.x + vec[i,4].y * Point.y + vec[i,4].z * Point.z;
         Mag.z:=vec[i,3].x * Point.x + vec[i,3].y * Point.y + vec[i,3].z * Point.z;

         //now magnify
         //vertical
         if Mag.x=0 then alpha:=0 else alpha:=arctan(Mag.z/Mag.x);
         if i=1 then alpha:=alpha*StrToFloat(MagLEY.Text) else alpha:=alpha*StrToFloat(MagREY.Text);
         Mag.z:=Mag.x*tan(alpha);

         //horizontal
         if Mag.x=0 then alpha:=0 else alpha:=arctan(Mag.y/Mag.x);
         if i=1 then alpha:=alpha*StrToFloat(MagLEX.Text) else alpha:=alpha*StrToFloat(MagREX.Text);
         Mag.y:=Mag.x*tan(alpha);

         //project back
         Point.x := Mag.x * vec[i,5].x + Mag.y * vec[i,4].x + Mag.z * vec[i,3].x;
         Point.y := Mag.x * vec[i,5].y + Mag.y * vec[i,4].y + Mag.z * vec[i,3].y;
         Point.z := Mag.x * vec[i,5].z + Mag.y * vec[i,4].z + Mag.z * vec[i,3].z;
         end;

         //project this point into retinal coordinates
         if UseHH.Checked then
          begin
           if Point.x=0 then phi:=PI/2 else phi:=arctan(Point.z/Point.x);
           if Point.x=0 then the:=PI/2 else the:=arctan(Point.y/Point.x*cos(phi));
          end
         else
          begin
           if Point.x=0 then the:=PI/2 else the:=arctan(Point.y/Point.x);
           if Point.x=0 then phi:=PI/2 else phi:=arctan(Point.z/Point.x*cos(the));
          end;
         if UseCS.Checked then
          begin
           phi:=phi-CSHHA[i,2];
           the:=the+CSHHA[i,1];
          end;
         phi:=2*phi/PI;
         the:=2*the/PI;

         //plot it, if required
         if ShowPlane.Checked then
           epilines.Canvas.Rectangle(Floor(the*scale+middle.x)-2,Floor(phi*scale+middle.y)-2,
             Floor(the*scale+middle.x)+2,Floor(phi*scale+middle.y)+2);

         //store the point, if first and we need it
         if (i=1) and (ShowPlaneDisp.Checked or WriteFile.Checked) then
          begin
            otherEyePlane[j,k].x:=Floor(the*scale+middle.x);
            otherEyePlane[j,k].y:=Floor(phi*scale+middle.y);
          end;

         //plot disparity traces, if second and required
         if (i=2) and ShowPlaneDisp.Checked then
          begin
           epilines.Canvas.Pen.Color:=clYellow;
           epilines.Canvas.Brush.Color:=clBlack;
           epilines.Canvas.MoveTo(otherEyePlane[j,k].x,otherEyePlane[j,k].y);
           epilines.Canvas.LineTo(Floor(the*scale+middle.x),Floor(phi*scale+middle.y));
           //plot a dot on one end, if no dots are plotted
           if not ShowPlane.Checked then
             epilines.Canvas.Rectangle(otherEyePlane[j,k].x-2,otherEyePlane[j,k].y-2,
               otherEyePlane[j,k].x+2,otherEyePlane[j,k].y+2);
          end;
         if (WriteFile.Checked) and (i=2) then
           file_plane.Add(FormatFloat('##.000',(otherEyePlane[j,k].x-middle.x)/scale*90)+'  '+FormatFloat('##.000',-(otherEyePlane[j,k].y-middle.y)/scale*90)+'   '+FormatFloat('##.000',the*90)+'   '+FormatFloat('##.000',-phi*90));
        end; //loop - points
    end; //loop - eyes
   if WriteFile.Checked then
    begin
      file_plane.SaveToFile(SaveDialog.FileName+'.pla');
      file_epi.SaveToFile(SaveDialog.FileName+'.epi');
      WriteFile.Checked:=false;
      file_plane.Free;
      file_epi.Free;
    end;
   doingPaintLines:=false;
end;

procedure HHtoFick(var x,y: Double);
var t: Double;

begin
  t:=arcsin(sin(y)*cos(x));
  x:=arccos( cos(y)*cos(x)/cos(t));
  y:=t;
end;

procedure TFormMain.HorVerChange(Sender: TObject);
begin
  computeHHAngles;
  if CSEpipolar.Checked then
   begin
    justKidding:=true;
    CSHVScroll.Position:=HVScroll.Position;
    CSHGScroll.Position:=HGScroll.Position;
    CSVVScroll.Position:=VVScroll.Position;
    CSVGScroll.Position:=VGScroll.Position;
    CSTVScroll.Position:=TVScroll.Position;
    CSTGScroll.Position:=TGScroll.Position;
    justKidding:=false;
   end;
  paintLines;
  FormDisplay.Repaint;
  paintEyes;
  FormEyes.Repaint;
end;

procedure TFormMain.DrEpiLinClick(Sender: TObject);
begin
  paintLines;
  FormDisplay.Repaint;
  SquareDist.Enabled:=DrSquares.Checked;
end;

procedure TFormMain.SetScaleChange(Sender: TObject);
begin
  Magni.Text:=FormatFloat('#0.00',SetScale.Position/60);
end;

procedure TFormMain.Label3Click(Sender: TObject);
begin
  TVScroll.Position:=0;
end;

procedure TFormMain.Label6Click(Sender: TObject);
begin
  TGScroll.Position:=0;
end;

procedure TFormMain.Label2Click(Sender: TObject);
begin
  VGScroll.Position:=0;
end;

procedure TFormMain.Label1Click(Sender: TObject);
begin
  VVScroll.Position:=0;
end;

procedure TFormMain.Label4Click(Sender: TObject);
begin
  HVScroll.Position:=0;
end;

procedure TFormMain.Label5Click(Sender: TObject);
begin
  HGScroll.Position:=0;
end;

procedure TFormMain.L2Click(Sender: TObject);
begin
  if not Custom.Checked then
   begin
    TorVer.onChange:=nil;
    TorVrg.onChange:=nil;
   end
  else
   begin
    TorVer.onChange:=HorVerChange;
    TorVrg.onChange:=HorVerChange;
   end;
  PickDonders.Enabled:=UseDonders.Checked;
  computeHHAngles;
  paintLines;
  FormDisplay.Refresh;
  TorVrg.Enabled:=Custom.Checked;
  TVScroll.Enabled:=Custom.Checked;
  TorVer.Enabled:=Custom.Checked;
  TGScroll.Enabled:=Custom.Checked;
end;

procedure TFormMain.DrAlignYClick(Sender: TObject);
begin
  FullRefresh;
end;

procedure TFormMain.Label8Click(Sender: TObject);
begin
  PlaneXScroll.Position:=44;
end;

procedure TFormMain.PlaneXScrollChange(Sender: TObject);
begin
  PlaneX.Text:=FormatFloat('00.0',PlaneXScroll.Position/4);
end;

procedure TFormMain.PlaneXChange(Sender: TObject);
begin
  if ShowPlane.Checked or ShowPlaneDisp.Checked then FullRefresh;
end;

procedure TFormMain.Label9Click(Sender: TObject);
begin
  PlaneYScroll.Position:=0;
end;

procedure TFormMain.PlaneYScrollChange(Sender: TObject);
begin
  PlaneY.Text:=FormatFloat('00.0',PlaneYScroll.Position/4);
end;

procedure TFormMain.PlaneZScrollChange(Sender: TObject);
begin
  PlaneZ.Text:=FormatFloat('00.0',PlaneZScroll.Position/4);
end;

procedure TFormMain.Label12Click(Sender: TObject);
begin
  PlaneAHScroll.Position:=0;
end;

procedure TFormMain.Label14Click(Sender: TObject);
begin
  PlaneAVScroll.Position:=0;
end;

procedure TFormMain.Label13Click(Sender: TObject);
begin
  PlaneATScroll.Position:=0;
end;

procedure TFormMain.PlaneAHScrollChange(Sender: TObject);
begin
  PlaneAH.Text:=FormatFloat('00.0',PlaneAHScroll.Position);
end;

procedure TFormMain.PlaneAVScrollChange(Sender: TObject);
begin
  PlaneAV.Text:=FormatFloat('00.0',PlaneAVScroll.Position);
end;

procedure TFormMain.PlaneATScrollChange(Sender: TObject);
begin
  PlaneAT.Text:=FormatFloat('00.0',PlaneATScroll.Position);
end;

procedure TFormMain.Label11Click(Sender: TObject);
begin
  PlaneZScroll.Position:=0;
end;

procedure TFormMain.targetPlaneHeightKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in [#0..#20] + ['0' .. '9']) then key:=#0;
end;

procedure TFormMain.SlantAdjustClick(Sender: TObject);
begin
  CyclSlantH.Enabled:=SlantAdjust.Checked;
  CyclSlantV.Enabled:=SlantAdjust.Checked;
  if not SlantAdjust.Checked then
   begin
     PlaneAHScroll.Position:=Round(StrToFloat(PlaneAH.Text));
     PlaneAVScroll.Position:=Round(StrToFloat(PlaneAV.Text));
   end;
  PlaneAHScroll.Enabled:=not SlantAdjust.Checked;
  PlaneAVScroll.Enabled:=not SlantAdjust.Checked;
  //PlaneATScroll.Enabled:=not SlantAdjust.Checked;
  if ShowPlane.Checked or ShowPlaneDisp.Checked then FullRefresh;
end;

procedure TFormMain.FixationLockClick(Sender: TObject);
begin
  PlaneXScroll.Enabled:=not FixationLock.Checked;
  PlaneYScroll.Enabled:=not FixationLock.Checked;
  PlaneZScroll.Enabled:=not FixationLock.Checked;
  dFactor.Enabled:=FixationLock.Checked;
  if ShowPlane.Checked or ShowPlaneDisp.Checked then FullRefresh;
end;

procedure TFormMain.CyclSlantVChange(Sender: TObject);
begin
  if ShowPlane.Checked or ShowPlaneDisp.Checked then FullRefresh;
end;

procedure TFormMain.WidthAdjustClick(Sender: TObject);
begin
  PlaneDH.Enabled:=WidthAdjust.Checked;
  PlaneDV.Enabled:=WidthAdjust.Checked;
  targetPlaneWidth.Enabled:=not WidthAdjust.Checked;
  targetPlaneHeight.Enabled:=not WidthAdjust.Checked;
  if ShowPlane.Checked or ShowPlaneDisp.Checked then FullRefresh;
end;

procedure TFormMain.ShowPlaneClick(Sender: TObject);
begin
  FullRefresh;
end;

procedure TFormMain.dEpipolarChange(Sender: TObject);
begin
  paintLines;
  FormDisplay.Repaint;
end;

procedure TFormMain.SquareDistChange(Sender: TObject);
begin
  if SquareDist.Text='' then Exit;
  if DrEpiLin.Checked then FullRefresh;
end;

procedure TFormMain.dFactorChange(Sender: TObject);
begin
  if ShowPlane.Checked or ShowPlaneDisp.Checked then FullRefresh;
end;

procedure TFormMain.PickDondersChange(Sender: TObject);
begin
  DondersAmount.Caption:=FormatFloat('0.00',PickDonders.Position/100);
  computeHHAngles;
  TVScroll.Enabled:=false;
  TGScroll.Enabled:=false;
  paintLines;
  FormDisplay.Repaint;
end;

procedure TFormMain.UseHHClick(Sender: TObject);
begin
  UseFick.Checked:=not UseHH.Checked;
  paintLines;
  FormDisplay.Repaint;
end;

procedure TFormMain.UseFickClick(Sender: TObject);
begin
  UseHH.Checked:=not UseFick.Checked;
  paintLines;
  FormDisplay.Repaint;
end;

procedure TFormMain.UnlockItClick(Sender: TObject);
begin
  if UnlockIt.Checked then CSEpipolar.Checked:=false;
  GroupBox11.Enabled:=UnlockIt.Checked;
  GroupBox12.Enabled:=UnlockIt.Checked;
  GroupBox13.Enabled:=UnlockIt.Checked;
  if GroupBox11.Enabled then
   GroupBox11.Font.Color:=clGreen
  else
   GroupBox11.Font.Color:=clRed;
  if GroupBox12.Enabled then
   GroupBox12.Font.Color:=clGreen
  else
   GroupBox12.Font.Color:=clRed;
  if GroupBox13.Enabled then
   GroupBox13.Font.Color:=clGreen
  else
   GroupBox13.Font.Color:=clRed;
end;

procedure TFormMain.Label27Click(Sender: TObject);
begin
  CSHVScroll.Position:=0;
end;

procedure TFormMain.Label28Click(Sender: TObject);
begin
  CSHGScroll.Position:=0;
end;

procedure TFormMain.Label29Click(Sender: TObject);
begin
  CSVVScroll.Position:=0;
end;

procedure TFormMain.Label30Click(Sender: TObject);
begin
  CSVGScroll.Position:=0;
end;

procedure TFormMain.Label31Click(Sender: TObject);
begin
  CSTVScroll.Position:=0;
end;

procedure TFormMain.Label32Click(Sender: TObject);
begin
  CSTGScroll.Position:=0;
end;

procedure TFormMain.CSCustomClick(Sender: TObject);
begin
  CSTorVrg.Enabled:=CSCustom.Checked;
  CSTVScroll.Enabled:=CSCustom.Checked;
  CSTorVer.Enabled:=CSCustom.Checked;
  CSTGScroll.Enabled:=CSCustom.Checked;
  if not CSCustom.Checked then
   begin
    CSTorVer.onChange:=nil;
    CSTorVrg.onChange:=nil;
   end
  else
   begin
    CSTorVer.onChange:=CSHorVerChange;
    CSTorVrg.onChange:=CSHorVerChange;
   end;
  CSPickDonders.Enabled:=CSUseDonders.Checked;
  computeHHAngles;
  paintLines;
  FormDisplay.Refresh;
end;

procedure TFormMain.CSPickDondersChange(Sender: TObject);
begin
  CSDondersAmount.Caption:=FormatFloat('0.00',CSPickDonders.Position/100);
  computeCSHHAngles;
  computeHHAngles;
  paintLines;
  FormDisplay.Repaint;
  CSTGScroll.Enabled:=false;
  CSTVScroll.Enabled:=false;
end;

procedure TFormMain.CSHorVerChange(Sender: TObject);
begin
  computeCSHHAngles;
  if justKidding then Exit;
  computeHHAngles;
  paintLines;
  FormDisplay.Repaint;
  paintEyes;
  FormEyes.Repaint;
end;

procedure TFormMain.UseCSClick(Sender: TObject);
begin
  CSEpipolar.Enabled:=UseCS.Checked;
  if CSEpipolar.Enabled then
    if CSEpipolar.Checked then UnlockIt.Checked:=false;
  FormMain.CSHorVerChange(Sender);
end;

procedure TFormMain.CSEpipolarClick(Sender: TObject);
begin
  if CSEpipolar.Checked then UnlockIt.Checked:=false;
end;

procedure TFormMain.ActivateMagClick(Sender: TObject);
begin
  MagLEX.Enabled:=ActivateMag.Checked;
  MagREX.Enabled:=ActivateMag.Checked;
  MagLEY.Enabled:=ActivateMag.Checked;
  MagREY.Enabled:=ActivateMag.Checked;
  HorVerChange(Sender);
end;

procedure TFormMain.MakeCirclesClick(Sender: TObject);
begin
  FullRefresh;
end;

end.
