unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMemo, StdCtrls, ExtCtrls;

type
  TForm5 = class(TForm)
    Memo1: TAdvMemo;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  main;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  frmMain.tbltemp.RecNo := frmMain.AdvStringGrid1.Row;
  frmMain.tbltemp.Edit;
  frmMain.tbltemp.Fields[1].Assign(Memo1.Lines);
  frmMain.tbltemp.Post;
  frmMain.createprogram;
  Close;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  frmMain.tbltemp.RecNo := frmMain.AdvStringGrid1.Row;
  frmMain.tbltemp.Edit;
  frmMain.tbltemp.Fields[1].Assign(Memo1.Lines);
  frmMain.tbltemp.Post;
  frmMain.createprogram;
end;

end.
