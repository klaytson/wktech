object DMPrincipal: TDMPrincipal
  OldCreateOrder = False
  Height = 264
  Width = 340
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
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from produtos')
    Left = 232
    Top = 148
    object FDQuery1Codigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      ProviderFlags = [pfInWhere, pfInKey]
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
end