unit frmCase_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    edtInput: TEdit;
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

procedure TForm1.btnPressMeClick(Sender: TObject);
var
  num: integer;
begin
  num := strToInt(edtInput.Text);

  case num of
    0:
      showmessage('your number is 0');
    1:
      showmessage('your number is 1');
    2:
      showmessage('your number is 2');
    3:
      begin
        showmessage('you found the right number!!!');
        // multi line case ex
      end;
    4 .. 999:
      begin
        showmessage('your number is really big');
      end
  else
    begin
      showmessage('your number is waay to big, go down!');
    end;

  end;
end;

end.
