object FrmSelecaoProdutos: TFrmSelecaoProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar Produtos'
  ClientHeight = 250
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 92
    Height = 13
    Caption = 'Informe o Produto:'
  end
  object EdtNomeProduto: TEdit
    Left = 8
    Top = 24
    Width = 269
    Height = 21
    TabOrder = 0
  end
  object BtnSelecionar: TButton
    Left = 454
    Top = 219
    Width = 122
    Height = 25
    Caption = '&Selecionar Produto'
    TabOrder = 1
    OnClick = BtnSelecionarClick
  end
  object Button1: TButton
    Left = 283
    Top = 20
    Width = 149
    Height = 25
    Caption = '&Consultar Produto'
    TabOrder = 2
    OnClick = Button1Click
  end
  object GridProdutos: TDBGrid
    Left = 8
    Top = 51
    Width = 568
    Height = 162
    DataSource = DMPrincipal.DtsProdutos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Caption = 'Descri'#231#227'o dos Produtos'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrecoVenda'
        Title.Caption = 'Pre'#231'o de Venda'
        Visible = True
      end>
  end
end
