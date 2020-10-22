program Editor;

uses
  Forms,
  main in 'main.pas' {frmMain};
  //Unit1 in 'Unit1.pas';
 // Unit2 in 'Unit2.pas' {OPGL_Form};

  //Unit8 in 'Unit8.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Editor';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.


