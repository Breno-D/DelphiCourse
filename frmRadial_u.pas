unit frmRadial_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    rdOption1: TRadioButton;
    rdOption2: TRadioButton;
    btnGo: TButton;
    procedure btnGoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnGoClick(Sender: TObject);
begin
  case rdOption1.IsChecked of
    True:
      showmessage('option 1 is prressed');
  end;

  if rdOption2.IsChecked then
    showmessage('option2 is checked');
end;

end.
