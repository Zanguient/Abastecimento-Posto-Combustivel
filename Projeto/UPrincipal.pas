unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Abastecer1: TMenuItem;
    ActionList1: TActionList;
    ActAbastecer: TAction;
    StatusBar1: TStatusBar;
    Relatrios1: TMenuItem;
    Abastecimentos1: TMenuItem;
    actRelatorioAbastecimento: TAction;
    actRelatorioFortes: TAction;
    RelatrioAbastecimentosFortes1: TMenuItem;
    procedure ActAbastecerExecute(Sender: TObject);
    procedure actRelatorioAbastecimentoExecute(Sender: TObject);
    procedure actRelatorioFortesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure abreForm(Classe: TFormClass);
    function buscaForm(Classe: TFormClass): TForm;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UAbastecimento, URelatorio, DM, UFortesRelatorio;

procedure TFormPrincipal.abreForm(Classe: TFormClass);
var
  I: Integer;
begin
  for I := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[I] is Classe then
    begin // se formulario j� est� aberto
      if MDIChildren[I].WindowState = wsMinimized then
      begin // se formulario estiver minimizado
        MDIChildren[I].WindowState := wsNormal;
        // formulario sai do estado minimizado para normal

      end;

      MDIChildren[I].BringToFront; // traz o formulario para frente
      MDIChildren[I].SetFocus; // foca no formulario
      Exit; // Sai da fun��o abreForm
    end; // encerra o if que verifica se o formulario requerido esta aberto
  end; // encerra o for que percorre todos os formularios abertos no sistema
  Classe.Create(Application); // abre o formulario caso nao tenha sido aberto
end;

procedure TFormPrincipal.ActAbastecerExecute(Sender: TObject);
begin
  abreForm(TFormAbastecimento);
end;

procedure TFormPrincipal.actRelatorioAbastecimentoExecute(Sender: TObject);
begin
  abreForm(TFormRelatorio);
end;

procedure TFormPrincipal.actRelatorioFortesExecute(Sender: TObject);
begin
  FormFortesRelatorio := TFormFortesRelatorio.Create(Self);
  FormFortesRelatorio.SQLQueryRelatorio.Open;
  FormFortesRelatorio.RLReport1.Preview;
end;

function TFormPrincipal.buscaForm(Classe: TFormClass): TForm;
var
  I: Integer;
begin
  for I := 0 to MDIChildCount - 1 do
  begin
    if MDIChildren[I] is Classe then
    begin // se formulario j� est� aberto
      result := MDIChildren[I];
      Exit;
    end; // encerra o if que verifica se o formulario requerido esta aberto
  end; // encerra o for que percorre todos os formularios abertos no sistema
  Messagebox(Application.Handle, Pchar('Formul�rio n�o encontrado!'), Pchar('Busca de formul�rio'), MB_OK + MB_ICONINFORMATION);
end;

end.
