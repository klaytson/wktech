object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'WKTech - Teste Klaytson Pereira'
  ClientHeight = 599
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnNovoPedido: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Novo Pedido'
    TabOrder = 0
    OnClick = btnNovoPedidoClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 44
    Width = 525
    Height = 114
    Caption = ' PEDIDO: '
    TabOrder = 1
    object Label1: TLabel
      Left = 148
      Top = 21
      Width = 107
      Height = 13
      Caption = 'Emiss'#227'o do Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 384
      Top = 65
      Width = 67
      Height = 13
      Caption = 'Valor Total: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 21
      Width = 60
      Height = 13
      Caption = 'Pedido N'#186': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 20
      Top = 65
      Width = 69
      Height = 13
      Caption = 'Cod. Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 96
      Top = 65
      Width = 94
      Height = 13
      Caption = 'Nome do Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtDataEmissao: TEdit
      Left = 147
      Top = 38
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object EdtValorTotal: TEdit
      Left = 383
      Top = 81
      Width = 128
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object EdtNumeroPedido: TEdit
      Left = 20
      Top = 38
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object EdtCodigoCliente: TEdit
      Left = 21
      Top = 81
      Width = 69
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object EdtNomeCliente: TEdit
      Left = 96
      Top = 81
      Width = 281
      Height = 21
      Enabled = False
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 163
    Width = 525
    Height = 398
    Caption = '  ITENS DO PEDIDO: '
    TabOrder = 2
    object BtnSelecao: TButton
      Left = 13
      Top = 20
      Width = 132
      Height = 25
      Caption = 'Selecionar Produto'
      TabOrder = 0
      Visible = False
      OnClick = BtnSelecaoClick
    end
    object Panel1: TPanel
      Left = 3
      Top = 187
      Width = 614
      Height = 1
      TabOrder = 1
    end
    object GridProdutos: TDBGrid
      Left = 3
      Top = 206
      Width = 513
      Height = 189
      DataSource = DMPrincipal.DtsPedidosProdutos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = GridProdutosKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CodigoProduto'
          Title.Caption = 'Cod. Prod.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorUnitario'
          Title.Caption = 'Valor Unit'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'subtotal'
          Title.Caption = 'SubTotal'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodigoPedidosProdutos'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = False
        end>
    end
    object Panel2: TPanel
      Left = 20
      Top = 51
      Width = 565
      Height = 130
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object Label6: TLabel
        Left = 8
        Top = 2
        Width = 57
        Height = 13
        Caption = 'Pedido N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 86
        Top = 2
        Width = 75
        Height = 13
        Caption = 'Cod. Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 214
        Top = 2
        Width = 48
        Height = 13
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 45
        Width = 68
        Height = 13
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 86
        Top = 45
        Width = 80
        Height = 13
        Caption = 'Valor Unit'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 213
        Top = 45
        Width = 64
        Height = 13
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 8
        Top = 18
        Width = 72
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 86
        Top = 18
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 213
        Top = 18
        Width = 278
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 8
        Top = 61
        Width = 72
        Height = 21
        TabOrder = 3
        Text = '1'
        OnExit = Edit4Exit
      end
      object Edit5: TEdit
        Left = 86
        Top = 61
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object Edit6: TEdit
        Left = 213
        Top = 61
        Width = 89
        Height = 21
        TabOrder = 5
      end
      object BtnConfirmar: TButton
        Left = 8
        Top = 94
        Width = 215
        Height = 25
        Caption = 'Confirmar Item'
        TabOrder = 6
        OnClick = BtnConfirmarClick
      end
    end
  end
  object BtnGravarPedido: TButton
    Left = 413
    Top = 567
    Width = 120
    Height = 25
    Caption = 'Gravar Pedido'
    TabOrder = 3
    OnClick = BtnGravarPedidoClick
  end
  object BtnVisualizarPedido: TButton
    Left = 89
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Visualizar Pedido'
    TabOrder = 4
    OnClick = BtnVisualizarPedidoClick
  end
  object BtnCancelarPedido: TButton
    Left = 192
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Cancelar Pedido'
    TabOrder = 5
    OnClick = BtnCancelarPedidoClick
  end
end
