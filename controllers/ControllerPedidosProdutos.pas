unit ControllerPedidosProdutos;

interface

Uses ClassePedidosProdutos, ClasseDAOPedidosProdutos, Sysutils, ClasseMain;

Type
  TControllerPedidosProdutos = class
    public
      procedure Salvar(const ObjetoPedidoProduto: TPedidosProdutos);
      procedure Inserir(const ObjetoPedidoProduto: TPedidosProdutos);
      procedure Atualizar(const ObjetoPedidoProduto: TPedidosProdutos);
      function obterSomatorioPedido(NumeroPedido: Integer): Double;
      function abrir(NumeroPedido: Integer): TMain;
  end;

implementation

{ TControllerPedidos }

function TControllerPedidosProdutos.abrir(NumeroPedido: Integer): TMain;
var
  ObjDAOPedidosProdutos: TDAOPedidosProdutos;
begin
  ObjDAOPedidosProdutos := TDAOPedidosProdutos.Create();
  Result := ObjDAOPedidosProdutos.Abrir(NumeroPedido);
end;

procedure TControllerPedidosProdutos.Atualizar(
  const ObjetoPedidoProduto: TPedidosProdutos);
var
  ObjDAOPedidosProdutos: TDAOPedidosProdutos;
begin
  ObjDAOPedidosProdutos := TDAOPedidosProdutos.create();

  ObjDAOPedidosProdutos.Atualizar(ObjetoPedidoProduto);
end;

procedure TControllerPedidosProdutos.Inserir(const ObjetoPedidoProduto: TPedidosProdutos);
var
  ObjDAOPedidosProdutos: TDAOPedidosProdutos;
begin
  ObjDAOPedidosProdutos := TDAOPedidosProdutos.create();

  ObjDAOPedidosProdutos.Inserir(ObjetoPedidoProduto);
end;

function TControllerPedidosProdutos.obterSomatorioPedido(
  NumeroPedido: Integer): Double;
Var
  DAOPedidosProdutos: TDAOPedidosProdutos;
begin
  DAOPedidosProdutos := TDAOPedidosProdutos.Create();
  Result := DAOPedidosProdutos.obterSomatorioPedido(NumeroPedido);
end;

procedure TControllerPedidosProdutos.Salvar(const ObjetoPedidoProduto: TPedidosProdutos);
begin

end;

end.
