unit uDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDMPrincipal = class(TDataModule)
    FDConnection: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1Codigo: TFDAutoIncField;
    FDQuery1Descricao: TStringField;
    FDQuery1PrecoVenda: TFloatField;
    QryAux: TFDQuery;
    QryClientes: TFDQuery;
    DtsClientes: TDataSource;
    QryProdutos: TFDQuery;
    DtsProdutos: TDataSource;
    QryPedidosProdutos: TFDQuery;
    DtsPedidosProdutos: TDataSource;
    QryPedidosProdutosCodigoPedidosProdutos: TFDAutoIncField;
    QryPedidosProdutosNumeroPedido: TIntegerField;
    QryPedidosProdutosDataEmissao: TDateTimeField;
    QryPedidosProdutosCodigoCliente: TIntegerField;
    QryPedidosProdutosnome: TStringField;
    QryPedidosProdutosCodigoProduto: TIntegerField;
    QryPedidosProdutosDescricao: TStringField;
    QryPedidosProdutosQuantidade: TIntegerField;
    QryPedidosProdutosValorUnitario: TFloatField;
    QryPedidosProdutosValorTotal: TFloatField;
    QryPedidosProdutossubtotal: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
