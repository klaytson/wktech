unit ControllerClientes;

interface

Uses ClasseClientes, ClasseDAOClientes, Sysutils;

Type
  TControllerClientes = class
    public

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

end.
