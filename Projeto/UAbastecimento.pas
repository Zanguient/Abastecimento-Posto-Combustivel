unit UAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TFormAbastecimento = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdtAbastecimento: TDBEdit;
    DataSourceAbastecimentos: TDataSource;
    Label2: TLabel;
    DBEdtData: TDBEdit;
    Label3: TLabel;
    DBEdtBomba: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdtValorLiquido: TDBEdit;
    btNovo: TButton;
    btSalvar: TButton;
    btCancelar: TButton;
    Label7: TLabel;
    DBEdtQtdLitros: TDBEdit;
    DBEdtValor: TDBEdit;
    EdtImposto: TEdit;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btConsulta: TButton;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbastecimento: TFormAbastecimento;

implementation

{$R *.dfm}

uses DM, UAbastecimentosConsulta, UPrincipal;

procedure TFormAbastecimento.btCancelarClick(Sender: TObject);
begin
  //Cancela insert e fecha o dataset
  DataSourceAbastecimentos.DataSet.Cancel;
  DataSourceAbastecimentos.DataSet.Close;
  //Habilita bot�o NOVO e Desabilita o bot�o SALVAR
  btNovo.Enabled := true;
  btSalvar.Enabled := false;
end;

procedure TFormAbastecimento.btConsultaClick(Sender: TObject);
begin
  FormPrincipal.abreForm(TFormAbastecimentosConsulta);
  DataModule1.ClientDataSet_ABASTECIMENTOS.Open;
  DataModule1.ClientDataSet_ABASTECIMENTOS.Refresh;
end;

procedure TFormAbastecimento.btNovoClick(Sender: TObject);
begin
  //ABRE DATASET E COLOCA EM MODO DE INSER��O
  DataSourceAbastecimentos.DataSet.Open;
  DataSourceAbastecimentos.DataSet.Insert;
  //Desabilita bot�o NOVO e Habilita bot�o SALVAR e CANCELAR
  btNovo.Enabled := false;
  btSalvar.Enabled := true;
  btCancelar.Enabled := true;
end;

procedure TFormAbastecimento.btSalvarClick(Sender: TObject);
begin
  if DBEdtData.text = '  /  /    ' then
    begin
    ShowMessage('O Campo Data � Obrigat�rio');
    DBEdtData.SetFocus;
    exit;
    end;

  if DBEdtBomba.text = '' then
    begin
    ShowMessage('O Campo Bomba � Obrigat�rio');
    DBEdtData.SetFocus;
    exit;
    end;

  if DBEdtQtdLitros.text = '' then
    begin
    ShowMessage('O Campo Qtd.Litros � Obrigat�rio');
    DBEdtData.SetFocus;
    exit;
    end;

  if DBEdtValor.text = '' then
    begin
    ShowMessage('O Campo Valor � Obrigat�rio');
    DBEdtData.SetFocus;
    exit;
    end;


  //SETA OS CAMPOS
  DataModule1.ClientDataSet_ABASTECIMENTOSIMPOSTO.Value := EdtImposto.Text;
  DataModule1.ClientDataSet_ABASTECIMENTOSVALOR_LIQUIDO.Value :=  //CALCULA VALOR L�QUIDO
    StrToFloat(DBEdtValor.Text) - ( ( StrToFloat(EdtImposto.Text)* StrToFloat(DBEdtValor.Text) )/100 );

  //GRAVA NO BANCO DE DADOS
  DataModule1.ClientDataSet_ABASTECIMENTOS.Post;
  DataModule1.ClientDataSet_ABASTECIMENTOS.ApplyUpdates(0);
  //Desabilita bot�o NOVO e Habilita bot�o SALVAR
  btNovo.Enabled := true;
  btSalvar.Enabled := false;
end;

end.
