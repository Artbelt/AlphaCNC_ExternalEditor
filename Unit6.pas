unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMemo, ExtCtrls, mswheel,Math, Menus, AdvToolBar,
  StdCtrls, AdvMenus, AdvSmoothPanel, ComCtrls, Grids, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, DBAdvMemo;

type
  TForm6 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    advm1: TAdvMemo;
    MSWheel1: TMSWheel;
    GL_TIMER6: TTimer;
    mm1: TMainMenu;
    ksf1: TMenuItem;
    dlg1: TOpenDialog;
    pm1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N101: TMenuItem;
    N111: TMenuItem;
    N121: TMenuItem;
    N2: TMenuItem;
    pnl3: TPanel;
    pgc1: TPageControl;
    ts1: TTabSheet;
    pnl4: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    ts2: TTabSheet;
    pnl5: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn2: TButton;
    ts3: TTabSheet;
    pnl6: TPanel;
    lbl6: TLabel;
    edt6: TEdit;
    btn3: TButton;
    ts5: TTabSheet;
    pnl7: TPanel;
    btn4: TButton;
    ts4: TTabSheet;
    pnl8: TPanel;
    lbl7: TLabel;
    btn5: TButton;
    edt7: TEdit;
    btn6: TButton;
    ts6: TTabSheet;
    pnl9: TPanel;
    btn7: TButton;
    procedure FormCreate(Sender: TObject);

    function Transformation(X_diff,Y_diff:Integer;stroka:string):string; {изменение значений Х У на заданную величину}
    function Transformation_X(X_diff:Real;stroka:string):string;
    function Transformation_Y(Y_diff:Real;stroka:string):string;




  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Form6: TForm6;
  PerenosX6,PerenosY6,ZoomX6,ZoomY6:Real;{opengl}
  dc, rc: HDC;
  Dragpoint:TPoint;
  STRINGS:TStrings; {сюда будет загружаться список}

      //cnt1, cnt2;              // Pro pohyb a barvu textu
   // base: GLuint;                     // Инslo zбkladnнho display listu znakщ
      h_Dc: HDC;                        // Privбtnн GDI Device Context
implementation

uses main;

{$R *.dfm}


function TForm6.Transformation(X_diff,Y_diff:Integer;stroka:string):string; {изменение значений Х У на заданную величину}
var
  x,y:Integer;
  xVal,yVal:string;
  xStart,xEnd:Integer;
  yStart,yEnd:Integer;
begin
  result:=stroka;
  for x:=0 to Length(result)-1 do
  begin
    if (result[x]='x')or(Result[x]='X') then
    begin
      xStart:=x;
      y:=x;
      while result[y]<>' ' do
      begin
        xVal:=xVal+result[y];
        y:=y+1
      end;
      delete(xVal,1,1);
      xEnd:=y;
      Result:=copy(result,0,xStart)+IntToStr(StrToInt(xVal)+X_diff)+copy(result,xEnd,Length(result)-xEnd+1);
    end;
    if (result[x]='y')or(result[x]='Y') then
    begin
      yStart:=x;
      y:=x;
      while result[y]<>' ' do
      begin
        if Result[y]=#0 then Break;   {если после определения Y в конце числа нет пробела а конец строки - разрываем цикл}
        yVal:=yVal+result[y];
        y:=y+1
      end;
      delete(yVal,1,1);
      yEnd:=y;
      Result:=copy(Result,0,yStart)+IntToStr(StrToInt(yVal)+Y_diff)+copy(result,yEnd,Length(result)-yEnd+1);
    end; {    }
  end;
end;

function TForm6.Transformation_X(X_diff:Real;stroka:string):string; {изменение значений Х У на заданную величину}
var
  x,y:Integer;
  xVal:string;
  xStart,xEnd:Integer;
begin
  result:=stroka;
  for x:=0 to Length(result)-1 do
  begin
    if (result[x]='x')or(Result[x]='X') then
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
      Result:=copy(result,0,xStart)+FloatToStr(StrToFloat(xVal)+X_diff)+copy(result,xEnd,Length(result)-xEnd+1);
    end;
  end;
end;

function TForm6.Transformation_Y(Y_diff:Real;stroka:string):string; {изменение значений Х У на заданную величину}
var
  x,y:Integer;
  xVal:string;
  xStart,xEnd:Integer;
begin
  result:=stroka;
  for x:=0 to Length(result)-1 do
  begin
    if (result[x]='y')or(Result[x]='Y') then
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
      Result:=copy(result,0,xStart)+FloatToStr(StrToFloat(xVal)+Y_diff)+copy(result,xEnd,Length(result)-xEnd+1);
    end;
  end;
end;



procedure TForm6.FormCreate(Sender: TObject);
begin
  


  {-----------------}
end;







end.
