object frmMain: TfrmMain
  Left = 322
  Top = 93
  ActiveControl = AdvStringGrid1
  BorderStyle = bsNone
  Caption = 'Asinc_Editor'
  ClientHeight = 676
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2: TPanel
    Left = 201
    Top = 0
    Width = 169
    Height = 676
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object DrawPanel: TPanel
      Left = 0
      Top = 0
      Width = 169
      Height = 676
      Align = alClient
      BevelOuter = bvNone
      Color = 11753805
      TabOrder = 0
      object RzFormShape1: TRzFormShape
        Left = 0
        Top = 0
        Width = 169
        Height = 353
        Align = alCustom
      end
      object pnl14: TPanel
        Left = 8
        Top = 120
        Width = 153
        Height = 121
        TabOrder = 0
        Visible = False
        OnMouseDown = pnl14MouseDown
        object lbl5: TLabel
          Left = 96
          Top = 40
          Width = 12
          Height = 13
          Caption = #1084#1084
        end
        object lbl6: TLabel
          Left = 96
          Top = 64
          Width = 12
          Height = 13
          Caption = #1084#1084
        end
        object lbl7: TLabel
          Left = 10
          Top = 38
          Width = 6
          Height = 13
          Caption = 'X'
        end
        object lbl8: TLabel
          Left = 10
          Top = 62
          Width = 6
          Height = 13
          Caption = 'Y'
        end
        object lbl9: TLabel
          Left = 16
          Top = 12
          Width = 68
          Height = 13
          Caption = #1057#1076#1074#1080#1075' '#1092#1086#1088#1084#1099
        end
        object edt_x: TAdvEdit
          Left = 24
          Top = 32
          Width = 65
          Height = 21
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          Enabled = True
          TabOrder = 0
          Text = '0'
          Visible = True
          Version = '2.8.6.1'
        end
        object edt_y: TAdvEdit
          Left = 24
          Top = 56
          Width = 65
          Height = 21
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          Lookup.Separator = ';'
          Color = clWindow
          Enabled = True
          TabOrder = 1
          Text = '0'
          Visible = True
          Version = '2.8.6.1'
        end
        object btn2: TButton
          Left = 24
          Top = 80
          Width = 105
          Height = 25
          Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = btn2Click
        end
        object btn9: TButton
          Left = 128
          Top = 8
          Width = 17
          Height = 17
          Caption = 'x'
          TabOrder = 3
          OnClick = btn9Click
        end
      end
      object pnl13: TPanel
        Left = 8
        Top = 8
        Width = 153
        Height = 105
        Color = cl3DLight
        TabOrder = 1
        Visible = False
        OnMouseDown = pnl13MouseDown
        object lbl4: TLabel
          Left = 16
          Top = 8
          Width = 103
          Height = 13
          Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1082#1086#1088#1086#1089#1090#1080
        end
        object btn5: TAdvGlowButton
          Left = 16
          Top = 64
          Width = 121
          Height = 25
          Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 0
          OnClick = btn5Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object edt6: TEdit
          Left = 16
          Top = 32
          Width = 97
          Height = 27
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '0'
        end
        object ud1: TUpDown
          Left = 120
          Top = 32
          Width = 17
          Height = 28
          Min = -5000
          Max = 5000
          Increment = 100
          TabOrder = 2
          OnChanging = ud1Changing
        end
        object Button2: TButton
          Left = 128
          Top = 8
          Width = 17
          Height = 17
          Caption = 'x'
          TabOrder = 3
          OnClick = Button2Click
        end
      end
    end
  end
  object pnl6: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 676
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'pnl6'
    Color = 11753805
    TabOrder = 1
    object rzfrmshp1: TRzFormShape
      Left = 0
      Top = 0
      Width = 201
      Height = 41
      Align = alTop
    end
    object AdvStringGrid1: TAdvStringGrid
      Left = 0
      Top = 40
      Width = 201
      Height = 586
      Cursor = crDefault
      Align = alCustom
      Color = 8454143
      ColCount = 2
      DefaultColWidth = 83
      DefaultRowHeight = 18
      FixedCols = 0
      RowCount = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowMoving, goEditing]
      ParentFont = False
      PopupMenu = pm1
      ScrollBars = ssVertical
      TabOrder = 0
      ActiveRowColor = 15329769
      GridFixedLineColor = clNone
      OnClickCell = AdvStringGrid1ClickCell
      OnGetEditorType = AdvStringGrid1GetEditorType
      OnComboCloseUp = AdvStringGrid1ComboCloseUp
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      Bands.PrimaryColor = 15790320
      CellNode.ShowTree = False
      CellNode.TreeColor = clSilver
      ColumnHeaders.Strings = (
        #1057#1090#1086#1083
        #1060#1080#1083#1100#1090#1088
        #1055#1088#1077#1089#1089)
      ControlLook.FixedGradientFrom = clWhite
      ControlLook.FixedGradientTo = 15329769
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.ControlStyle = csWinXP
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      EnhRowColMove = False
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FixedColWidth = 83
      FixedRowHeight = 18
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      FloatFormat = '%.2f'
      Grouping.HeaderColor = 13664560
      Grouping.HeaderTextColor = clWhite
      Grouping.SummaryColor = clWhite
      Grouping.SummaryColorTo = 15329769
      Lookup = True
      LookupHistory = True
      MouseActions.DirectComboClose = True
      MouseActions.DirectEdit = True
      Navigation.AdvanceOnEnter = True
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.Borders = pbNoborder
      PrintSettings.Centered = False
      PrintSettings.PagePrefix = 'page'
      PrintSettings.PageNumSep = '/'
      ScrollWidth = 16
      SearchFooter.ColorTo = 15329769
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SelectionColor = 15456711
      SelectionColorTo = 13664560
      ShowDesignHelper = False
      Version = '5.5.1.0'
      WordWrap = False
    end
    object pnl9: TPanel
      Left = 0
      Top = 626
      Width = 201
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 0
        Top = 0
        Width = 201
        Height = 50
        Align = alClient
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        BevelColor = 16733525
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Color = 16752029
        TabOrder = 0
        Version = '1.6.9.0'
        OnClick = AdvSmoothButton1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    FileName = 'ZALIVKA.INI'
    Filter = #1092#1072#1081#1083#1099' INI|*.ini'
    Left = 8
    Top = 40
  end
  object pm1: TPopupMenu
    Left = 40
    Top = 88
    object N26: TMenuItem
      Caption = '-'
    end
    object N38: TMenuItem
      Caption = '*'#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1092#1086#1088#1084#1099'*'
      Enabled = False
    end
    object N37: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1076#1086#1079#1091' '#1092#1086#1088#1084#1099
      OnClick = N37Click
    end
    object N49: TMenuItem
      Caption = #1057#1076#1074#1080#1085#1091#1090#1100' '#1092#1086#1088#1084#1091
      OnClick = N49Click
    end
    object N28: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1086#1076' '#1092#1086#1088#1084#1099
      OnClick = N28Click
    end
    object N33: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = '*'#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'*'
      Enabled = False
    end
    object N35: TMenuItem
      Caption = #1057#1076#1074#1080#1085#1091#1090#1100' '#1086#1090#1089#1102#1076#1072' '#1074#1085#1080#1079
      OnClick = N35Click
    end
    object N36: TMenuItem
      Caption = #1057#1076#1074#1080#1085#1091#1090#1100' '#1086#1090#1089#1102#1076#1072' '#1074#1074#1077#1088#1093
      OnClick = N36Click
    end
    object N45: TMenuItem
      Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1092#1086#1088#1084#1091
      OnClick = N45Click
    end
    object N46: TMenuItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1092#1086#1088#1084#1091
      OnClick = N46Click
    end
    object N47: TMenuItem
      Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1086#1089#1090#1072#1083#1100#1085#1099#1077
      OnClick = N47Click
    end
    object N48: TMenuItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1074#1089#1077
      OnClick = N48Click
    end
    object N34: TMenuItem
      Caption = '-'
    end
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=base.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 280
    Top = 408
  end
  object tblmain: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'main'
    Left = 312
    Top = 408
  end
  object ds1: TDataSource
    DataSet = tblmain
    Left = 248
    Top = 408
  end
  object ds2: TDataSource
    DataSet = tbltemp
    Left = 193
    Top = 409
  end
  object tbltemp: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'temp'
    Left = 161
    Top = 409
  end
  object pm3: TPopupMenu
    Left = 514
    Top = 1
    object G001: TMenuItem
      Caption = 'G00'
    end
    object G011: TMenuItem
      Caption = 'G01'
    end
    object G021: TMenuItem
      Caption = 'G02'
    end
    object G031: TMenuItem
      Caption = 'G03'
    end
  end
  object advmnmn1: TAdvMainMenu
    Version = '2.5.3.1'
    Left = 881
    Top = 17
    object N19: TMenuItem
      Caption = '1'
    end
  end
  object tblStat: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'statistic'
    Left = 161
    Top = 449
  end
  object ds3: TDataSource
    DataSet = tblStat
    Left = 193
    Top = 449
  end
  object APM: TAdvStickyPopupMenu
    ButtonBar = <>
    MenuItems = <
      item
        Style = isControlItem
      end>
    Version = '1.3.1.0'
    Left = 9
    Top = 137
  end
  object dlgSave2: TSaveDialog
    DefaultExt = '*.tbl'
    Filter = #1060#1072#1081#1083#1099' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' AlphaCNC|*.acn'
    Left = 849
    Top = 17
  end
  object APM1: TAdvStickyPopupMenu
    ButtonBar = <>
    MenuItems = <
      item
        Style = isMenuItem
      end>
    Version = '1.3.1.0'
    Left = 617
    Top = 1
  end
  object dlgExport: TSaveDialog
    DefaultExt = '*.mdb'
    Filter = #1060#1072#1081#1083' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093'|*.mdb|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 737
    Top = 113
  end
  object conExport: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=D:\GDIS' +
      'K\Google '#1044#1080#1089#1082'\Delphi+paint 26.03.12-2\'#1050#1086#1087#1080#1103' base.mdb;Persist Sec' +
      'urity Info=True'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 697
    Top = 116
  end
  object tblExport: TADOTable
    Left = 1049
    Top = 356
  end
  object dsExport: TDataSource
    Left = 1105
    Top = 356
  end
  object dlgImport: TOpenDialog
    Left = 657
    Top = 113
  end
  object tblArhive: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'main_archive'
    Left = 161
    Top = 369
  end
  object ds4: TDataSource
    DataSet = tblArhive
    Left = 193
    Top = 369
  end
  object sp1: TADOStoredProc
    Connection = con1
    ProcedureName = 'select_from_statistic'
    Parameters = <>
    Left = 209
    Top = 153
  end
  object ds5: TDataSource
    Left = 249
    Top = 153
  end
end
