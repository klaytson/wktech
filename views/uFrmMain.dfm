object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmMain'
  ClientHeight = 637
  ClientWidth = 640
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
    Width = 624
    Height = 89
    Caption = ' PEDIDO: '
    TabOrder = 1
    object LblCodigo: TLabel
      Left = 44
      Top = 70
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblNomeCliente: TLabel
      Left = 95
      Top = 70
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 398
      Top = 20
      Width = 92
      Height = 13
      Caption = 'Emiss'#227'o do Pedido:'
    end
    object Label2: TLabel
      Left = 432
      Top = 60
      Width = 58
      Height = 13
      Caption = 'Valor Total: '
    end
    object LblNumeroPedido: TLabel
      Left = 81
      Top = 17
      Width = 82
      Height = 13
      Caption = 'LblNumeroPedido'
    end
    object Label3: TLabel
      Left = 21
      Top = 17
      Width = 54
      Height = 13
      Caption = 'Pedido N'#186': '
    end
    object Label4: TLabel
      Left = 20
      Top = 52
      Width = 63
      Height = 13
      Caption = 'Cod. Cliente:'
    end
    object Label5: TLabel
      Left = 96
      Top = 52
      Width = 82
      Height = 13
      Caption = 'Nome do Cliente:'
    end
    object EdtDataEmissao: TEdit
      Left = 496
      Top = 17
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object EdtValorTotal: TEdit
      Left = 496
      Top = 56
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 139
    Width = 624
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
    object DBGrid1: TDBGrid
      Left = 3
      Top = 203
      Width = 614
      Height = 189
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Panel2: TPanel
      Left = 20
      Top = 51
      Width = 601
      Height = 130
      TabOrder = 3
      Visible = False
      object Label6: TLabel
        Left = 8
        Top = 2
        Width = 51
        Height = 13
        Caption = 'Pedido N'#186':'
      end
      object Label7: TLabel
        Left = 93
        Top = 2
        Width = 68
        Height = 13
        Caption = 'Cod. Produto:'
      end
      object Label8: TLabel
        Left = 222
        Top = 2
        Width = 42
        Height = 13
        Caption = 'Produto:'
      end
      object Label9: TLabel
        Left = 8
        Top = 45
        Width = 60
        Height = 13
        Caption = 'Quantidade:'
      end
      object Label10: TLabel
        Left = 110
        Top = 45
        Width = 68
        Height = 13
        Caption = 'Valor Unit'#225'rio:'
      end
      object Label11: TLabel
        Left = 237
        Top = 45
        Width = 55
        Height = 13
        Caption = 'Valor Total:'
      end
      object Edit1: TEdit
        Left = 8
        Top = 18
        Width = 72
        Height = 21
        Enabled = False
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 94
        Top = 18
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 1
        Text = 'Edit2'
      end
      object Edit3: TEdit
        Left = 221
        Top = 18
        Width = 270
        Height = 21
        Enabled = False
        TabOrder = 2
        Text = 'Edit3'
      end
      object Edit4: TEdit
        Left = 8
        Top = 64
        Width = 89
        Height = 21
        TabOrder = 3
        Text = 'Edit4'
      end
      object Edit5: TEdit
        Left = 110
        Top = 64
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'Edit5'
      end
      object Edit6: TEdit
        Left = 237
        Top = 64
        Width = 89
        Height = 21
        TabOrder = 5
        Text = 'Edit4'
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
end
