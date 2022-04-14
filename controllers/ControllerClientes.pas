unit ControllerClientes;

interface

Uses ClasseClientes, ClasseDAOClientes, Sysutils;

Type
  TControllerClientes = class
    public
      procedure Salvar(const ObjetoCliente: TClientes);
      procedure Inserir(const ObjetoCliente: TClientes);
      function Consultar(nomeCliente: String): TClientes;
  end;

implementation

{ TControllerClientes }

function TControllerClientes.Consultar(nomeCliente: String): TClientes;
var
  ObjDAOCliente: TDAOClientes;
begin
  ObjDAOCliente := TDAOClientes.create();

  Result := ObjDAOCliente.Consultar(nomeCliente);
end;

procedure TControllerClientes.Inserir(const ObjetoCliente: TClientes);
var
  ObjDAOCliente: TDAOClientes;
begin
  Try
    ObjDAOCliente := TDAOClientes.create();

    ObjDAOCliente.Inserir(ObjetoCliente);
  Finally
    FreeAndNil(ObjDAOCliente);

  End;

end;

procedure TControllerClientes.Salvar(const ObjetoCliente: TClientes);
var
  ObjDAOCliente: TDAOClientes;
begin
  Try
    ObjDAOCliente := TDAOClientes.create();

    ObjDAOCliente.Salvar(ObjetoCliente);
  Finally
    FreeAndNil(ObjDAOCliente);
  End;

end;

end.
