object PontuadorTruco: TPontuadorTruco
  Left = 0
  Top = 0
  Caption = 'PontuadorTruco'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LblTime1: TLabel
    Left = 64
    Top = 56
    Width = 113
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'Time 1'
  end
  object LblTime2: TLabel
    Left = 440
    Top = 56
    Width = 121
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'Time 2'
  end
  object LblPontoTime2: TLabel
    Left = 440
    Top = 176
    Width = 121
    Height = 73
    AutoSize = False
  end
  object LblPontoTime1: TLabel
    Left = 56
    Top = 176
    Width = 121
    Height = 73
    AutoSize = False
  end
  object EdtNomeTime1: TEdit
    Left = 56
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object EdtNomeTime2: TEdit
    Left = 440
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object BtnAdicionaPonto1: TButton
    Left = 56
    Top = 280
    Width = 121
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = BtnAdicionaPonto1Click
  end
  object BtnAdicionaPonto2: TButton
    Left = 440
    Top = 280
    Width = 121
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = BtnAdicionaPonto2Click
  end
  object BtnTruco: TButton
    Left = 160
    Top = 376
    Width = 289
    Height = 49
    Caption = 'Truco!'
    TabOrder = 4
    OnClick = TrucoClick
  end
  object BtnDiminuirPonto2: TButton
    Left = 440
    Top = 311
    Width = 121
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = BtnDiminuirPonto2Click
  end
  object BtnDiminuiPontoTime1: TButton
    Left = 56
    Top = 311
    Width = 121
    Height = 25
    Caption = '-'
    TabOrder = 6
    OnClick = BtnDiminuiPontoTime1Click
  end
end
