unit FormInputs_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm2 = class(TForm)
    lblName: TLabel;
    lblAge: TLabel;
    lblSurname: TLabel;
    edtName: TEdit;
    edtAge: TEdit;
    edtSurname: TEdit;
    btnReset: TButton;
    btnEnglish: TButton;
    btnPortuguese: TButton;
    procedure btnResetClick(Sender: TObject);
    procedure btnEnglishClick(Sender: TObject);
    procedure btnPortugueseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.btnEnglishClick(Sender: TObject);
begin
  lblName.Text:= 'Name';
  lblSurname.Text:= 'Surname';
  lblAge.Text:= 'Age';
end;

procedure TForm2.btnPortugueseClick(Sender: TObject);
begin
  lblName.Text:= 'Nome';
  lblSurname.Text:= 'Sobrenome';
  lblAge.Text:= 'Idade';
end;

procedure TForm2.btnResetClick(Sender: TObject);
begin
  edtName.Text:= '';
  edtSurname.Text := '';
  edtAge.Text := '';
end;

end.
