unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXFirebird,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;

type
  TDataModule1 = class(TDataModule)
    SQLConnection: TSQLConnection;
    SQLDataSet_ABASTECIMENTOS: TSQLDataSet;
    DataSetProvider_ABASTECIMENTOS: TDataSetProvider;
    ClientDataSet_ABASTECIMENTOS: TClientDataSet;
    SQLDataSet_ABASTECIMENTOSABASTECIMENTO: TIntegerField;
    SQLDataSet_ABASTECIMENTOSDATA: TDateField;
    SQLDataSet_ABASTECIMENTOSBOMBA: TIntegerField;
    SQLDataSet_ABASTECIMENTOSVALOR_BRUTO: TFMTBCDField;
    SQLDataSet_ABASTECIMENTOSIMPOSTO: TFMTBCDField;
    SQLDataSet_ABASTECIMENTOSVALOR_LIQUIDO: TFMTBCDField;
    SQLDataSetBOMBA: TSQLDataSet;
    DataSetProviderBOMBA: TDataSetProvider;
    ClientDataSetBOMBA: TClientDataSet;
    ClientDataSet_ABASTECIMENTOSABASTECIMENTO: TIntegerField;
    ClientDataSet_ABASTECIMENTOSDATA: TDateField;
    ClientDataSet_ABASTECIMENTOSBOMBA: TIntegerField;
    ClientDataSet_ABASTECIMENTOSVALOR_BRUTO: TFMTBCDField;
    ClientDataSet_ABASTECIMENTOSIMPOSTO: TFMTBCDField;
    ClientDataSet_ABASTECIMENTOSVALOR_LIQUIDO: TFMTBCDField;
    SQLDataSet_ABASTECIMENTOSQUANTIDADE: TFMTBCDField;
    ClientDataSet_ABASTECIMENTOSQUANTIDADE: TFMTBCDField;
    SQLDataSetBOMBABOMBA: TIntegerField;
    SQLDataSetBOMBADESCRICAO: TStringField;
    SQLDataSetBOMBATANQUE: TIntegerField;
    ClientDataSetBOMBABOMBA: TIntegerField;
    ClientDataSetBOMBADESCRICAO: TStringField;
    ClientDataSetBOMBATANQUE: TIntegerField;
    ClientDataSet_ABASTECIMENTOSlookupBOMBA: TStringField;
    SQLQueryRelatorio: TSQLQuery;
    SQLQueryRelatorioABASTECIMENTO: TIntegerField;
    SQLQueryRelatorioDATA: TDateField;
    SQLQueryRelatorioBOMBA: TIntegerField;
    SQLQueryRelatorioVALOR_BRUTO: TFMTBCDField;
    SQLQueryRelatorioIMPOSTO: TFMTBCDField;
    SQLQueryRelatorioVALOR_LIQUIDO: TFMTBCDField;
    SQLQueryRelatorioQUANTIDADE: TFMTBCDField;
    SQLQueryRelatorioBOMBA_DESCRICAO: TStringField;
    SQLQueryRelatorioTANQUE_DESCRICAO: TStringField;
    DataSourceRelatorio: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
