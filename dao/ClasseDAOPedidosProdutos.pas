unit ClasseDAOPedidosProdutos;

interface

Uses ClassePedidosProdutos, UDMPrincipal, System.SysUtils;

Type
  TDAOPedidosProdutos = class

    public
      procedure Inserir(PedidosProdutos: TPedidosProdutos);
      procedure Salvar(PedidosProdutos: TPedidosProdutos);
      Function ObterNumeroPedido(): Integer;
  end;

implementation

{ DAOClientes }

procedure TDAOPedidosProdutos.Inserir(pedidosProdutos: TPedidosProdutos);
Var
  objPedidosProdutos: TPedidosProdutos;
  codigopedido: integer;
begin
  objPedidosProdutos := TPedidosProdutos.Create();
  objPedidosProdutos := pedidosProdutos;

  With DmPrincipal.QryAux Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO `wktech`.`pedidos_produtos` (`NUMEROPEDIDO`, `CODIGOPRODUTO`, `QUANTIDADE`, `VALORUNITARIO`, `VALORTOTAL`) ' +
      ' VALUES (:pedido, :cod, :quantidade, :unitario, :total)');

      ParamByName('pedido').Value := objPedidosProdutos.NumeroPedido;
      ParamByName('cod').AsInteger := objPedidosProdutos.CodigoProduto;
      ParamByName('quantidade').Value := objPedidosProdutos.Quantidade;
      ParamByName('unitario').value := objPedidosProdutos.ValorUnitario;
      ParamByName('total').Value := objPedidosProdutos.ValorTotal;
      ExecSQL;
    end;
end;

function TDAOPedidosProdutos.ObterNumeroPedido: Integer;
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

procedure TDAOPedidosProdutos.Salvar(PedidosProdutos: TPedidosProdutos);
begin

end;

end.