unit ControllerPedidos;

interface

Uses ClassePedidos, ClasseDAOPedidos, Sysutils;

Type
  TControllerPedidos = class
    public
      procedure Inserir(const ObjetoPedido: TPedidos);
      procedure Excluir(NumeroPedido: Integer);
      procedure ExcluirItemProduto(CodigoPedidoProduto: Integer);

      procedure AtualizarTotalPedido(NumeroPedido: Integer; ValorTotal: Double);

      Function ObterNumeroPedido(): Integer;
  end;

implementation

{ TControllerPedidos }

procedure TControllerPedidos.AtualizarTotalPedido(NumeroPedido: Integer; ValorTotal: Double);
var
  ObjDAOPedidos: TDAOPedidos;
begin
  ObjDAOPedidos := TDAOPedidos.create();

  ObjDAOPedidos.AtualizarTotalPedido(NumeroPedido, ValorTotal);

end;

procedure TControllerPedidos.Excluir(NumeroPedido: Integer);
var
  ObjDAOPedidos: TDAOPedidos;
begin
  ObjDAOPedidos := TDAOPedidos.create();

  ObjDAOPedidos.Excluir(NumeroPedido);
end;

procedure TControllerPedidos.ExcluirItemProduto(CodigoPedidoProduto: Integer);
var
  ObjDAOPedidos: TDAOPedidos;
begin
  ObjDAOPedidos := TDAOPedidos.create();

  ObjDAOPedidos.ExcluirItemProduto(CodigoPedidoProduto);

end;

procedure TControllerPedidos.Inserir(const ObjetoPedido: TPedidos);
var
  ObjDAOPedidos: TDAOPedidos;
begin
  ObjDAOPedidos := TDAOPedidos.create();

  ObjDAOPedidos.Inserir(ObjetoPedido);
end;

function TControllerPedidos.ObterNumeroPedido: Integer;
Var
  ObjDAOPedido: TDAOPedidos;
begin
  ObjDAOPedido := TDAOPedidos.Create();
  Result := ObjDAOPedido.ObterNumeroPedido();
end;



end.
