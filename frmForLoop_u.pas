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
  i, vogCount: integer;
  str: string;
begin
  for i := 1 to 5 do
  begin
    showmessage(inttostr(i));
  end;

  for i := 5 downto 1 do
  begin
    showmessage(inttostr(i));
  end;


  str := 'hellooo';
  vogCount := 0;
  for i := 1 to length(str) do
  begin
        if str[i] in ['a', 'e', 'i', 'o', 'u'] then
        begin
          inc(vogCount);
        end;

  end;
  showmessage('the number of vogals is: ' + intTostr(vogCount));

end;

end.
