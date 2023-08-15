program pPontuadorTruco;

uses
  Vcl.Forms,
  uPontuadorTruco in 'uPontuadorTruco.pas' {PontuadorTruco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPontuadorTruco, PontuadorTruco);
  Application.Run;
end.
