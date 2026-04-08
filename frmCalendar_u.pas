unit frmCalendar_u;

interface

uses
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.EditBox,
  FMX.SpinBox, FMX.Calendar, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit,
  System.Classes, System.SysUtils;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    SetDate: TButton;
    calendObj: TCalendar;
    spinEdit: TSpinBox;
    spinEditMonth: TSpinBox;
    spinEditYear: TSpinBox;
    procedure FormActivate(Sender: TObject);
    procedure SetDateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dia, mes, ano: Word;
  data: TDateTime;

implementation

{$R *.fmx}

procedure TForm1.FormActivate(Sender: TObject);
begin
  spinEdit.MaxLength := 2;
  spinEdit.Max := 31;
  spinEdit.Min := 1;

  spinEditMonth.MaxLength := 2;
  spinEditMonth.Max := 12;
  spinEditMonth.Min := 1;

  spinEditYear.MaxLength := 4;
  spinEditYear.Max := 2026;
  spinEditYear.Min := 2000;


end;

procedure TForm1.SetDateClick(Sender: TObject);
begin
  dia := Trunc(spinEdit.Value);
  mes := Trunc(spinEditMonth.Value);
  ano := Trunc(spinEditYear.Value);
  calendObj.Date := System.SysUtils.EncodeDate(ano, mes, dia);
//  FloatToStr(spinEdit.Value)+'/'+FloatToStr(spinEditMonth.Value)+'/'+FloatToStr(spinEditYear.Value);
end;

end.
