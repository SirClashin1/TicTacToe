object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 220
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 606
    Height = 201
    TabOrder = 0
    object pnlBoard: TPanel
      Left = 16
      Top = 8
      Width = 249
      Height = 161
      TabOrder = 0
      object Button1: TButton
        Left = 8
        Top = 8
        Width = 41
        Height = 33
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 96
        Top = 8
        Width = 41
        Height = 33
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 192
        Top = 8
        Width = 41
        Height = 33
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object pnlGameInfo: TPanel
      Left = 288
      Top = 32
      Width = 305
      Height = 121
      TabOrder = 1
    end
  end
  object Button4: TButton
    Left = 32
    Top = 81
    Width = 41
    Height = 33
    TabOrder = 1
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 120
    Top = 81
    Width = 41
    Height = 33
    TabOrder = 2
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 216
    Top = 81
    Width = 41
    Height = 33
    TabOrder = 3
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 32
    Top = 136
    Width = 41
    Height = 33
    TabOrder = 4
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 120
    Top = 136
    Width = 41
    Height = 33
    TabOrder = 5
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 216
    Top = 136
    Width = 41
    Height = 33
    TabOrder = 6
    OnClick = Button9Click
  end
end
