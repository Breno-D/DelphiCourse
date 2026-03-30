unit frmOutput_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    btnDisplay: TButton;
    lblOut: TLabel;
    memOut: TMemo;
    procedure btnDisplayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnDisplayClick(Sender: TObject);
begin
  lblOut.Text := 'The answer to 5*5 is';
  memOut.Lines.Add('25');
  ShowMessage('The Asnwer is: ' + IntToStr(5*5));
end;

end.
