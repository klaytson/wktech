object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
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
  object Button1: TButton
    Left = 552
    Top = 362
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object btnNovoPedido: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Novo Pedido'
    TabOrder = 1
    OnClick = btnNovoPedidoClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 44
    Width = 624
    Height = 89
    Caption = ' PEDIDO: '
    TabOrder = 2
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
end