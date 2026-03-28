program DelphiCourse;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmHome_u in 'frmHome_u.pas' {Form1},
  FormInputs_u in 'FormInputs_u.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
