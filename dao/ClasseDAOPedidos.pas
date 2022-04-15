unit ClasseDAOPedidos;

interface

Uses ClassePedidos, UDMPrincipal, System.SysUtils;

Type
  TDAOPedidos = class

    public
      procedure Inserir(pedidos: TPedidos);
      procedure Salvar(pedidos: TPedidos);
      procedure Excluir(NumeroPedido: Integer);
      procedure ExcluirItemProduto(CodigoPedidoProduto: Integer);
      Function ObterNumeroPedido(): Integer;
  end;

implementation

{ DAOClientes }

procedure TDAOPedidos.Excluir(NumeroPedido: Integer);
begin
  With DmPrincipal.QryAux Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PEDIDOS_PRODUTOS WHERE NUMEROPEDIDO =:NumeroPedido');
      ParamByName('NumeroPedido').Value := NumeroPedido;
      ExecSQL;

      SQL.Clear;
      SQL.Add('DELETE FROM pedidos_dados_gerais WHERE NUMEROPEDIDO =:NumeroPedido');
      ParamByName('NumeroPedido').Value := NumeroPedido;
      ExecSQL;
    end;
end;

procedure TDAOPedidos.ExcluirItemProduto(CodigoPedidoProduto: Integer);
begin
  With DmPrincipal.QryAux Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PEDIDOS_PRODUTOS WHERE CODIGOPEDIDOSPRODUTOS =:codigopedidoproduto');
      ParamByName('codigopedidoproduto').Value := CodigoPedidoProduto;
      ExecSQL;
    end;

    DMPrincipal.QryPedidosProdutos.Close;
    DMPrincipal.QryPedidosProdutos.Open;
end;

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
      SQL.Add('UPDATE INTO `wktech`.`pedidos_dados_gerais` (`DataEmissao`, `CodigoCliente`, `ValorTotal`) VALUES (:DTEMISSAO, :COD, :TOTAL)');

      ParamByName('DTEMISSAO').Value := FormatDateTime('yyyy-mm-dd', objPedido.DataEmissao);
      ParamByName('COD').AsInteger := objPedido.CodigoCliente;
      ParamByName('TOTAL').Value := objPedido.ValorTotal;
      ExecSQL;
    end;

end;

end.
