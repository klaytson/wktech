unit ClasseDAOPedidos;

interface

Uses ClassePedidos, UDMPrincipal, System.SysUtils, DB, Dialogs;

Type
  TDAOPedidos = class

    public
      procedure Inserir(pedidos: TPedidos);
      procedure Excluir(NumeroPedido: Integer);
      procedure ExcluirItemProduto(CodigoPedidoProduto: Integer);

      procedure AtualizarTotalPedido(NumeroPedido: Integer; ValorTotal: Double);
      Function ObterNumeroPedido(): Integer;
  end;

implementation

{ DAOClientes }

procedure TDAOPedidos.AtualizarTotalPedido(NumeroPedido: Integer; ValorTotal: Double);
begin
    With DmPrincipal.QryAux Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE `wktech`.`pedidos_dados_gerais` SET `ValorTotal` =:total ' +
      ' WHERE (`NumeroPedido` =:NumeroPedido)');

      ParamByName('Total').Value := ValorTotal;
      ParamByName('NumeroPedido').value := NumeroPedido;

      Try
        ExecSQL;
      Except on EdatabaseError Do
        MessageDlg('Houve um erro na atualiza??o.', MtWarning, [MbOk], 0);
      End;
    end;
end;

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

      Try
        ExecSQL;
      Except On EDatabaseError Do
        MessageDlg('N?o foi poss?vel excluir o pedido.', MtWarning, [MbOk], 0);
      End;
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

      Try
        ExecSQL;
      Except
        MessageDlg('N?o foi poss?vel excluir o produto.', MtWarning, [MbOk], 0);
      End;
    end;

    DMPrincipal.QryPedidosProdutos.Close;
    DMPrincipal.QryPedidosProdutos.Open;
end;

procedure TDAOPedidos.Inserir(pedidos: TPedidos);
Var
  objPedido: TPedidos;
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
      Try
        ExecSQL;
      Except
        MessageDlg('N?o foi poss?vel criar novo pedido.', MtWarning, [MbOk], 0);
      End;
    end;
end;

function TDAOPedidos.ObterNumeroPedido: Integer;
begin
  With DmPrincipal.QryAux Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT NUMEROPEDIDO FROM wktech.pedidos_dados_gerais ORDER BY NUMEROPEDIDO DESC LIMIT 1');

      Try
        Open;

      Except
        on EdatabaseError Do
           MessageDlg('N?o foi poss?vel obter o n?mero do pedido.', MtWarning, [MbOk], 0);
      End;

      Result := FieldByName('NUMEROPEDIDO').AsInteger;
    end;
end;



end.
