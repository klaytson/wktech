unit ClasseDAOProdutos;

interface

Uses ClasseProdutos, DB, Dialogs;

Type
  TDAOProdutos = class

    public
      function Consultar(Produto: String): TProdutos;
  end;

implementation

Uses uDMPrincipal;

{ DAOClientes }

function TDAOProdutos.Consultar(Produto: String): TProdutos;
var
  ObjProduto: TProdutos;
begin
  ObjProduto := TProdutos.Create();

  With DmPrincipal.QryProdutos Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CODIGO, DESCRICAO, PRECOVENDA FROM PRODUTOS ' +
        'WHERE DESCRICAO LIKE :DESC');

      ParamByName('DESC').AsString := '%' + Produto + '%';

      Try
        Open;

          With ObjProduto Do
          begin
            Codigo := FieldByName('CODIGO').AsInteger;
            Descricao := FieldByName('DESCRICAO').AsString;
            PrecoVenda := FieldByName('PRECOVENDA').AsString;
          end;
      Except
        On EDatabaseerror Do
          MessageDlg('N?o foi poss?vel consultar produtos', MtWarning, [MbOk], 0);
      End;
    end;

    Result := ObjProduto;

end;

end.
