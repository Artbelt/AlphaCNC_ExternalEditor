unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker, AdvSmoothLabel, AdvGlowButton, Grids, DBGrids, DB,
  ADODB,  ShellApi, AdvObj, BaseGrid, AdvGrid, ComCtrls, AdvProgressBar,
  Mask;

type
  TForm8 = class(TForm)
    dtp1: TAdvSmoothDatePicker;
    dtp2: TAdvSmoothDatePicker;
    btn1: TAdvGlowButton;
    dbgrd1: TDBGrid;
    sp1: TADOStoredProc;
    ds1: TDataSource;
    mmo1: TMemo;
    grid: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    edt1: TEdit;
    lbl1: TLabel;
    grid1: TStringGrid;
    lbl2: TLabel;
    edt2: TEdit;
    Label3: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt10: TEdit;
    edt11: TEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    edt12: TEdit;
    edt15: TEdit;
    lbl10: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    advstrngrd1: TAdvStringGrid;
    pb1: TAdvProgressBar;
    lbl11: TLabel;
    con1: TADOConnection;
    procedure btn1Click(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure HTML_REPORT();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation


{$R *.dfm}

procedure Tform8.HTML_REPORT();
var HTMLStr:TStringList;
    i,x:integer;
begin

 HTMLStr:=TstringList.Create;
 HTMLStr.Clear;
 HTMLStr.Add('<HTML>');
 HTMLStr.Add('<HEAD>');
 HTMLStr.Add('<style>');
 HTMLStr.Add('h2 {');
 HTMLStr.Add('   background: yellow; /* Цвет фона под заголовком */');
 HTMLStr.Add('   color: 5555FF; /* Цвет текста */');
 HTMLStr.Add('   padding: 10px; /* Поля вокруг текста */');
 HTMLStr.Add('  }');
 HTMLStr.Add('h3 {');
 HTMLStr.Add('   background: 5555FF; /* Цвет фона под заголовком */');
 HTMLStr.Add('   color: white; /* Цвет текста */');
 HTMLStr.Add('   padding: 5px; /* Поля вокруг текста */');
 HTMLStr.Add('  }');
 HTMLStr.Add(' </style>');
 HTMLStr.Add('<TITLE>'+'Статистика работы заливочной машины'+'</TITLE>');
 HTMLStr.Add('</HEAD>');
 HTMLStr.Add('<BODY>');

 HTMLStr.Add('<H2><CENTER> Статистика работы заливочной машины с ' +DateTostr(dtp1.Date)+' по '+DateTostr(dtp2.Date)+' </CENTER></H2>');
 //HTMLStr.Add('<hr>');
 {Текущее состояние}
 HTMLStr.Add('<H3><CENTER> Текущее состояние </CENTER></H3>');
 HTMLStr.Add('<table border>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<td>');
 {--------------------}
 HTMLStr.Add('<table border=0>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ 'Место' + '</th>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ 'Форма' + '</th>');
 HTMLStr.Add('</tr>');
 for x := 1 to grid.RowCount - 1 do
 begin
   if advstrngrd1.Cells[0,x] <> '' then
   begin
     HTMLStr.Add('<tr>');
     HTMLStr.Add('<td>'+advstrngrd1.Cells[0,x]+'</td>');
     HTMLStr.Add('<td>'+ advstrngrd1.Cells[1,x] +'</td>');
     HTMLStr.Add('</tr>');
   end;
 end;
 HTMLStr.Add('</TABLE>');
 {------------------}
 HTMLStr.Add('</td>');
 HTMLStr.Add('<td>');
 {------------------}
 HTMLStr.Add('<table border=0>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ 'Текущие траектории заливки' + '</th>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<td> <img src="TEMP.BMP">'+' '+'</td>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('</TABLE>');
 {-------------------}
 HTMLStr.Add('<td>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('</TABLE>');
 {----------------------}
 {Общая информация}
 //HTMLStr.Add('<hr>');
 HTMLStr.Add('<H3><CENTER> Сводная информация </CENTER></H3>');
 HTMLStr.Add('<table border>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ ' Максимальное количество форм ' + '</th>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ ' Минимальное количество форм ' + '</th>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ ' Среднеарифметическое количество форм ' + '</th>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<td>'+ edt2.Text + '</td>');
 HTMLStr.Add('<td>'+ edt3.Text + '</td>');
 HTMLStr.Add('<td>'+ edt11.Text + '</td>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<td>'+ edt4.Text + '</td>');
 HTMLStr.Add('<td>'+ edt5.Text + '</td>');
 HTMLStr.Add('<td>'+  '</td>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('</TABLE>');

 HTMLStr.Add('<br>');

 HTMLStr.Add('<table border>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ ' Максимальное время заливки ' + '</th>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ ' Минимальное время заливки ' + '</th>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ ' Среднеарифметическое время заливки ' + '</th>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<td>'+ edt6.Text + '</td>');
 HTMLStr.Add('<td>'+ edt7.Text + '</td>');
 HTMLStr.Add('<td>'+ edt10.Text + '</td>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<td>'+ edt8.Text + '</td>');
 HTMLStr.Add('<td>'+ edt9.Text + '</td>');
 HTMLStr.Add('<td>'+  '</td>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('</TABLE>');

 HTMLStr.Add('<br>');

 HTMLStr.Add('<table border>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ ' Количество заливок суммарное' + '</th>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<td>'+ edt12.Text + '</td>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('</TABLE>');

 {таблица залитых форм}
 //HTMLStr.Add('<hr>');
 HTMLStr.Add('<H3><CENTER> Залитые формы </CENTER></H3>');
 HTMLStr.Add('<table border>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ 'Форма' + '</th>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ 'Количество' + '</th>');
 HTMLStr.Add('</tr>');
 for x := 1 to grid.RowCount - 2 do
 begin
   HTMLStr.Add('<tr>');
   HTMLStr.Add('<td>'+grid.Cells[0,x]+'</td>');
   HTMLStr.Add('<td>'+ grid.Cells[1,x] +'</td>');
   HTMLStr.Add('</tr>');
 end;
 HTMLStr.Add('</TABLE>');

 HTMLStr.Add('<br>');

 HTMLStr.Add('<table border>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ ' Сумма ' + '</th>');
 HTMLStr.Add('<td>'+ edt15.Text + '</td>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('</TABLE>');

 {таблица аварийных стопов}
 //HTMLStr.Add('<hr>');
 HTMLStr.Add('<H3><CENTER> Аварийные остановки </CENTER></H3>');
 HTMLStr.Add('<table border>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ 'Дата/время' + '</th>');
 HTMLStr.Add('</tr>');
 for x := 0 to grid1.RowCount - 1 do
 begin
   HTMLStr.Add('<tr>');
   HTMLStr.Add('<td>'+grid1.Cells[0,x]+'</td>');
   HTMLStr.Add('</tr>');
 end;
 HTMLStr.Add('</TABLE>');

 HTMLStr.Add('<br>');

 HTMLStr.Add('<table border>');
 HTMLStr.Add('<tr>');
 HTMLStr.Add('<th bgcolor="CCCCCC">'+ ' Количество аварийных стопов ' + '</th>');
 HTMLStr.Add('<td> __'+ edt1.Text + '__ </td>');
 HTMLStr.Add('</tr>');
 HTMLStr.Add('</TABLE>');

 {копирайты}
 HTMLStr.Add('<hr>');
 HTMLStr.Add('<font size=2><center> отчет сгенерирован программой AlphaCNC v1.0 </center></font>');
 {конец HTML страницы}
 HTMLStr.Add('</BODY>');
 HTMLStr.Add('</HTML>');
 HTMLStr.SaveToFile('HTML.html');
 HTMLStr.Free;

 ShellExecute(Handle, 'open', pchar('HTML.html'), '', '', sw_ShowNormal);
end;


procedure TForm8.btn1Click(Sender: TObject);
var
   date1,date2:TDateTime;
   Parameter:TParameter;
   x:integer;
   forms:string;
   count : Integer;
   emergency_count : Integer;
   middle_time : TTime;
   middle_form_count : Integer;
   summa : Integer;
begin
    pb1.Position := 0;
    lbl11.Caption := 'Генерация отчета';
    {выборка записей за период}
    date1:=Int(dtp1.Date);
    date2:=Int(dtp2.Date)+1;
    sp1.Active:=False;
    sp1.ProcedureName:='select_from_statistic';
    sp1.Parameters.Clear;
    Parameter:=sp1.Parameters.AddParameter;
    Parameter.Name:='Start';
    Parameter.DataType:=ftDateTime;
    Parameter.Value:=Date1;
    Parameter:=sp1.Parameters.AddParameter;
    Parameter.Name:='end';
    Parameter.DataType:=ftDateTime;
    Parameter.Value:=Date2;
    sp1.Active:=True;
    pb1.Position := 10;
    {--------------------------------------------------------------------------}
    {                            выборка залитых форм                          }
    {--------------------------------------------------------------------------}
    forms := '';
    sp1.First;
    for x := 0 to sp1.RecordCount - 1 do
    begin
      forms := forms + sp1.Fields[4].AsString;
      sp1.Next;
    end;
    pb1.Position := 20;
    mmo1.Lines.Add(forms);

    {сортировка и подсчет выбранных форм}
    lbl11.Caption := 'подсчет форм';
    grid.RowCount := 1;
    while mmo1.Lines.Count <> 0  do
    begin
      count := 1;
      grid.RowCount := grid.RowCount + 1;
      grid.Cells[0,grid.RowCount-1] := mmo1.Lines[0];
      for x := 1 to mmo1.Lines.Count - 1 do
      begin
        if mmo1.Lines[x] = grid.Cells[0,grid.RowCount-1] then count := count + 1;
      end;

      for x := mmo1.Lines.Count - 1 downto 0 do
      begin
        if mmo1.Lines[x] = grid.Cells[0,grid.RowCount-1] then mmo1.Lines.Delete(x);
      end;
      if grid.Cells[0,grid.RowCount-1] <> '' then  grid.Cells[1,grid.RowCount-1] := IntToStr(count);
    end;
    pb1.Position := 30;
    summa := 0;
    {подсчет суммы залитых форм}
    lbl11.Caption := 'подсчет  суммы залитых форм';
    for x := 1 to grid.RowCount - 2 do
    begin
     summa := summa + StrToInt(grid.Cells[1,x]);
    end;
    edt15.Text := IntToStr(summa);
    pb1.Position := 40;
    {подсчет количества аварийных стопов}
    lbl11.Caption := 'подсчет количества аварийных стопов';
    grid1.RowCount := 1;
    emergency_count := 0;
    sp1.First;
    for x := 0 to sp1.RecordCount - 1 do
    begin
      if sp1.Fields[5].AsBoolean = true then
      begin
        emergency_count := emergency_count + 1;
        grid1.RowCount := grid1.RowCount + 1;
        grid1.Cells[0,grid1.RowCount-1] :=  DateTimeToStr(sp1.Fields[2].AsDateTime);
        grid1.Cells[1,grid1.RowCount-1] :=  DateTimeToStr(sp1.Fields[3].AsDateTime);
      end;
      sp1.Next;
    end;
    pb1.Position := 50;
    edt1.Text := IntToStr(emergency_count);
    {количество форм}
    lbl11.Caption := 'подсчет количества форм';
    sp1.Sort := 'form_count ASC';
    sp1.First;
    edt3.Text := sp1.Fields[6].AsString;
    edt5.Text := DateTimeToStr(sp1.Fields[0].AsDateTime);
    sp1.Last;
    edt2.Text := sp1.Fields[6].AsString;
    edt4.Text := DateTimeToStr(sp1.Fields[0].AsDateTime);
    middle_form_count := 0;
    sp1.First;
    for x := 0 to sp1.RecordCount - 1 do
    begin
      middle_form_count := middle_form_count + sp1.Fields[6].AsInteger;
      sp1.Next;
    end;
    pb1.Position := 70;
    middle_form_count := middle_form_count div x;
    edt11.Text := IntToStr(middle_form_count);
    //sp1.Sort := 'date ASC';
    {время заливки}
    lbl11.Caption := 'подсчет времени заливки';
    sp1.Sort := 'working_time ASC';
    sp1.First;
    edt7.Text := TimeToStr(sp1.Fields[7].asdatetime);
    edt9.Text := DateTimeToStr(sp1.Fields[0].AsDateTime);
    sp1.Last;
    edt6.Text := TimeToStr(sp1.Fields[7].asdatetime);
    edt8.Text := DateTimeToStr(sp1.Fields[0].AsDateTime);
    sp1.Sort := 'date ASC';
    middle_time := 0;
    sp1.First;
    pb1.Position := 80;
    for x := 0 to sp1.RecordCount - 1 do
    begin
      middle_time := middle_time + sp1.Fields[7].AsDateTime;
      sp1.Next;
    end;
    middle_time := middle_time / x;
    edt10.Text := TimeToStr(middle_time);
    pb1.Position := 100;
    {количество заливок}
    lbl11.Caption := 'Готово';
    edt12.Text := IntToStr(sp1.RecordCount);
    {загрузка текущего расположения форм}
    advstrngrd1.LoadFromFile('TEMP.GRID');
    {отчет}
    HTML_REPORT;
end;



procedure TForm8.dtp1Change(Sender: TObject);
begin
  dtp2.Date := dtp1.Date;
end;

end.
