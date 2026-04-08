unit frmVarIfElse_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    checkBox: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
var
name: string;
flag: boolean;

begin

flag := checkBox.IsChecked;

//to compare if 'flag = false'
if flag then
  begin
    ShowMessage('Inside If');
//  end else if then...
  end else begin
    ShowMessage('inside else');
  end;

end;

end.
