unit uPontuadorTruco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

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
    LblPontuacaoAtual: TLabel;
    BtnMelhorde3: TButton;
    LblMelhorDeTres: TLabel;
    procedure BtnAdicionaPonto1Click(Sender: TObject);
    procedure TrucoClick(Sender: TObject);
    procedure BtnAdicionaPonto2Click(Sender: TObject);
    procedure BtnDiminuirPonto2Click(Sender: TObject);
    procedure BtnDiminuiPontoTime1Click(Sender: TObject);
    procedure BtnMelhorde3Click(Sender: TObject);
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
  Ganhador : string;
  MelhorDeTres : integer;
  GanhadorMelhorDeTres1 : integer;
  GanhadorMelhorDeTres2 : integer;

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
  if(truco >= 4) then
  begin
   ponto1:= ponto1 + 12;
    LblPontoTime1.Caption := IntToStr(ponto1);
    truco := 0;
  end;
  if(StrToInt(LblPontoTime1.Caption) >= 12) then
  begin
    Ganhador := EdtNomeTime1.text;
    ShowMessage((Ganhador + 'ganhou!!'));
    ponto1 := 0;
    LblPontoTime1.Caption := FloatToStr(ponto1);
    GanhadorMelhorDeTres1 := GanhadorMelhorDeTres1 + 1;
  end;

    if (GanhadorMelhorDeTres1 >= 2)  then
    begin
    ShowMessage(( ' ganhou a melhor de 3!'));
    end;


  If(MelhorDeTres > 3) then
  begin
  MelhorDeTres := 0;
  LblMelhorDeTres.Caption := ('');
  end;

end;

procedure TPontuadorTruco.BtnAdicionaPonto2Click(Sender: TObject);
begin



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
  if(truco >= 4) then
  begin
   ponto2:= ponto2 + 12;
    LblPontoTime2.Caption := IntToStr(ponto2);
    truco := 0;
  end;

  if(StrToInt(LblPontoTime2.Caption) >= 12) then
  begin
    Ganhador := EdtNomeTime2.text;
    ShowMessage((Ganhador + 'ganhou!!'));
    ponto2 := 0;
    LblPontoTime2.Caption := FloatToStr(ponto2);
    GanhadorMelhorDeTres2 := GanhadorMelhorDeTres2 + 1;
  end;

    if (GanhadorMelhorDeTres2 >= 2)  then
    begin
    ShowMessage((' ganhou a melhor de 3!'));
    end;

  If(MelhorDeTres > 3) then
  begin
  MelhorDeTres := 0;
  LblMelhorDeTres.Caption := ('');
  end;


end;

procedure TPontuadorTruco.BtnDiminuiPontoTime1Click(Sender: TObject);
begin

  ponto1 := ponto1 - 1;
  if(ponto1 <= 0) then
  begin
    ponto1 := 0;
  end;
  LblPontoTime1.Caption := IntToStr(ponto1);


end;

procedure TPontuadorTruco.BtnDiminuirPonto2Click(Sender: TObject);
begin

  ponto2 := ponto2 - 1;
  LblPontoTime2.Caption := IntToStr(ponto2);
end;


procedure TPontuadorTruco.BtnMelhorde3Click(Sender: TObject);
begin
MelhorDeTres := MelhorDeTres + 1;
LblMelhorDeTres.Caption := FloatToStr(MelhorDeTres);
if MelhorDeTres > 2 then
  MelhorDeTres := 0;


end;

procedure TPontuadorTruco.TrucoClick(Sender: TObject);
begin


  if(truco = 0) then
  begin
    BtnTruco.Caption := 'Pedir Truco!';
    LblPontuacaoAtual.Caption := 'Vale 1 ponto';
  end;
  if(truco = 1) then
  begin
    BtnTruco.Caption := 'Pedir 6!';
    LblPontuacaoAtual.Caption := 'Vale 3 pontos';
  end;
  if(truco = 2) then
  begin
    BtnTruco.Caption := 'Pedir 9!';
    LblPontuacaoAtual.Caption := 'Vale 6 pontos';
  end;
  if(truco = 3) then
  begin
    BtnTruco.Caption := 'Pedir 12!';
    LblPontuacaoAtual.Caption := 'Vale 9 pontos';
  end;
  if(truco = 4) then
  begin
    BtnTruco.Caption := 'Voltar ao Truco';
    LblPontuacaoAtual.Caption := 'Vale 12 pontos';
  end;
  truco:= truco + 1;




end;

end.
