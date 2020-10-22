unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, RzPrgres, AdvSmoothLabel;

type
  TsplashForm = class(TForm)
    tmr1: TTimer;
    lbl1: TLabel;
    Bar: TRzProgressBar;
    advsmthlbl1: TAdvSmoothLabel;
    lbl23: TLabel;
    version_lbl: TLabel;
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  splashForm: TsplashForm;

implementation

uses
  main, Unit3;

{$R *.dfm}

procedure TsplashForm.tmr1Timer(Sender: TObject);
begin
Application.ProcessMessages;
end;

end.
