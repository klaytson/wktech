object FrmSelecaoCliente: TFrmSelecaoCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar Cliente'
  ClientHeight = 248
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 131
    Height = 13
    Caption = 'Informe o nome do Cliente:'
  end
  object GridClientes: TDBGrid
    Left = 8
    Top = 51
    Width = 566
    Height = 162
    DataSource = DMPrincipal.DtsClientes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object EdtNomeCliente: TEdit
    Left = 8
    Top = 24
    Width = 269
    Height = 21
    TabOrder = 1
  end
  object BtnSelecionar: TButton
    Left = 454
    Top = 219
    Width = 122
    Height = 25
    Caption = '&Selecionar Cliente'
    TabOrder = 2
    OnClick = BtnSelecionarClick
  end
  object Button1: TButton
    Left = 285
    Top = 20
    Width = 149
    Height = 25
    Caption = '&Consultar Cliente'
    TabOrder = 3
    OnClick = Button1Click
  end
end
