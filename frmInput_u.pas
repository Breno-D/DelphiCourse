unit frmInput_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnAction: TButton;
    edtName: TEdit;
    edtSurname: TEdit;
    lblOut: TLabel;
    procedure btnActionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnActionClick(Sender: TObject);
begin

    ShowMessage('Hello ' + edtName.Text + ' ' + edtSurname.Text);
    lblOut.Text := 'Hello ' + edtName.Text + ' ' + edtSurname.Text;
end;

end.
