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
    EdtDataEmissao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtValorTotal: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    BtnSelecao: TButton;
    Panel1: TPanel;
    GridProdutos: TDBGrid;
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
    BtnGravarPedido: TButton;
    BtnVisualizarPedido: TButton;
    BtnCancelarPedido: TButton;
    EdtNumeroPedido: TEdit;
    EdtCodigoCliente: TEdit;
    EdtNomeCliente: TEdit;
    procedure btnNovoPedidoClick(Sender: TObject);
    procedure BtnSelecaoClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarPedidoClick(Sender: TObject);
    procedure GridProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarPedidoClick(Sender: TObject);
    procedure BtnVisualizarPedidoClick(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
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

uses ClasseProdutos, uFrmSelecaoCliente, uFrmSelecaoProdutos, ClasseMain,
ControllerPedidosProdutos, ClassePedidosProdutos, ControllerPedidos;

procedure TFrmMain.BtnCancelarPedidoClick(Sender: TObject);
var
  ControllerPedido: TControllerPedidos;
  NumeroPedido: String;
begin
  NumeroPedido := InputBox('INFORME O NÚMERO DO PEDIDO', 'INFORME O NÚMERO DO PEDIDO', '');
  ControllerPedido.Excluir(StrToInt(NumeroPedido));
end;

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
  PedidosProdutos.CodigoPedidosProdutos := GridProdutos.Columns[5].Field.Value;

  PedidosProdutos.ValorTotal := PedidosProdutos.Quantidade * PedidosProdutos.ValorUnitario;

  If(Tag = 0)Then
    begin
      ControllerPedidosProdutos := TControllerPedidosProdutos.Create();
      ControllerPedidosProdutos.Inserir(PedidosProdutos);
    end
  Else If(Tag = 1)Then
    begin
      ControllerPedidosProdutos := TControllerPedidosProdutos.Create();
      ControllerPedidosProdutos.Atualizar(PedidosProdutos);
    end;

  ControllerPedidosProdutos.abrir(PedidosProdutos.NumeroPedido);
  Panel2.Visible := False;
  Tag := 0;
end;

procedure TFrmMain.BtnGravarPedidoClick(Sender: TObject);
var
  ObjDAO: TControllerDAO;
begin
  ObjDAO := TControllerDAO.Create();
  ObjDAO.Commit(DMPrincipal.FDConnection);
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

procedure TFrmMain.BtnVisualizarPedidoClick(Sender: TObject);
var
  ControllerPedidoProdutos: TControllerPedidosProdutos;
  NumeroPedido: String;
  ObjMain: TMain;
begin
  Panel2.Visible := False;

  ObjMain := TMain.Create();

  NumeroPedido := InputBox('INFORME O NÚMERO DO PEDIDO', 'INFORME O NÚMERO DO PEDIDO', '');

  ControllerPedidoProdutos := TControllerPedidosProdutos.Create();
  ObjMain := ControllerPedidoProdutos.abrir(StrToInt(NumeroPedido));

  EdtNumeroPedido.Text := IntToStr(ObjMain.NumeroPedido);
  edtDataEmissao.Text := DateToStr(ObjMain.DataEmissao);
  EdtCodigoCliente.Text := IntToStr(ObjMain.CodigoCliente);
  EdtNomeCliente.Text := ObjMain.Nome;
  EdtValorTotal.Text := FloatToStr(ObjMain.ValorTotal);
end;

procedure TFrmMain.Edit4Exit(Sender: TObject);
Var
  Quantidade: Integer;
  ValorUnitario: Double;
begin
  Quantidade := StrToInt(edit4.Text);
  ValorUnitario := StrToFloat(edit5.Text);
  Edit6.Text := FloatToStr(ValorUnitario * Quantidade);
end;

procedure TFrmMain.GridProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ControllerPedido: TControllerPedidos;
begin
  ControllerPedido := TControllerPedidos.Create();

  If Key = VK_DELETE then
    begin
       if MessageDlg('Deseja realmente apagar este produto do seu pedido?', mtConfirmation, [mbYes,mbNo],0) = mrYes then
       begin
           ControllerPedido.ExcluirItemProduto(GridProdutos.Columns[5].Field.Value);
       end;
    end;

  If Key = VK_RETURN then
    begin
      Tag := 1;
      panel2.Visible := True;
      Edit1.Text := EdtNumeroPedido.Text;
      edit2.Text := GridProdutos.Columns[0].Field.Value;
      edit3.Text := GridProdutos.Columns[1].Field.Value;
      edit4.Text := GridProdutos.Columns[2].Field.Value;
      edit5.Text := GridProdutos.Columns[3].Field.Value;
      edit6.Text := GridProdutos.Columns[4].Field.Value;

      edit4.SetFocus;
    end;
end;

end.
