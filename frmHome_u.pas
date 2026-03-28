unit frmHome_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects;

type
  TForm1 = class(TForm)
    btnDown: TButton;
    Label1: TLabel;
    btnClose: TButton;
    shpCircle: TCircle;
    btnUp: TButton;
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnCloseClick(Sender: TObject);
begin
            Close;
end;

procedure TForm1.btnDownClick(Sender: TObject);
begin
        shpCircle.Position.Y:= 220;
      btnUp.Enabled := True;
      btnDown.Enabled := False;
end;

procedure TForm1.btnUpClick(Sender: TObject);
begin
    shpCircle.Position.Y:= 20;
    btnUp.Enabled := False;
    btnDown.Enabled := True;
end;

end.
