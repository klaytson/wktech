object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  Height = 264
  Width = 690
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=wktech'
      'User_Name=root'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=MySQL')
    TxOptions.AutoStop = False
    Connected = True
    Left = 240
    Top = 44
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from produtos')
    Left = 232
    Top = 148
    object FDQuery1Codigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 120
    end
    object FDQuery1PrecoVenda: TFloatField
      FieldName = 'PrecoVenda'
      Origin = 'PrecoVenda'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 236
    Top = 208
  end
  object QryAux: TFDQuery
    Connection = FDConnection
    Left = 60
    Top = 76
  end
  object QryClientes: TFDQuery
    Connection = FDConnection
    Left = 48
    Top = 156
  end
  object DtsClientes: TDataSource
    AutoEdit = False
    DataSet = QryClientes
    Left = 48
    Top = 208
  end
  object QryProdutos: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 140
    Top = 96
  end
  object DtsProdutos: TDataSource
    AutoEdit = False
    DataSet = QryProdutos
    Left = 140
    Top = 148
  end
  object QryPedidosProdutos: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM PEDIDOS_PRODUTOS')
    Left = 512
    Top = 92
    object QryPedidosProdutosCodigoPedidosProdutos: TFDAutoIncField
      FieldName = 'CodigoPedidosProdutos'
      Origin = 'CodigoPedidosProdutos'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QryPedidosProdutosNumeroPedido: TIntegerField
      FieldName = 'NumeroPedido'
      Origin = 'NumeroPedido'
      Required = True
    end
    object QryPedidosProdutosCodigoProduto: TIntegerField
      FieldName = 'CodigoProduto'
      Origin = 'CodigoProduto'
      Required = True
    end
    object QryPedidosProdutosQuantidade: TIntegerField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
    object QryPedidosProdutosValorUnitario: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ValorUnitario'
      Origin = 'ValorUnitario'
    end
    object QryPedidosProdutosValorTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ValorTotal'
      Origin = 'ValorTotal'
    end
    object QryPedidosProdutosNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = QryProdutos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'CodigoProduto'
      Size = 250
      Lookup = True
    end
  end
  object DtsPedidosProdutos: TDataSource
    AutoEdit = False
    DataSet = QryPedidosProdutos
    Left = 508
    Top = 156
  end
end
