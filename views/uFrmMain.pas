unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, uDMPrincipal,
  Vcl.DBGrids, ClasseClientes, ControllerDAO, Vcl.ExtCtrls;

type
  TFrmMain = class(TForm)
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
    GroupBox2: TGroupBox;
    BtnSelecao: TButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Edit5: TEdit;
    Label11: TLabel;
    Edit6: TEdit;
    BtnConfirmar: TButton;
    procedure btnNovoPedidoClick(Sender: TObject);
    procedure BtnSelecaoClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
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

uses ClasseProdutos, uFrmSelecaoCliente, uFrmSelecaoProdutos,
ControllerPedidosProdutos, ClassePedidosProdutos;

procedure TFrmMain.BtnConfirmarClick(Sender: TObject);
Var
  PedidosProdutos: TPedidosProdutos;
  ControllerPedidosProdutos: TControllerPedidosProdutos;

begin
  PedidosProdutos := TPedidosProdutos.Create();

  PedidosProdutos.NumeroPedido := StrToInt(Edit1.Text);
  PedidosProdutos.CodigoProduto := StrToInt(Edit2.Text);
  PedidosProdutos.Quantidade := StrToInt(Edit4.Text);
  PedidosProdutos.ValorUnitario := StrToFloat(Edit5.Text);

  PedidosProdutos.ValorTotal := PedidosProdutos.Quantidade * PedidosProdutos.ValorUnitario;

  ControllerPedidosProdutos := TControllerPedidosProdutos.Create();
  ControllerPedidosProdutos.Inserir(PedidosProdutos);

  Panel2.Visible := False;
end;

procedure TFrmMain.btnNovoPedidoClick(Sender: TObject);
var
  ObjDAO: TControllerDAO;
begin
 ObjDAO := TControllerDAO.create();
 ObjDAO.IniciarTransacao(DMPrincipal.FDConnection);

 FrmSelecaoCliente := TFrmSelecaoCliente.create(Application);
 FrmSelecaoCliente.showModal;
end;

procedure TFrmMain.BtnSelecaoClick(Sender: TObject);
begin
  FrmSelecaoProdutos := TFrmSelecaoProdutos.create(Application);
  FrmSelecaoProdutos.ShowModal;
  FrmSelecaoProdutos.Free;
end;

end.
