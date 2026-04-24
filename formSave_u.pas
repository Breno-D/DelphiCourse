unit formSave_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    edtName: TEdit;
    edtPassword: TEdit;
    Name: TLabel;
    Password: TLabel;
    btnLogin: TButton;
    btnLogout: TButton;
    procedure btnLogoutClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnLoginClick(Sender: TObject);
var
  sName, sTime, sDate, sLog: string;
  tFile: textFile;
begin

  sName := edtName.Text;
  sDate := DateToStr(Date());
  sTime := TimeToStr(Time());
  sLog := sName + '#' + sDate + '#' + sTime;

  AssignFile(tFile, 'log.txt');
  Append(tFile);
  WriteLn(tFile, sLog);
  CloseFile(tFile);

end;

procedure TForm1.btnLogoutClick(Sender: TObject);
begin
  Form1.Close;
end;

end.
