unit frmTimers_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    Panel2: TPanel;
    imgSunflower: TImage;
    btnEnter: TButton;
    lblPanel2: TLabel;
    tmrAnimate: TTimer;
    procedure tmrAnimateTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.tmrAnimateTimer(Sender: TObject);
var rightSide, rightBorder : integer;
rightSideSingle, rightBorderSingle : Single;
begin

rightSideSingle := imgSunflower.Position.x;
rightBorderSingle := pnl1.Width;

if rightSideSingle >= rightBorderSingle then
begin
  imgSunflower.Position.x := 24;
end else
begin
  imgSunflower.Position.x := imgSunflower.Position.x + 20;
end;


end;

end.
