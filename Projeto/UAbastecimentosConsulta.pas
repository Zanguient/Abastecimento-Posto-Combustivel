unit UAbastecimentosConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormAbastecimentosConsulta = class(TForm)
    EdtPesquisa: TEdit;
    btPesquisa: TButton;
    DBGrid1: TDBGrid;
    lbFiltro: TLabel;
    DataSource: TDataSource;
    procedure btPesquisaClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbastecimentosConsulta: TFormAbastecimentosConsulta;
  CampoFiltro : string;

implementation

{$R *.dfm}

uses DM;

procedure TFormAbastecimentosConsulta.btPesquisaClick(Sender: TObject);
begin
  if DataSource.DataSet.FieldByName(CampoFiltro) is TStringField then begin
     //define a regra do filtro para texto
     DataSource.DataSet.Filter := CampoFiltro+' like '+QuotedStr('%'+edtPesquisa.Text+'%');
   end
  else begin
     //define a regra do filtro para numericos, datas, etc SEM like no filtro
     DataSource.DataSet.Filter := CampoFiltro+' = '+edtPesquisa.Text;
  end;
  //ativa o filtro
  DataSource.DataSet.Filtered := true;
  EdtPesquisa.SetFocus;
end;

procedure TFormAbastecimentosConsulta.DBGrid1TitleClick(Column: TColumn);
begin
  lbFiltro.Caption := Column.Title.Caption+' : ';
  edtPesquisa.Clear;
  CampoFiltro := Column.FieldName;
  DataSource.DataSet.Filtered := false;

  edtPesquisa.SetFocus;//o cursor vai para o Edit
end;

end.
