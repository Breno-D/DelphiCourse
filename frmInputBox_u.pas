unit frmInputBox_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    edtBox: TEdit;
    btnPressMe: TButton;
    procedure btnPressMeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
Const
questionConst = 'What is your Name?';

procedure TForm1.btnPressMeClick(Sender: TObject);
var
  nameVar : string;
begin
  nameVar := InputBox('Name',questionConst,'carlos');
  edtBox.Text := nameVar;
end;

end.
