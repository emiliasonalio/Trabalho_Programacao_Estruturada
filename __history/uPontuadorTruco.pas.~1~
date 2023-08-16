unit uPontuadorTruco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPontuadorTruco = class(TForm)
    LblTime1: TLabel;
    LblTime2: TLabel;
    EdtNomeTime1: TEdit;
    EdtNomeTime2: TEdit;
    LblPontoTime2: TLabel;
    LblPontoTime1: TLabel;
    BtnAdicionaPonto1: TButton;
    BtnAdicionaPonto2: TButton;
    BtnTruco: TButton;
    BtnDiminuirPonto2: TButton;
    BtnDiminuiPontoTime1: TButton;
    procedure BtnAdicionaPonto1Click(Sender: TObject);
    procedure TrucoClick(Sender: TObject);
    procedure BtnAdicionaPonto2Click(Sender: TObject);
    procedure BtnDiminuirPonto2Click(Sender: TObject);
    procedure BtnDiminuiPontoTime1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PontuadorTruco: TPontuadorTruco;
  ponto1: integer;
  ponto2: integer;
  truco : Integer;

implementation

{$R *.dfm}

procedure TPontuadorTruco.BtnAdicionaPonto1Click(Sender: TObject);

begin

  BtnTruco.Caption := 'Truco!';

  if(truco = 0) then
  begin

  ponto1 := ponto1 + 1;
  LblPontoTime1.Caption := IntToStr(ponto1);
  truco:= 0;

  end;
  if(truco = 1) then
  begin
    ponto1:= ponto1 + 3;
    LblPontoTime1.Caption := IntToStr(ponto1);
    truco := 0;
  end;
  if(truco = 2) then
  begin
   ponto1:= ponto1 + 6;
    LblPontoTime1.Caption := IntToStr(ponto1);
    truco := 0;
  end;
  if(truco = 3) then
  begin
   ponto1:= ponto1 + 9;
    LblPontoTime1.Caption := IntToStr(ponto1);
    truco := 0;
  end;
  if(truco = 4) then
  begin
   ponto1:= ponto1 + 12;
    LblPontoTime1.Caption := IntToStr(ponto1);
    truco := 0;
  end;

end;

procedure TPontuadorTruco.BtnAdicionaPonto2Click(Sender: TObject);
begin

  BtnTruco.Caption := 'Truco!';

  if(truco = 0) then
  begin

  ponto2 := ponto2 + 1;
  LblPontoTime2.Caption := IntToStr(ponto2);
  truco:= 0;

  end;
  if(truco = 1) then
  begin
    ponto2:= ponto2 + 3;
    LblPontoTime2.Caption := IntToStr(ponto2);
    truco := 0;
  end;
  if(truco = 2) then
  begin
   ponto2:= ponto2 + 6;
    LblPontoTime2.Caption := IntToStr(ponto2);
    truco := 0;
  end;
  if(truco = 3) then
  begin
   ponto2:= ponto2 + 9;
    LblPontoTime2.Caption := IntToStr(ponto2);
    truco := 0;
  end;
  if(truco = 4) then
  begin
   ponto2:= ponto2 + 12;
    LblPontoTime2.Caption := IntToStr(ponto2);
    truco := 0;
  end;

end;

procedure TPontuadorTruco.BtnDiminuiPontoTime1Click(Sender: TObject);
begin

  ponto1 := ponto1 - 1;
  LblPontoTime1.Caption := IntToStr(ponto1);


end;

procedure TPontuadorTruco.BtnDiminuirPonto2Click(Sender: TObject);
begin
  ponto2 := ponto2 - 1;
  LblPontoTime2.Caption := IntToStr(ponto2);
end;

procedure TPontuadorTruco.TrucoClick(Sender: TObject);
begin
  truco:= truco + 1;

  if(truco = 1) then
  begin
    BtnTruco.Caption := '6!';
  end;
  if(truco = 2) then
  begin
    BtnTruco.Caption := '9!';
  end;
  if(truco = 3) then
  begin
    BtnTruco.Caption := '12!';
  end;

end;

end.
