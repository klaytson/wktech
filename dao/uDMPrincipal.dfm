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
      
        'SELECT pp.CodigoPedidosProdutos, pdg.NumeroPedido, pdg.DataEmiss' +
        'ao, pdg.CodigoCliente, clie.nome, pp.CodigoProduto, prod.Descric' +
        'ao, pp.Quantidade, pp.ValorUnitario, pp.ValorTotal as subtotal ,' +
        'pdg.ValorTotal FROM wktech.pedidos_produtos pp'#10'inner join pedido' +
        's_dados_gerais pdg on pdg.NumeroPedido = pp.NumeroPedido'#10'inner j' +
        'oin clientes clie on clie.Codigo = pdg.CodigoCliente'#10'inner join ' +
        'produtos prod on prod.Codigo = pp.CodigoProduto '#10'where pp.Numero' +
        'Pedido =?')
    Left = 512
    Top = 92
    ParamData = <
      item
        Position = 1
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
        Value = Null
      end>
    object QryPedidosProdutosCodigoPedidosProdutos: TFDAutoIncField
      FieldName = 'CodigoPedidosProdutos'
      Origin = 'CodigoPedidosProdutos'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QryPedidosProdutosNumeroPedido: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NumeroPedido'
      Origin = 'NumeroPedido'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryPedidosProdutosDataEmissao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DataEmissao'
      Origin = 'DataEmissao'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryPedidosProdutosCodigoCliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CodigoCliente'
      Origin = 'CodigoCliente'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryPedidosProdutosnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'Nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 145
    end
    object QryPedidosProdutosCodigoProduto: TIntegerField
      FieldName = 'CodigoProduto'
      Origin = 'CodigoProduto'
      Required = True
    end
    object QryPedidosProdutosDescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descricao'
      Origin = 'Descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
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
    object QryPedidosProdutossubtotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'subtotal'
      Origin = 'ValorTotal'
    end
    object QryPedidosProdutosValorTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ValorTotal'
      Origin = 'ValorTotal'
    end
  end
  object DtsPedidosProdutos: TDataSource
    DataSet = QryPedidosProdutos
    Left = 508
    Top = 156
  end
end
