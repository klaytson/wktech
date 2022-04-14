unit ControllerProdutos;

interface

Uses ClasseProdutos, ClasseDAOProdutos, Sysutils;

Type
  TControllerProdutos = class
    public
      function Consultar(Produto: String): TProdutos;
  end;

implementation

{ TControllerPedidos }

function TControllerProdutos.Consultar(Produto: String): TProdutos;
Var
  ObjDAOProduto: TDAOProdutos;
begin
  ObjDAOProduto := TDAOProdutos.Create();

  Result := ObjDAOProduto.Consultar(Produto);
end;


end.
