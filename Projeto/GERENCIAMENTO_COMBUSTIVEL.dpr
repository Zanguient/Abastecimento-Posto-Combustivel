program GERENCIAMENTO_COMBUSTIVEL;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FormPrincipal},
  UAbastecimento in 'UAbastecimento.pas' {FormAbastecimento},
  DM in 'DM.pas' {DataModule1: TDataModule},
  URelatorio in 'URelatorio.pas' {FormRelatorio},
  UFortesRelatorio in 'UFortesRelatorio.pas' {FormFortesRelatorio},
  UFormRelatorioFortes in 'UFormRelatorioFortes.pas' {FormRelatorioFortes},
  UAbastecimentosConsulta in 'UAbastecimentosConsulta.pas' {FormAbastecimentosConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
