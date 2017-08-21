object FormAbastecimentosConsulta: TFormAbastecimentosConsulta
  Left = 0
  Top = 0
  Caption = 'Pequisa Abastecimentos'
  ClientHeight = 327
  ClientWidth = 808
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbFiltro: TLabel
    Left = 32
    Top = 8
    Width = 3
    Height = 13
  end
  object EdtPesquisa: TEdit
    Left = 144
    Top = 8
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object btPesquisa: TButton
    Left = 352
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
    OnClick = btPesquisaClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 809
    Height = 265
    DataSource = DataSource
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
  end
  object DataSource: TDataSource
    DataSet = DataModule1.ClientDataSet_ABASTECIMENTOS
    Left = 464
    Top = 8
  end
end
