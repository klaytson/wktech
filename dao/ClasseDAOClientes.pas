unit ClasseDAOClientes;

interface

Uses ClasseClientes, DB, dialogs;

Type
  TDAOClientes = class

    public
      function Consultar(nomeCliente: String): TClientes;
  end;

implementation

Uses uDmPrincipal;

{ DAOClientes }

function TDAOClientes.Consultar(nomeCliente: String): TClientes;
var
  Cliente: TClientes;
begin
  Cliente := TClientes.Create();

    With DmPrincipal.QryClientes Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CODIGO, NOME, CIDADE, UF FROM CLIENTES ' +
        'WHERE NOME LIKE :NOME');

      ParamByName('NOME').AsString := '%' + nomeCliente + '%';

      try
        Open;

        With cliente Do
        begin
          Codigo := FieldByName('CODIGO').AsInteger;
          Nome := FieldByName('NOME').AsString;
          Cidade := FieldByName('CIDADE').AsString;
          UF := FieldByName('UF').AsString;
        end;

        Result := cliente;
      Except on EdatabaseError Do
        MessageDlg('Houve um erro na consulta.', MtWarning, [MbOk], 0);
      end;
  end;
end;

end.
