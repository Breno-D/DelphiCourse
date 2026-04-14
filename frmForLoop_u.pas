unit frmForLoop_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    btnLoop: TButton;
    procedure btnLoopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnLoopClick(Sender: TObject);
var
  i: integer;
begin
  for i := 1 to 5 do
  begin
    showmessage(inttostr(i));
  end;

  for i := 5 downto 1 do
  begin
    showmessage(inttostr(i));
  end;
end;

end.
