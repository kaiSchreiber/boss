program boss;

uses
  Forms,
  main in 'main.pas' {FormMain},
  display in 'display.pas' {FormDisplay},
  eyes in 'eyes.pas' {FormEyes};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'BOSS';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormEyes, FormEyes);
  Application.CreateForm(TFormDisplay, FormDisplay);
  FormMain.LoadIniFile;
  FormMain.AlignForms;
  Application.Run;
end.
