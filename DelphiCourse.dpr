program DelphiCourse;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmHome_u in 'frmHome_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
