object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 365
  Width = 677
  object SQLConnection: TSQLConnection
    ConnectionName = 'POSTO_COMBUSTIVEL'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver180.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=18.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver180.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=18.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=F:\DESENVOLVIMENTO\Delphi\Projetos\Outros\Projeto - Aba' +
        'stecimento Posto Combustivel\DataBase\POSTO_COMBUSTIVEL.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 48
    Top = 40
  end
  object SQLDataSet_ABASTECIMENTOS: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM ABASTECIMENTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 72
    Top = 120
    object SQLDataSet_ABASTECIMENTOSABASTECIMENTO: TIntegerField
      FieldName = 'ABASTECIMENTO'
    end
    object SQLDataSet_ABASTECIMENTOSDATA: TDateField
      FieldName = 'DATA'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object SQLDataSet_ABASTECIMENTOSBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Required = True
    end
    object SQLDataSet_ABASTECIMENTOSVALOR_BRUTO: TFMTBCDField
      DisplayLabel = 'VALOR'
      FieldName = 'VALOR_BRUTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object SQLDataSet_ABASTECIMENTOSIMPOSTO: TFMTBCDField
      FieldName = 'IMPOSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object SQLDataSet_ABASTECIMENTOSVALOR_LIQUIDO: TFMTBCDField
      DisplayLabel = 'VALOR L'#205'QUIDO'
      FieldName = 'VALOR_LIQUIDO'
      Required = True
      Precision = 18
      Size = 2
    end
    object SQLDataSet_ABASTECIMENTOSQUANTIDADE: TFMTBCDField
      DisplayLabel = 'QTD. LITROS'
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object DataSetProvider_ABASTECIMENTOS: TDataSetProvider
    DataSet = SQLDataSet_ABASTECIMENTOS
    Left = 248
    Top = 119
  end
  object ClientDataSet_ABASTECIMENTOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider_ABASTECIMENTOS'
    Left = 432
    Top = 120
    object ClientDataSet_ABASTECIMENTOSABASTECIMENTO: TIntegerField
      FieldName = 'ABASTECIMENTO'
      ReadOnly = True
    end
    object ClientDataSet_ABASTECIMENTOSDATA: TDateField
      FieldName = 'DATA'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object ClientDataSet_ABASTECIMENTOSBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Required = True
    end
    object ClientDataSet_ABASTECIMENTOSVALOR_BRUTO: TFMTBCDField
      DisplayLabel = 'VALOR'
      FieldName = 'VALOR_BRUTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object ClientDataSet_ABASTECIMENTOSIMPOSTO: TFMTBCDField
      FieldName = 'IMPOSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object ClientDataSet_ABASTECIMENTOSVALOR_LIQUIDO: TFMTBCDField
      DisplayLabel = 'VALOR L'#205'QUIDO'
      FieldName = 'VALOR_LIQUIDO'
      Required = True
      Precision = 18
      Size = 2
    end
    object ClientDataSet_ABASTECIMENTOSQUANTIDADE: TFMTBCDField
      DisplayLabel = 'QTD.LITROS'
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
    object ClientDataSet_ABASTECIMENTOSlookupBOMBA: TStringField
      FieldKind = fkLookup
      FieldName = 'lookupBOMBA'
      LookupDataSet = ClientDataSetBOMBA
      LookupKeyFields = 'BOMBA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'BOMBA'
      Lookup = True
    end
  end
  object SQLDataSetBOMBA: TSQLDataSet
    GetMetadata = False
    CommandText = 'SELECT * FROM BOMBAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 56
    Top = 208
    object SQLDataSetBOMBABOMBA: TIntegerField
      FieldName = 'BOMBA'
      Required = True
    end
    object SQLDataSetBOMBADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object SQLDataSetBOMBATANQUE: TIntegerField
      FieldName = 'TANQUE'
    end
  end
  object DataSetProviderBOMBA: TDataSetProvider
    DataSet = SQLDataSetBOMBA
    Left = 176
    Top = 208
  end
  object ClientDataSetBOMBA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderBOMBA'
    Left = 311
    Top = 208
    object ClientDataSetBOMBABOMBA: TIntegerField
      FieldName = 'BOMBA'
      Required = True
    end
    object ClientDataSetBOMBADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object ClientDataSetBOMBATANQUE: TIntegerField
      FieldName = 'TANQUE'
    end
  end
  object SQLQueryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT A.*, '
      '             B.DESCRICAO AS BOMBA_DESCRICAO,'
      '             C.DESCRICAO AS TANQUE_DESCRICAO'
      ''
      'FROM  ABASTECIMENTOS  A'
      'LEFT JOIN  BOMBAS            B ON B.BOMBA    = A.BOMBA'
      'LEFT JOIN  TANQUES          C ON C.TANQUE  = B.TANQUE'
      ''
      ''
      '  WHERE A.DATA >= :DATA_INICIAL'
      '      AND  A.DATA <= :DATA_FINAL'
      ''
      ''
      'ORDER BY A.DATA, A.BOMBA')
    SQLConnection = SQLConnection
    Left = 472
    Top = 224
    object SQLQueryRelatorioABASTECIMENTO: TIntegerField
      FieldName = 'ABASTECIMENTO'
      Required = True
    end
    object SQLQueryRelatorioDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object SQLQueryRelatorioBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Required = True
    end
    object SQLQueryRelatorioVALOR_BRUTO: TFMTBCDField
      FieldName = 'VALOR_BRUTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object SQLQueryRelatorioIMPOSTO: TFMTBCDField
      FieldName = 'IMPOSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object SQLQueryRelatorioVALOR_LIQUIDO: TFMTBCDField
      FieldName = 'VALOR_LIQUIDO'
      Required = True
      Precision = 18
      Size = 2
    end
    object SQLQueryRelatorioQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Required = True
      Precision = 18
      Size = 2
    end
    object SQLQueryRelatorioBOMBA_DESCRICAO: TStringField
      FieldName = 'BOMBA_DESCRICAO'
      Size = 100
    end
    object SQLQueryRelatorioTANQUE_DESCRICAO: TStringField
      FieldName = 'TANQUE_DESCRICAO'
      Size = 100
    end
  end
  object DataSourceRelatorio: TDataSource
    DataSet = SQLQueryRelatorio
    Left = 600
    Top = 224
  end
end
