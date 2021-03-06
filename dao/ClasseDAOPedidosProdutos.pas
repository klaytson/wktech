unit ClasseDAOPedidosProdutos;

interface

Uses ClassePedidosProdutos, UDMPrincipal, System.SysUtils, ClasseMain;

Type
  TDAOPedidosProdutos = class

    public
      procedure Inserir(PedidosProdutos: TPedidosProdutos);
      procedure Atualizar(PedidosProdutos: TPedidosProdutos);
      procedure Salvar(PedidosProdutos: TPedidosProdutos);
      Function ObterNumeroPedido(): Integer;
      function obterSomatorioPedido(NumeroPedido: Integer): Double;
      function Abrir(NumeroPedido: Integer): TMain;
  end;

implementation

{ TDAOPedidosProdutos }

function TDAOPedidosProdutos.Abrir(NumeroPedido: Integer): TMain;
var
  ObjMain: TMain;
begin
  ObjMain := TMain.Create();

    With DmPrincipal.QryPedidosProdutos Do
    begin
      Close;
      Params[0].Value := NumeroPedido;
      Open;

      ObjMain.NumeroPedido := FieldByName('NumeroPedido').asInteger;
      ObjMain.DataEmissao := FieldByName('DataEmissao').AsDateTime;
      ObjMain.CodigoCliente := FieldByName('CodigoCliente').AsInteger;
      ObjMain.Nome := FieldByName('Nome').AsString;
      ObjMain.Descricao := FieldByName('Descricao').AsString;
      ObjMain.Quantidade := FieldByName('Quantidade').AsInteger;
      ObjMain.ValorUnitario := FieldByName('ValorUnitario').AsExtended;
      ObjMain.ValorTotal := FieldByName('ValorTotal').AsExtended;

      Result := ObjMain;
    end;
end;

procedure TDAOPedidosProdutos.Atualizar(PedidosProdutos: TPedidosProdutos);
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
      SQL.Add('UPDATE `wktech`.`pedidos_produtos` SET `Quantidade` =:Quantidade, ' +
      ' `ValorUnitario` =:ValorUnitario, `ValorTotal` =:ValorTotal WHERE (`CodigoPedidosProdutos` =:CodigoPedidosProdutos)');

      ParamByName('Quantidade').Value := objPedidosProdutos.Quantidade;
      ParamByName('ValorUnitario').AsFloat := objPedidosProdutos.ValorUnitario;
      ParamByName('ValorTotal').Value := objPedidosProdutos.ValorTotal;
      ParamByName('CodigoPedidosProdutos').value := objPedidosProdutos.CodigoPedidosProdutos;

      ExecSQL;
    end;

end;

procedure TDAOPedidosProdutos.Inserir(pedidosProdutos: TPedidosProdutos);
Var
  objPedidosProdutos: TPedidosProdutos;
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

function TDAOPedidosProdutos.obterSomatorioPedido(
  NumeroPedido: Integer): Double;
begin
    With DmPrincipal.QryAux Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select sum(valortotal)as totalpedido from pedidos_produtos where numeropedido =:NumeroPedido');
      ParamByname('NumeroPedido').AsInteger := NumeroPedido;
      Open;

      Result := FieldByName('totalpedido').AsExtended;
    end;
end;

procedure TDAOPedidosProdutos.Salvar(PedidosProdutos: TPedidosProdutos);
begin

end;

end.
