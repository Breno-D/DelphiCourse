unit frmIPO_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    edtInput: TEdit;
    btnProcess: TButton;
    edtOutput: TEdit;
    procedure btnProcessClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnProcessClick(Sender: TObject);
begin
    edtOutput.text := edtInput.Text + ' Was Processed';
end;

end.
