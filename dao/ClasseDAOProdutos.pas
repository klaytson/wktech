unit ClasseDAOProdutos;

interface

Uses ClasseProdutos;

Type
  DAOClientes = class

    public
      procedure Salvar(Cliente: TProdutos);
      function Consultar(Produto: TProdutos): TProdutos;
  end;

implementation

{ DAOClientes }

function DAOClientes.Consultar(Produto: TProdutos): TProdutos;
begin

end;

procedure DAOClientes.Salvar(Cliente: TProdutos);
begin

end;

end.
