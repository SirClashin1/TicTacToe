program frmTicTacToe_p;

uses
  Vcl.Forms,
  frmTicTacToe_u in 'frmTicTacToe_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
