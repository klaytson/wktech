unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, uDMPrincipal,
  Vcl.DBGrids, ClasseClientes, ControllerDAO;

type
  TFrmMain = class(TForm)
    Button1: TButton;
    btnNovoPedido: TButton;
    GroupBox1: TGroupBox;
    LblCodigo: TLabel;
    LblNomeCliente: TLabel;
    EdtDataEmissao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtValorTotal: TEdit;
    LblNumeroPedido: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure btnNovoPedidoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cliente: TClientes;
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses ClasseProdutos, uFrmSelecaoCliente;

procedure TFrmMain.btnNovoPedidoClick(Sender: TObject);
var
  ObjDAO: TControllerDAO;
begin
 ObjDAO := TControllerDAO.create();
 ObjDAO.IniciarTransacao(DMPrincipal.FDConnection);

 FrmSelecaoCliente := TFrmSelecaoCliente.create(Application);
 FrmSelecaoCliente.showModal;
end;

procedure TFrmMain.Button1Click(Sender: TObject);
var
  x: TClientes;
  produto: TProdutos;
begin
  x := TClientes.create();
  produto := TProdutos.create();

  x.Nome := 'klaytson Pereira';
  showmessage(x.Nome);

  produto.descricao := 'Monitor Samsung 24 pol';
    showmessage(produto.descricao);

  with DMprincipal.fdquery1 do
    begin
        sql.clear;

        sql.add('select * from produtos');
        open;

    end;


end;

end.
