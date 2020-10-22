unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, IniFiles, Buttons, Math,
  Menus, ShellAPI, DB, ADODB, iLabel, Grids, AdvObj, BaseGrid, AdvGrid, iSevenSegmentInteger,
  RzButton, RzEdit, RzSpnEdt, AdvMemo, RzPanel, RzSplit, AppEvnts, iComponent, iVCLComponent, iSwitchLed, Mask, AdvGlowButton, ImgList,
  AdvSmoothPanel, AdvMenus, AdvOfficeButtons, RzRadGrp, RzTrkBar,
  AdvStickyPopupMenu, iPositionComponent, iScaleComponent, iSlider,
  DBClient, RzRadChk, iLed, iLedRound, AdvSmoothStatusIndicator, AdvShape,
  AdvPanel, AdvEdit, jpeg, RzForms, RzCmboBx, RzLabel, AdvSmoothListBox,
  AdvSmoothComboBox, AdvSmoothButton, iCustomComponent;

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
    rzfrmshp1: TRzFormShape;
    img1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure AdvStringGrid1GetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N28Click(Sender: TObject);
    procedure AdvStringGrid1ComboCloseUp(Sender: TObject; ARow,
      ACol: Integer);
    procedure N30Click(Sender: TObject);
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
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure width_plus;
    procedure width_minus;

  private
    { Private declarations }

  public
    { Public declarations }

    PROGRAMMA : TStringList; {УП}
  end;

var

  frmMain: TfrmMain;

implementation

uses
 Unit1, Unit5,
  Unit4, Unit6;

{$R *.dfm}

procedure TFrmmain.width_plus;
  var x:Integer;
begin

  if frmMain.Width <> 386 then
  begin
     frmMain.Width := 370;
  end;

end;

procedure TFrmmain.width_minus;
  var x:Integer;
begin
  //Скрываем правую панель окна
  if frmMain.Width <> 266 then
  begin
     frmMain.Width := 200;
  end;

end;


procedure TfrmMain.Button2Click(Sender: TObject);
begin
  //Скрываем правую панель окна
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
    {если столбец место, то}
   if  ACol=0 then
    begin
      {создаем и заполняем выпадающий список из ячейки местами стола}
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
      ComboBox.Items.Add('16');
      ComboBox.Items.Add('17');
      ComboBox.Items.Add('s1');
      ComboBox.Items.Add('s2');
    end;
    {если столбец форма, то}
    if Acol=1 then
    begin
      {создаем выпадающий список}
      aEditor := edComboList;
      ClearComboString;
      {переход к первой записи}
      tblmain.First;
      {сортировка таблицы}
      tblmain.Sort := 'Form ASC';
      {для всей таблицы main делаем}
      for x:=0 to tblmain.RecordCount-1 do
      {если ячейка AdvStrinGrid[0,...] не пустая...}
      begin if AdvStringGrid1.Cells[0,row] <> '' then
         begin
            {если в таблице main поле с именем (1,2,...17) не пустое, то в выпадающий список добавляем номер фильтра}
           if tblmain.FieldByName(AdvStringGrid1.Cells[0,row]).AsString <>'' then ComboBox.Items.Add(tblmain.Fields[0].AsString)
         end;
         {переход к следующей записи}
        tblmain.Next;
      end;
    end;
   if  ACol=2 then   {3 столлбец таблицы сейчас не задействован}
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
      ComboBox.Items.Add('16');
      ComboBox.Items.Add('17');
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
 Left :=10;
 Top :=10;


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

  {загрузка TEMP.GRD}
  try  AdvStringGrid1.LoadFromFile(ExtractFilePath(Application.Exename)+'TEMP.GRID')
  except
    begin
       ShowMessage('Can not load TEMP.GRID');AdvStringGrid1.DefaultColWidth := 83;
    end;
  end;

  //Пишем заголовки таблице
  AdvStringGrid1.Cells[0,0]:='Стол';
  AdvStringGrid1.Cells[1,0]:='Фильтр';

  //скрываем правую часть окна
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
begin
     {если открывеам ячейку в столбце фильтр}
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
   {если открывеам ячейку в столбце место}
    if AdvStringGrid1.Col=0 then
    begin
      {при смене номера места очищается окно номера формы}  {а так  же поля таблицы темп}
      AdvStringGrid1.Cells[1,AdvStringGrid1.Row]:='';
      tbltemp.RecNo := AdvStringGrid1.Row;
      tbltemp.Edit;
      tbltemp.Fields[1].AsString := '';
      tbltemp.Fields[2].AsBoolean := True;                                         // 12.10.2020
      tbltemp.Fields[3].AsString := '';                                         // 12.10.2020
      tbltemp.Post;
    end;


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

procedure TfrmMain.N35Click(Sender: TObject);
var
  x : Integer;
  temp : string;
  temp_logic : Boolean;
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
      //---start--------------------12.10.2020----------
      temp_logic := tbltemp.Fields[2].AsBoolean;
      tbltemp.Edit;
      tbltemp.Fields[2].AsBoolean := True;
      tbltemp.Post;
      tbltemp.RecNo := x + 1;
      tbltemp.Edit;
      tbltemp.Fields[2].AsBoolean := temp_logic;
      tbltemp.Post;
      temp := tbltemp.Fields[3].AsString;
      tbltemp.Edit;
      tbltemp.Fields[3].AsString := '';
      tbltemp.Post;
      tbltemp.RecNo := x + 1;
      tbltemp.Edit;
      tbltemp.Fields[3].AsString := temp;
      tbltemp.Post;
      //---end-------------------12.10.2020-----------
    end ;
    //else ShowMessage('0 '+IntToStr(x));
     end;

    //сдвиг красной полосы:
    for x := 0 to AdvStringGrid1.RowCount-10 do
    begin
      AdvStringGrid1.Colors[0,x]:= clWindow;
      AdvStringGrid1.Colors[1,x]:= clWindow;
      tbltemp.RecNo := AdvStringGrid1.Row;
    end;
    tbltemp.FindFirst;
    for x := 0 to tbltemp.RecordCount-1 do
    begin
      if tbltemp.Fields[2].AsBoolean = False then begin AdvStringGrid1.Colors[0,x]:= clRed; AdvStringGrid1.Colors[1,x]:= clRed; end;
      if x <> tbltemp.RecordCount-2 then begin tbltemp.FindNext; end;
    end;

  SendMessage(AdvStringGrid1.Handle,WM_KEYDOWN,VK_ESCAPE,0);
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

end;

procedure TfrmMain.N46Click(Sender: TObject);
begin
  AdvStringGrid1.Colors[0,AdvStringGrid1.Row]:= clBtnFace;
  AdvStringGrid1.Colors[1,AdvStringGrid1.Row]:= clBtnFace;
  tbltemp.RecNo := AdvStringGrid1.Row;
  tbltemp.Edit;
  tbltemp.Fields[2].AsBoolean := False;
  tbltemp.Post;

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

end;

procedure TfrmMain.N48Click(Sender: TObject);
{==============================================================================}
{                          Включить все формы                                  }
{==============================================================================}
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

