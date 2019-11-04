unit eyes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TFormEyes = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEyes: TFormEyes;

implementation

uses main;

{$R *.DFM}

procedure TFormEyes.FormCreate(Sender: TObject);
begin
  FormMain.paintEyes;
end;

procedure TFormEyes.FormResize(Sender: TObject);
begin
  FormMain.paintEyes;
  FormEyes.Refresh;
end;

procedure TFormEyes.FormPaint(Sender: TObject);
begin
  FormEyes.Canvas.Draw(0,0,augen);
end;

end.
