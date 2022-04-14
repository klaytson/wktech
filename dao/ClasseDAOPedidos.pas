unit ClasseDAOPedidos;

interface

Uses ClassePedidos, UDMPrincipal, System.SysUtils;

Type
  TDAOPedidos = class

    public
      procedure Inserir(pedidos: TPedidos);
      procedure Salvar(pedidos: TPedidos);
      Function ObterNumeroPedido(): Integer;
  end;

implementation

{ DAOClientes }

procedure TDAOPedidos.Inserir(pedidos: TPedidos);
Var
  objPedido: TPedidos;
  codigopedido: integer;
begin
  objPedido := TPedidos.Create();
  objPedido := pedidos;

  With DmPrincipal.QryAux Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO `wktech`.`pedidos_dados_gerais` (`DataEmissao`, `CodigoCliente`, `ValorTotal`) VALUES (:DTEMISSAO, :COD, :TOTAL)');

      ParamByName('DTEMISSAO').Value := FormatDateTime('yyyy-mm-dd', objPedido.DataEmissao);
      ParamByName('COD').AsInteger := objPedido.CodigoCliente;
      ParamByName('TOTAL').Value := objPedido.ValorTotal;
      ExecSQL;
    end;
end;

function TDAOPedidos.ObterNumeroPedido: Integer;
begin
  With DmPrincipal.QryAux Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NUMEROPEDIDO FROM wktech.pedidos_dados_gerais ORDER BY NUMEROPEDIDO DESC LIMIT 1');
      Open;

      Result := FieldByName('NUMEROPEDIDO').AsInteger;
    end;
end;

procedure TDAOPedidos.Salvar(pedidos: TPedidos);
begin

end;

end.
