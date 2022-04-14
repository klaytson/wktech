unit ControllerProdutos;

interface

Uses ClasseProdutos, ClasseDAOProdutos, Sysutils;

Type
  TControllerProdutos = class
    public
      procedure Salvar(const ObjetoProduto: TProdutos);
      procedure Inserir(const ObjetoProduto: TProdutos);

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

procedure TControllerProdutos.Inserir(const ObjetoProduto: TProdutos);
var
  ObjDAOProduto: TDAOProdutos;
begin
  ObjDAOProduto := TDAOProdutos.create();

  ObjDAOProduto.Inserir(ObjetoProduto);
end;

procedure TControllerProdutos.Salvar(const ObjetoProduto: TProdutos);
var
  ObjDAOProduto: TDAOProdutos;
begin
  Try
    ObjDAOProduto := TDAOProdutos.create();

    ObjDAOProduto.Salvar(ObjetoProduto);
  Finally
    FreeAndNil(ObjetoProduto);
  End;

end;

end.
