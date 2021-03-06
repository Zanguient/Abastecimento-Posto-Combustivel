object FormRelatorio: TFormRelatorio
  Left = 0
  Top = 0
  Caption = 'FormRelatorio'
  ClientHeight = 190
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object lbDataInicial: TLabel
    Left = 8
    Top = 5
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object lbDataFinal: TLabel
    Left = 8
    Top = 47
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object mksEdtDataInicial: TMaskEdit
    Left = 8
    Top = 20
    Width = 72
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object mskEdtDataFinal: TMaskEdit
    Left = 8
    Top = 66
    Width = 73
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object BtExecutar: TButton
    Left = 104
    Top = 59
    Width = 125
    Height = 36
    Caption = 'Executar'
    TabOrder = 2
    OnClick = BtExecutarClick
  end
  object frxRelatorios: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42966.932024803200000000
    ReportOptions.LastChange = 42967.557922349500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 120
    Datasets = <
      item
        DataSet = frxDBDatasetAbastecimentos
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object frxDBDataset1ABASTECIMENTO: TfrxMemoView
        Left = 982.677800000000000000
        Top = 3.779530000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'ABASTECIMENTO'
        DataSet = frxDBDatasetAbastecimentos
        DataSetName = 'frxDBDataset1'
        Memo.UTF8W = (
          '[frxDBDataset1."ABASTECIMENTO"]')
      end
      object ReportTitle1: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 137.960730000000000000
          Top = 7.559060000000000000
          Width = 491.338900000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Abastecimento de Combust'#237'vel')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 270.244280000000000000
          Top = 50.692950000000000000
          Width = 181.417440000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Posto ABC')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetAbastecimentos
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1BOMBA_DESCRICAO: TfrxMemoView
          Left = 158.740260000000000000
          Top = 2.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BOMBA_DESCRICAO'
          DataSet = frxDBDatasetAbastecimentos
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."BOMBA_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDataset1TANQUE_DESCRICAO: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TANQUE_DESCRICAO'
          DataSet = frxDBDatasetAbastecimentos
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."TANQUE_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDataset1IMPOSTO: TfrxMemoView
          Left = 615.590910000000000000
          Top = 3.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDatasetAbastecimentos
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."IMPOSTO"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_BRUTO: TfrxMemoView
          Left = 404.567100000000000000
          Top = 3.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VALOR_BRUTO'
          DataSet = frxDBDatasetAbastecimentos
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_BRUTO"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_LIQUIDO: TfrxMemoView
          Left = 510.323130000000000000
          Top = 1.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VALOR_LIQUIDO'
          DataSet = frxDBDatasetAbastecimentos
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_LIQUIDO"]')
          ParentFont = False
        end
        object frxDBDataset1QUANTIDADE: TfrxMemoView
          Left = 272.126160000000000000
          Top = 3.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'QUANTIDADE'
          DataSet = frxDBDatasetAbastecimentos
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."QUANTIDADE"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 60.472480000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."DATA"'
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15000804
        end
        object Memo3: TfrxMemoView
          Left = 158.740260000000000000
          Top = 36.236240000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bomba')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 2.779530000000000000
          Top = 36.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tanque')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 365.819110000000000000
          Top = 34.015770000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Abastecido')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 496.661720000000000000
          Top = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor L'#237'quido')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 602.590910000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Imposto %')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 260.787570000000000000
          Top = 34.015770000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd. Litros')
          ParentFont = False
        end
        object frxDBDataset1DATA: TfrxMemoView
          Left = 50.354360000000000000
          Top = 0.440940000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = frxDBDatasetAbastecimentos
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 389.512060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_BRUTO">,MasterData1)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 387.716760000000000000
          Width = 204.094620000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object SysMemo2: TfrxSysMemoView
          Left = 497.118430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_LIQUIDO">,MasterData1)]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        object SysMemo3: TfrxSysMemoView
          Left = 390.850650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_BRUTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 268.346630000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Geral:')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 497.897960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_LIQUIDO">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 268.346630000000000000
          Width = 325.039580000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object SysMemo6: TfrxSysMemoView
        Left = 574.488560000000000000
        Top = 1024.252630000000000000
        Width = 136.063080000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[PAGE#] de [TOTALPAGES#]')
        ParentFont = False
      end
    end
  end
  object frxDBDatasetAbastecimentos: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule1.SQLQueryRelatorio
    BCDToCurrency = False
    Left = 152
    Top = 112
  end
end
