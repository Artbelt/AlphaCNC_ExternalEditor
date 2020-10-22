object splashForm: TsplashForm
  Left = 379
  Top = 301
  BorderStyle = bsNone
  BorderWidth = 1
  Caption = 'splashForm'
  ClientHeight = 183
  ClientWidth = 459
  Color = 16732497
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 432
    Top = 184
    Width = 33
    Height = 14
    Caption = 'v 1.0 a'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Bar: TRzProgressBar
    Left = 0
    Top = 166
    Width = 459
    Height = 17
    Align = alBottom
    BarColor = 14737632
    BorderOuter = fsNone
    BorderWidth = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14737632
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    InteriorOffset = 0
    ParentFont = False
    PartsComplete = 0
    Percent = 0
    ShowPercent = False
    TotalParts = 0
  end
  object advsmthlbl1: TAdvSmoothLabel
    Left = 88
    Top = 80
    Width = 385
    Height = 81
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.BorderColor = clNone
    Fill.Rounding = 0
    Fill.ShadowOffset = 0
    Caption.Text = 'Filter Maker'
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -64
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = clWindow
    Caption.ColorEnd = clWhite
    CaptionShadow.Text = 'AdvSmoothLabel'
    CaptionShadow.Font.Charset = DEFAULT_CHARSET
    CaptionShadow.Font.Color = clWindowText
    CaptionShadow.Font.Height = -27
    CaptionShadow.Font.Name = 'Tahoma'
    CaptionShadow.Font.Style = []
    Version = '1.5.0.0'
  end
  object lbl23: TLabel
    Left = 112
    Top = 80
    Width = 91
    Height = 13
    Caption = 'by Artem Belchikov'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object version_lbl: TLabel
    Left = 434
    Top = 134
    Width = 12
    Height = 13
    Caption = 'v2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object tmr1: TTimer
    Interval = 2000
    OnTimer = tmr1Timer
  end
end
