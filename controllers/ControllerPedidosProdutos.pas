unit ControllerPedidosProdutos;

interface

Uses ClassePedidosProdutos, ClasseDAOPedidosProdutos, Sysutils;

Type
  TControllerPedidosProdutos = class
    public
      procedure Salvar(const ObjetoPedidoProduto: TPedidosProdutos);
      procedure Inserir(const ObjetoPedidoProduto: TPedidosProdutos);
      procedure abrir(NumeroPedido: Integer);
  end;

implementation

{ TControllerPedidos }

procedure TControllerPedidosProdutos.abrir(NumeroPedido: Integer);
var
  ObjDAOPedidosProdutos: TDAOPedidosProdutos;
begin
  ObjDAOPedidosProdutos := TDAOPedidosProdutos.Create();
  ObjDAOPedidosProdutos.Abrir(NumeroPedido);
end;

procedure TControllerPedidosProdutos.Inserir(const ObjetoPedidoProduto: TPedidosProdutos);
var
  ObjDAOPedidosProdutos: TDAOPedidosProdutos;
begin
  ObjDAOPedidosProdutos := TDAOPedidosProdutos.create();

  ObjDAOPedidosProdutos.Inserir(ObjetoPedidoProduto);
end;

procedure TControllerPedidosProdutos.Salvar(const ObjetoPedidoProduto: TPedidosProdutos);
begin

end;

end.
