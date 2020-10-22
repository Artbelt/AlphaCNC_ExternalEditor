program Editor;

uses
  Forms,
  main in 'main.pas' {frmMain},
  Unit5 in 'Unit5.pas' {Form5};

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


