unit ControllerPedidos;

interface

Uses ClassePedidos, ClasseDAOPedidos, Sysutils;

Type
  TControllerPedidos = class
    public
      procedure Salvar(const ObjetoPedido: TPedidos);
      procedure Inserir(const ObjetoPedido: TPedidos);
      Function ObterNumeroPedido(): Integer;
  end;

implementation

{ TControllerPedidos }

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

procedure TControllerPedidos.Salvar(const ObjetoPedido: TPedidos);
var
  ObjDAOPedido: TDAOPedidos;
begin
  Try
    ObjDAOPedido := TDAOPedidos.create();

    ObjDAOPedido.Salvar(ObjetoPedido);
  Finally
    FreeAndNil(ObjDAOPedido);
  End;

end;

end.