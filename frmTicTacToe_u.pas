unit frmTicTacToe_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    pnlBoard: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    pnlGameInfo: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
    procedure CheckIfGameOver;

  VAR
    MoveCount: integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Button1.Enabled := False;
  Inc(MoveCount);
  if MoveCount MOD 2 = 0 then
  begin
    Button1.Caption := 'X';
  end
  else
  begin
    Button1.Caption := 'O';
  end;
  CheckIfGameOver;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Button2.Enabled := False;
  Inc(MoveCount);
  if MoveCount MOD 2 = 0 then
  begin
    Button2.Caption := 'X';
  end
  else
  begin
    Button2.Caption := 'O';
  end;
  CheckIfGameOver;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Button3.Enabled := False;
  Inc(MoveCount);
  if MoveCount MOD 2 = 0 then
  begin
    Button3.Caption := 'X';
  end
  else
  begin
    Button3.Caption := 'O';
  end;
  CheckIfGameOver;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Button4.Enabled := False;
  Inc(MoveCount);
  if MoveCount MOD 2 = 0 then
  begin
    Button4.Caption := 'X';
  end
  else
  begin
    Button4.Caption := 'O';
  end;
  CheckIfGameOver;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Button5.Enabled := False;
  Inc(MoveCount);
  if MoveCount MOD 2 = 0 then
  begin
    Button5.Caption := 'X';
  end
  else
  begin
    Button5.Caption := 'O';
  end;
  CheckIfGameOver;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Button6.Enabled := False;
  Inc(MoveCount);
  if MoveCount MOD 2 = 0 then
  begin
    Button6.Caption := 'X';
  end
  else
  begin
    Button6.Caption := 'O';
  end;
  CheckIfGameOver;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Button7.Enabled := False;
  Inc(MoveCount);
  if MoveCount MOD 2 = 0 then
  begin
    Button7.Caption := 'X';
  end
  else
  begin
    Button7.Caption := 'O';
  end;
  CheckIfGameOver;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Button8.Enabled := False;
  Inc(MoveCount);
  if MoveCount MOD 2 = 0 then
  begin
    Button8.Caption := 'X';
  end
  else
  begin
    Button8.Caption := 'O';
  end;
  CheckIfGameOver;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Button9.Enabled := False;
  Inc(MoveCount);
  if MoveCount MOD 2 = 0 then
  begin
    Button9.Caption := 'X';
  end
  else
  begin
    Button9.Caption := 'O';
  end;
  CheckIfGameOver;
end;

procedure TForm1.CheckIfGameOver;
var
  i, j: integer;
  currentPlayer: string;
  rowCount, columnCount, diagonalCount: integer;
  arrBoard: array [1 .. 3, 1 .. 3] of string;
begin
  arrBoard[1][1] := Button1.Caption;
  arrBoard[1][2] := Button2.Caption;
  arrBoard[1][3] := Button3.Caption;
  arrBoard[2][1] := Button4.Caption;
  arrBoard[2][2] := Button5.Caption;
  arrBoard[2][3] := Button6.Caption;
  arrBoard[3][1] := Button7.Caption;
  arrBoard[3][2] := Button8.Caption;
  arrBoard[3][3] := Button9.Caption;
  for i := 1 to 3 do
  begin
    rowCount := 0;
    currentPlayer := arrBoard[i][1];
    for j := 1 to 3 do
    begin
      if (arrBoard[i][j] = currentPlayer) and (currentPlayer <> '') then
        Inc(rowCount);
    end;
    if rowCount = 3 then
    begin
      pnlGameInfo.Caption := 'Game over!';
      Exit;
    end;
  end;

  for j := 1 to 3 do
  begin
    columnCount := 0;
    currentPlayer := arrBoard[1][j];
    for i := 1 to 3 do
    begin
      if (arrBoard[i][j] = currentPlayer) and (currentPlayer <> '') then
        Inc(columnCount);
    end;
    if columnCount = 3 then
    begin
      pnlGameInfo.Caption := 'Game over!';
      Exit;
    end;
  end;

  diagonalCount := 0;
  currentPlayer := arrBoard[1][1];
  for i := 1 to 3 do
  begin
    if (arrBoard[i][i] = currentPlayer) and (currentPlayer <> '') then
      Inc(diagonalCount);
  end;
  if diagonalCount = 3 then
  begin
    pnlGameInfo.Caption := 'Game over!';
    Exit;
  end;

  diagonalCount := 0;
  currentPlayer := arrBoard[1][3];
  for i := 1 to 3 do
  begin
    if (arrBoard[i][4 - i] = currentPlayer) and (currentPlayer <> '') then
      Inc(diagonalCount);
  end;
  if diagonalCount = 3 then
  begin
    pnlGameInfo.Caption := 'Game over!';
    Exit;
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  MoveCount := 0;
  pnlGameInfo.Caption := 'Welcome! Click on a square to start playing!';
end;

end.
