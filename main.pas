unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, IniFiles, Buttons, Math,
  Menus, ShellAPI, DB, ADODB, iLabel, Grids, AdvObj, BaseGrid, AdvGrid, iSevenSegmentInteger,
  RzButton, RzEdit, RzSpnEdt, AdvMemo, RzPanel, RzSplit, AppEvnts, dglOpenGL,
  iComponent, iVCLComponent, iSwitchLed, Mask, AdvGlowButton, ImgList,
  AdvSmoothPanel, AdvMenus, AdvOfficeButtons, RzRadGrp, RzTrkBar,
  AdvStickyPopupMenu, iPositionComponent, iScaleComponent, iSlider,
  DBClient, RzRadChk, iLed, iLedRound, AdvSmoothStatusIndicator, AdvShape,
  AdvPanel, AdvEdit, jpeg, RzForms, RzCmboBx, RzLabel, AdvSmoothListBox,
  AdvSmoothComboBox, AdvSmoothButton, iCustomComponent, MY_Font;

type
  TfrmMain = class(TForm)
    OpenDialog1: TOpenDialog;
    pm1: TPopupMenu;
    con1: TADOConnection;
    tblmain: TADOTable;
    ds1: TDataSource;
    pnl2: TPanel;
    pnl6: TPanel;
    AdvStringGrid1: TAdvStringGrid;
    pnl9: TPanel;
    N28: TMenuItem;
    ds2: TDataSource;
    tbltemp: TADOTable;
    pm3: TPopupMenu;
    G001: TMenuItem;
    G011: TMenuItem;
    G021: TMenuItem;
    G031: TMenuItem;
    DrawPanel: TPanel;
    tmr4: TTimer;
    
    tmr5: TTimer;
    tmr6: TTimer;
    tmr7: TTimer;
    tmr8: TTimer;
    tmr9: TTimer;
    advmnmn1: TAdvMainMenu;
    N19: TMenuItem;
    N26: TMenuItem;
    tblStat: TADOTable;
    ds3: TDataSource;
    N33: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N4: TMenuItem;
    APM: TAdvStickyPopupMenu;
    dlgSave2: TSaveDialog;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N34: TMenuItem;
    APM1: TAdvStickyPopupMenu;
    dlgExport: TSaveDialog;
    conExport: TADOConnection;
    tblExport: TADOTable;
    dsExport: TDataSource;
    dlgImport: TOpenDialog;
    pnl14: TPanel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt_x: TAdvEdit;
    edt_y: TAdvEdit;
    btn2: TButton;
    btn9: TButton;
    lbl9: TLabel;
    pnl13: TPanel;
    lbl4: TLabel;
    btn5: TAdvGlowButton;
    edt6: TEdit;
    ud1: TUpDown;
    Button2: TButton;
    tblArhive: TADOTable;
    ds4: TDataSource;
    sp1: TADOStoredProc;
    ds5: TDataSource;
    RzFormShape1: TRzFormShape;
    AdvSmoothButton1: TAdvSmoothButton;
    procedure Button2Click(Sender: TObject);
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure FormCreate(Sender: TObject);
    procedure createprogram;


    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);



    procedure N28Click(Sender: TObject);
    procedure AdvStringGrid1ComboCloseUp(Sender: TObject; ARow,
      ACol: Integer);
    procedure N30Click(Sender: TObject);

    procedure AdvGlowButton7Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure OutText (Litera : PChar);
    procedure N29Click(Sender: TObject);
    procedure test1Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure AdvStringGrid1ClickCell(Sender: TObject; ARow,
      ACol: Integer);
    procedure N37Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);


    procedure N45Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure shp2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnl14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure p1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N49Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N56Click(Sender: TObject);


    procedure ud1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure pnl13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn18_Click(Sender: TObject);

    procedure N62Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);

    procedure width_plus;
    procedure width_minus;



  private
    { Private declarations }

  public
    { Public declarations }
    adminstate:Boolean;{права администратора}
    PROGRAMMA : TStringList; {УП}
    Jogging: Boolean;
    Chase: Boolean;
    CurX, CurY, CurZ, CurA: integer;
    RPMON: Boolean;
    FeedOverRide: integer;
    Limit_X,Limit_Y : Integer; // габариты стола


    function C1toC2(text:string):string;

  end;

type TArrayPoint = array of TPoint; //массив точек

const
  GLF_START_LIST = 1000;

var
{============================OpenGL======================}
  dc, rc: HDC;
{========================================================}
  frmMain: TfrmMain;
  {parameters from INI-files}
  EndSPSparameter : Integer;  // скорость конца движения
  //StepPerMm : Integer;     // шагов в миллиметре
  StepPerMm : Real;       // шагов в миллиметре
  SPSCorrection : Real;  // коррекция скорости
  G00SPS : Integer;       // скорость быстрого хода
  ActualSpeed : String;      // текущая скорость
  NextSpeed : string;        // следующая скорость
  ini_path : string;  //путь к файлу настроек
  ini_Accel : integer;  // ускорение
  ini_MaxSPS : integer;  // максимальная скорость
  ini_StartVel : integer; // стартовая скорость
  ini_Scale : Byte;  // масштаб ускорения
  init : Boolean;   // инициализирован ли контроллер
  SLIV : TPoint;   // координаты точки слива
  First_Home : Boolean; // была ли первая установка на 0
  F_Time : Integer;  // время слива в 0
  Reverse_X,Reverse_Y ,Reverse_Z, Reverse_A: Boolean; // реверс направления осей
  {end parameters}
  ZalivkaPoints : TarrayPoint;
  NowPoint : TPoint;
  {==================================}
  DownMouseMarker : Boolean; // маркер зажати кнопки мыши
  StartMPos, EndMPos : TPoint;  // переменные для перемещения GL картинки
  PerenosX,PerenosY : Real; // смещение картинки
  ZoomX,ZoomY : Real; //масштаб картинки
  {==================================}
  {переменные для отрисовки}
  Zoom:Real;
  ShiftX,ShiftY:Integer;
  ShiftX_temp,ShiftY_temp:Integer;
  {end parameters}
  {координаты текущей точки}
  Current_Point_X,Current_Point_Y,Current_Point_Z, Current_Point_A :Real;
  {маркер нажатия кнопки управления картинкой}
   DOWN_BUTTON:Boolean;
   color_p:boolean;
   {координаты  курсора на DrawPnel}
   Xmouse,Ymouse : Integer;
   {координаты OPENGL под курсором}
   GLX,GLY:Real;
   {Маркер активации добавления точки в программу по нажатии на экран}
   Add_Point_At_End, Add_Point_At_Begin : Boolean;
   {время начала заливки и конца для добавления в статистику}
   Start_Time, End_Time : TDateTime;
   {координаты центра вращающихся столов для заливки круглых}
   Round_table_C1_X, Round_table_C2_X, Round_table_C1_Y, Round_table_C2_Y : Integer;
   {Переменная для запоминания состояния Х и У}
   X_STATE,Y_STATE:Integer;
   {Переменная для реализации внешнего старта}
   START_INPUT_CODE:Integer;

implementation

uses
 Unit1, Unit2, Unit3, Unit5,
  Unit4, Unit6;

{$R *.dfm}

{======================================================================= }
{Вывод текста подписи к картинке}
procedure TFrmmain.OutText (Litera : PChar);
begin                          
  glListBase(GLF_START_LIST);
  glCallLists(Length (Litera), GL_UNSIGNED_BYTE, Litera);
end;
{======================================================================= }


procedure TFrmmain.width_plus;
  var x:Integer;
begin

  if frmMain.Width <> 386 then
  begin
     frmMain.Width := 386
  end;

end;

procedure TFrmmain.width_minus;
  var x:Integer;
begin

  if frmMain.Width <> 266 then
  begin
     frmMain.Width := 266
  end;

end;

{------------------------------------------------------------------------------}
{                                                                              }
{------------------------------------------------------------------------------}

function FindX(text:string):Real;

begin

end;

function FindY(text:string):Real;

begin

end;

function tfrmMain.C1toC2(text:string):string;

begin

end;  

procedure tfrmMain.createprogram;
var
  x,SC:Integer;
  a:Integer;//остаток от деления на 2 - маркер четности номера заливки
begin
  PROGRAMMA.Clear;
  PROGRAMMA.Add('M07');
  PROGRAMMA.Add('M03');
  PROGRAMMA.Add('G04 P'+IntTOSTr(F_Time));
  PROGRAMMA.Add('M05');
  tbltemp.First;
  SC :=  tbltemp.RecordCount-1;

    //простая версия добавления всех форм в программу
      for x := 0 to SC do
      begin
        if (tbltemp.Fields[1].AsString <> '')and(tbltemp.Fields[2].AsBoolean<>True) then  PROGRAMMA.Add(tbltemp.Fields[1].AsString);
        tbltemp.Next;
      end;
    //--конец--простой версии



  PROGRAMMA.Add('');
  PROGRAMMA.Add('G00 X'+IntToSTr(SLIV.X)+' Y'+IntToSTr(SLIV.Y));
  PROGRAMMA.Add('M02');
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,'x','X',[rfReplaceAll]);
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,'y','Y',[rfReplaceAll]);
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,'g','G',[rfReplaceAll]);
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,'p','P',[rfReplaceAll]);
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,'i','I',[rfReplaceAll]);
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,'j','J',[rfReplaceAll]);
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,'f','F',[rfReplaceAll]);
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,'m','M',[rfReplaceAll]);
      {изменение точек на системный разделитель дробной части}
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,'.',DecimalSeparator,[rfReplaceAll]);
  PROGRAMMA.Text := StringReplace(PROGRAMMA.Text,',',DecimalSeparator,[rfReplaceAll]);

end;




procedure TfrmMain.Button2Click(Sender: TObject);
begin
pnl13.Visible :=False;
width_minus;
end;

procedure TfrmMain.AdvStringGrid1GetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
var
  x:Integer;
begin
  with AdvStringGrid1 do
  begin
   if  ACol=0 then
    begin
      aEditor := edComboList;
      ClearComboString;
      ComboBox.Items.Add('');
      ComboBox.Items.Add('1');
      ComboBox.Items.Add('2');
      ComboBox.Items.Add('3');
      ComboBox.Items.Add('4');
      ComboBox.Items.Add('5');
      ComboBox.Items.Add('6');
      ComboBox.Items.Add('7');
      ComboBox.Items.Add('8');
      ComboBox.Items.Add('9');
      ComboBox.Items.Add('10');
      ComboBox.Items.Add('11');
      ComboBox.Items.Add('12');
      ComboBox.Items.Add('13');
      ComboBox.Items.Add('14');
      ComboBox.Items.Add('s1');
      ComboBox.Items.Add('s2');
    end;
    if Acol=1 then
    begin
      aEditor := edComboList;
      ClearComboString;
      tblmain.First;
      tblmain.Sort := 'Form ASC';
      for x:=0 to tblmain.RecordCount-1 do
      begin if AdvStringGrid1.Cells[0,row] <> '' then
         begin
           if tblmain.FieldByName(AdvStringGrid1.Cells[0,row]).AsString <>''
           then ComboBox.Items.Add(tblmain.Fields[0].AsString)
         end;
        tblmain.Next;
      end;
    end;
   if  ACol=2 then
    begin
      aEditor := edComboList;
      ClearComboString;
      ComboBox.Items.Add('');
      ComboBox.Items.Add('1');
      ComboBox.Items.Add('2');
      ComboBox.Items.Add('3');
      ComboBox.Items.Add('4');
      ComboBox.Items.Add('5');
      ComboBox.Items.Add('6');
      ComboBox.Items.Add('7');
      ComboBox.Items.Add('8');
      ComboBox.Items.Add('9');
      ComboBox.Items.Add('10');
      ComboBox.Items.Add('11');
      ComboBox.Items.Add('12');
      ComboBox.Items.Add('13');
      ComboBox.Items.Add('14');
      ComboBox.Items.Add('15');
    end;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  sliv_string:string;
  zalivka_count : string;
  Count_TXT : TextFile;
  x:Integer;
begin
 Left :=0;
 Top :=0;

{отрисовка заставки}
//splashForm.Show; //окно отображается немодальным
// splashForm.Repaint; //метод, заставляющий осуществить




  AdvStringGrid1.ColWidths[1] :=40;

  {Загрузка цветов Таблицы}
  tbltemp.First;
  for x := 1 to tbltemp.RecordCount-1 do
  begin
    if tbltemp.Fields[2].AsBoolean = true then 
      begin
        AdvStringGrid1.Colors[0,tbltemp.RecNo]:= clRed;
        AdvStringGrid1.Colors[1,tbltemp.RecNo]:= clRed;
      end;
    tbltemp.Next;
  end;



  {создание списка-программы}
  PROGRAMMA := TStringList.Create;
  {загрузка TEMP.DNC}
  {try PROGRAMMA.LoadFromFile(ExtractFilePath(Application.Exename)+'TEMP.DNC')
  except  ShowMessage('Can not load TEMP.DNC')
  end;}
  createprogram;


  {загрузка TEMP.GRD}
  try  AdvStringGrid1.LoadFromFile(ExtractFilePath(Application.Exename)+'TEMP.GRID')
  except  begin
            ShowMessage('Can not load TEMP.GRID');
            AdvStringGrid1.DefaultColWidth := 83;
            end;
  end;


    AdvStringGrid1.Cells[0,0]:='Стол';
  AdvStringGrid1.Cells[1,0]:='Фильтр';

  width_minus;         
end;




procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
   F: Textfile;
   Count_TXT : TextFile;
   x: Integer;
begin

   {ЗАПИСЬ УПРАВЛЯЮЩЕЙ ПРОГРАММЫ}
   AssignFile(f, ExtractFilePath(Application.Exename)+'TEMP.DNC'); {Assigns the Filename}
   Rewrite(f); {Opens the file for editing}
   Writeln(f,'');
   for x := 0 to PROGRAMMA.Count - 1 do
   begin
     Writeln(f,PROGRAMMA[x]);
   end;
   Closefile(f); {Closes file F}


   {Запись состояния GRID}
   AdvStringGrid1.SaveToFile(ExtractFilePath(Application.Exename)+'TEMP.GRID');

   {создание списка-программы}
   PROGRAMMA.Free;
   {Разрешение закрыть программу}
   CanClose := true;
end;




procedure TfrmMain.N28Click(Sender: TObject);
begin
 Form5 := TForm5.Create(self);
 Form5.Memo1.Clear;
 Form5.Caption:='Редактирование '+advstringgrid1.Cells[1,advstringgrid1.row];
 tbltemp.RecNo := AdvStringGrid1.Row;
 Form5.Memo1.Lines.Add(tbltemp.Fields[1].AsString);
end;

procedure TfrmMain.AdvStringGrid1ComboCloseUp(Sender: TObject; ARow,
  ACol: Integer);
var
  bm : TBitmap;
begin
    if AdvStringGrid1.Col=1 then
    begin
      if tblmain.Locate('form',AdvStringGrid1.Cells[AdvStringGrid1.Col,AdvStringGrid1.row],[loCaseInsensitive, loPartialKey]) then
        begin
          tbltemp.RecNo := AdvStringGrid1.Row;
          tbltemp.Edit;
          tbltemp.Fields[1].AsString := tblmain.FieldByName(AdvStringGrid1.Cells[0,AdvStringGrid1.row]).AsString;
          if  AdvStringGrid1.Cells[0,AdvStringGrid1.row] = 's1' then tbltemp.Fields[3].AsString := 's1';  //если круглая форма s1, то добавляем в табл. temp запись s1
          if  AdvStringGrid1.Cells[0,AdvStringGrid1.row] = 's2' then tbltemp.Fields[3].AsString := 's2';  //если круглая форма s2, то добавляем в табл. temp запись s2
          if  ((AdvStringGrid1.Cells[0,AdvStringGrid1.row] <> 's1')
              and (AdvStringGrid1.Cells[0,AdvStringGrid1.row] <> 's2')) then tbltemp.Fields[3].AsString := '';  //если не круглая форма , то добавляем в табл. temp запись пустую
          tbltemp.Post;
        end
      else //ShowMessage('Can not locate "form" '+AdvStringGrid1.Cells[AdvStringGrid1.Col,AdvStringGrid1.row]);
    end;

    if AdvStringGrid1.Col=0 then
    begin
      {при смене номера места очищается окно номера формы}
      AdvStringGrid1.Cells[1,AdvStringGrid1.Row]:='';
      tbltemp.RecNo := AdvStringGrid1.Row;
      tbltemp.Edit;
      tbltemp.Fields[1].AsString := '';
      tbltemp.Post;
    end;
  createprogram;
  
  {Запись состояния GRID}
   AdvStringGrid1.SaveToFile(ExtractFilePath(Application.Exename)+'TEMP.GRID');

end;

procedure TfrmMain.N30Click(Sender: TObject);
var x: Integer;
begin
  if Application.MessageBox('Все формы в программе буду удалены!!!',
    'Удаление прогаммы', MB_OKCANCEL + MB_ICONQUESTION + MB_TOPMOST) = IDOK
    then
  begin
    for x := 1 to AdvStringGrid1.RowCount-1 do
    begin
      AdvStringGrid1.Cells[0,x]:='';
      AdvStringGrid1.Cells[1,x]:='';
     // AdvStringGrid1.Cells[2,x]:='';
    end;
    tbltemp.First;
    for x := 0 to tbltemp.RecordCount-1 do
    begin
      tbltemp.Edit;
      tbltemp.Fields[1].AsString := '';
      tbltemp.Fields[2].AsBoolean := False;
      tbltemp.Post;
      tbltemp.Next;
    end;
    PROGRAMMA.Clear;
    N48.Click;
  end;
end;




procedure TfrmMain.AdvGlowButton7Click(Sender: TObject);
var
  x,z:Integer;
  stroka:string;
  sostav : string; {состав заливки для статистики}
  form_count : Integer;
  date1,date2:TDateTime;
  Parameter:TParameter;
  forms:string;
  count : Integer;
  summa : Integer;
  Form_list :TStringList;
  a:Integer;//остаток от деления на 2 - маркер четности номера заливки
begin
   createprogram;

end;

procedure TfrmMain.N22Click(Sender: TObject);
begin
  Form6 := TForm6.Create(self);
end;

procedure TfrmMain.N29Click(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('open'),PChar('view.exe'),Nil,Nil,SW_SHOW);
end;

procedure TfrmMain.test1Click(Sender: TObject);
var sostav : string;
z : Integer;
form_count : Integer;
begin
   sostav := '';
   form_count := 0;
      {блок отправки статистики}
      for z := 1 to AdvStringGrid1.RowCount-1 do
      begin
        if AdvStringGrid1.Cells[1,z] <> '' then
        begin
          if AdvStringGrid1.Colors[1,z] <> clRed then
          begin
            sostav := sostav + AdvStringGrid1.Cells[1,z] +#13#10;
            form_count := form_count + 1;
          end;
        end;
      end;
   Start_Time := Now;
   Sleep(Random(3000));
   End_Time := Now;
   tblStat.Append;
   tblStat.Fields[0].AsDateTime := Now;
   tblStat.Fields[2].AsDateTime := Start_Time;
   tblStat.Fields[4].AsString := sostav;
   tblStat.Fields[3].AsDateTime := End_Time;
   tblStat.Fields[6].AsInteger := form_count;
   tblStat.Fields[7].AsDateTime := End_Time - Start_Time;
   tblStat.Post;
end;

procedure TfrmMain.N35Click(Sender: TObject);
var
  x : Integer;
  temp : string;
begin
  for x := AdvStringGrid1.RowCount - 1 downto AdvStringGrid1.Row do
  begin
    if AdvStringGrid1.Cells[1,x] <> '' then
    begin
     // ShowMessage(AdvStringGrid1.Cells[1,x]);
      AdvStringGrid1.Cells[0,x+1] := AdvStringGrid1.Cells[0,x];
      AdvStringGrid1.Cells[1,x+1] := AdvStringGrid1.Cells[1,x];
      AdvStringGrid1.Cells[0,x] := '';
      AdvStringGrid1.Cells[1,x] := '';
      tbltemp.RecNo := x;
      temp := tbltemp.Fields[1].AsString;
      tbltemp.Edit;
      tbltemp.Fields[1].AsString := '';
      tbltemp.Post;
      tbltemp.RecNo := x + 1;
      tbltemp.Edit;
      tbltemp.Fields[1].AsString := temp;
      tbltemp.Post;
    end ;
    //else ShowMessage('0 '+IntToStr(x));

  end;


end;

procedure TfrmMain.N36Click(Sender: TObject);
var
  x : Integer;
  temp : string;
begin
  for x := AdvStringGrid1.Row to  AdvStringGrid1.RowCount - 1 do
  begin
    if AdvStringGrid1.Cells[1,x] <> '' then
    begin
     // ShowMessage(AdvStringGrid1.Cells[1,x]);
      AdvStringGrid1.Cells[0,x-1] := AdvStringGrid1.Cells[0,x];
      AdvStringGrid1.Cells[1,x-1] := AdvStringGrid1.Cells[1,x];
      AdvStringGrid1.Cells[0,x] := '';
      AdvStringGrid1.Cells[1,x] := '';
      tbltemp.RecNo := x;
      temp := tbltemp.Fields[1].AsString;
      tbltemp.Edit;
      tbltemp.Fields[1].AsString := '';
      tbltemp.Post;
      tbltemp.RecNo := x - 1;
      tbltemp.Edit;
      tbltemp.Fields[1].AsString := temp;
      tbltemp.Post;
    end ;
    //else ShowMessage('0 '+IntToStr(x));
  end;
  SendMessage(AdvStringGrid1.Handle,WM_KEYDOWN,VK_ESCAPE,0);
  createprogram;
end;

procedure TfrmMain.AdvStringGrid1ClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin

//AdvStringGrid1.DefaultColWidth := 50;
end;

procedure TfrmMain.N37Click(Sender: TObject);
var X:TPoint;
begin
pnl13.Visible := True;
frmMain.width_plus;
end;

function Transformation(F_diff:Integer;stroka:string):string; {изменение значений Х У на заданную величину}
var
  x,y:Integer;
  xVal:string;
  xStart,xEnd:Integer;
begin
  result:=stroka;
  for x:=0 to Length(result)-1 do
  begin
    if (result[x]='f')or(Result[x]='F') then
    begin
      xStart:=x;
      y:=x;
      while (result[y]<>' ') do
      begin
        if Result[y]=#0 then Break;
        xVal:=xVal+result[y];
        y:=y+1
      end;
      delete(xVal,1,1);
      xEnd:=y;
      Result:=copy(result,0,xStart)+IntToStr(StrToInt(xVal)+F_diff)+copy(result,xEnd,Length(result)-xEnd+1);
    end;
  end;
end;

procedure TfrmMain.btn5Click(Sender: TObject);
var
  str : TStringList;
  X : Integer;
begin
  tbltemp.RecNo := AdvStringGrid1.Row;
  str := TStringLIST.Create;
  str.Assign(tbltemp.Fields[1]);
  for X := 0 to str.Count - 1 do
  begin
    str[x] := transformation(StrToInt(edt6.Text),str[X])
  end;
  tbltemp.Edit;
  tbltemp.Fields[1].Assign(str);
  tbltemp.Post;
  str.Free;
  pnl13.Visible :=False;
  width_minus;
end;




procedure TfrmMain.N45Click(Sender: TObject);
begin
  AdvStringGrid1.Colors[0,AdvStringGrid1.Row]:= clRed;
  AdvStringGrid1.Colors[1,AdvStringGrid1.Row]:= clRed;
  tbltemp.RecNo := AdvStringGrid1.Row;
  tbltemp.Edit;
  tbltemp.Fields[2].AsBoolean := True;
  tbltemp.Post;
  createprogram;
end;

procedure TfrmMain.N46Click(Sender: TObject);
begin
  AdvStringGrid1.Colors[0,AdvStringGrid1.Row]:= clBtnFace;
  AdvStringGrid1.Colors[1,AdvStringGrid1.Row]:= clBtnFace;
  tbltemp.RecNo := AdvStringGrid1.Row;
  tbltemp.Edit;
  tbltemp.Fields[2].AsBoolean := False;
  tbltemp.Post;
  createprogram;
end;

procedure TfrmMain.shp2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin


end;

procedure TfrmMain.pnl14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  ReleaseCapture;
  {а если сюда написать Form1, то можно таскать форму по экрану}
  pnl14.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);

end;

procedure TfrmMain.p1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin

end;

procedure TfrmMain.N49Click(Sender: TObject);
var X:TPoint;
begin
//  GetCursorpos(x);
//  APM1.ShowMenu(X.x,x.y);
pnl14.Visible :=True;
width_plus;
end;

procedure TfrmMain.btn2Click(Sender: TObject);
{==============================================================================}
{                          Сдвинуть форму на Х мм по столу                     }
{==============================================================================}
var
  x:Integer;
  txt :TStringList;
begin
  tbltemp.RecNo := AdvStringGrid1.Row;
  txt:=TStringList.Create;
  txt.Assign(tbltemp.Fields[1]);
  for x := 0 to txt.Count-1 do
  begin
    txt[x]:= Form6.Transformation_X(StrToFloat(edt_x.Text),txt[x]);
    txt[x]:= Form6.Transformation_Y(StrToFloat(edt_y.Text),txt[x]);
  end;

  tbltemp.Edit;
  tbltemp.Fields[1].Assign(txt);
  tbltemp.Post;
  txt.Free;
  createprogram;

  

end;

procedure TfrmMain.N47Click(Sender: TObject);
{==============================================================================}
{                           Включить остальные                                 }
{==============================================================================}
var
  x:Integer;
begin
  tbltemp.First;
  for x := 1 to tbltemp.RecordCount-1 do
  begin
    if tbltemp.RecNo <> AdvStringGrid1.Row then
    begin
        AdvStringGrid1.Colors[0,x]:= clRed;
        AdvStringGrid1.Colors[1,x]:= clRed;
        //AdvStringGrid1.Colors[2,x]:= clRed;
        tbltemp.Edit;
        tbltemp.Fields[2].AsBoolean := True;
        tbltemp.Post;
    end;
    tbltemp.Next;
  end;
   createprogram;
end;

procedure TfrmMain.N48Click(Sender: TObject);

var
  x:Integer;
begin
  tbltemp.First;
  for x := 0 to tbltemp.RecordCount-1 do
  begin
    AdvStringGrid1.Colors[0,x]:= clBtnFace;
    AdvStringGrid1.Colors[1,x]:= clBtnFace;
    tbltemp.Edit;
    tbltemp.Fields[2].AsBoolean := False;
    tbltemp.Post;
    tbltemp.Next;
  end;
   createprogram;

end;

procedure TfrmMain.N56Click(Sender: TObject);
begin
  Close;
end;




procedure TfrmMain.ud1Changing(Sender: TObject; var AllowChange: Boolean);
begin
edt6.Text := IntToStr(ud1.Position)
end;

procedure TfrmMain.pnl13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  ReleaseCapture;
  {а если сюда написать Form1, то можно таскать форму по экрану}
  pnl13.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);

end;

procedure TfrmMain.btn18_Click(Sender: TObject);
begin

  width_minus;
end;

procedure TfrmMain.N62Click(Sender: TObject);
var x: Integer;
begin
  if Application.MessageBox('Все формы в программе буду удалены!!!',
    'Удаление прогаммы', MB_OKCANCEL + MB_ICONQUESTION + MB_TOPMOST) = IDOK
    then
  begin
    for x := 1 to AdvStringGrid1.RowCount-1 do
    begin
      AdvStringGrid1.Cells[0,x]:='';
      AdvStringGrid1.Cells[1,x]:='';
     // AdvStringGrid1.Cells[2,x]:='';
    end;
    tbltemp.First;
    for x := 0 to tbltemp.RecordCount-1 do
    begin
      tbltemp.Edit;
      tbltemp.Fields[1].AsString := '';
      tbltemp.Post;
      tbltemp.Next;
    end;
    PROGRAMMA.Clear;
  end;


end;

procedure TfrmMain.N32Click(Sender: TObject);
var
  a:string;
begin



end;

procedure TfrmMain.AdvSmoothButton1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmMain.btn9Click(Sender: TObject);
begin
pnl14.Visible := False;
width_minus;
end;

end.

