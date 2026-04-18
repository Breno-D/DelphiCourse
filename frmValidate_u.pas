unit frmValidate_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    edtMonth: TEdit;
    btnValidate: TButton;
    Label1: TLabel;
    procedure btnValidateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnValidateClick(Sender: TObject);
var
  month: string;
  code, iMonth: integer;
begin
  month := edtMonth.Text;
  iMonth := 0;
  Val(month, iMonth, code);

  if code <> 0 then
  begin
    ShowMessage('Date is incorrect');
  end
  else
  begin
    ShowMessage('All Good');
  end;

end;

end.
