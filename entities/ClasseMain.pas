unit ClasseMain;

interface

uses Dialogs;

Type
  TMain = Class
    private
      FNumeroPedido: integer;
      FDataEmissao: TDate;
      FCodigoCliente: integer;
      FNome: string;
      FDescricao: string;
      FQuantidade: integer;
      FValorUnitario: double;
      FSubTotal: Double;
      FValorTotal: double;

  public
    constructor Create;

    // propriedades da classe (semelhante aos getters and setters)
    property NumeroPedido: integer read FNumeroPedido write FNumeroPedido;
    property DataEmissao: TDate read FDataEmissao write FDataEmissao;
    property CodigoCliente: integer read FCodigoCliente write FCodigoCliente;
    property Nome: string read FNome write FNome;
    property Descricao: string read FDescricao write FDescricao;
    property Quantidade: integer read FQuantidade write FQuantidade;
    property ValorUnitario: double read FValorUnitario write FValorUnitario;
    property SubTotal: double read FSubTotal write FSubTotal;
    property ValorTotal: double read FValorTotal write FValorTotal;
  end;

implementation

uses
  SysUtils;

{ TMain }

constructor TMain.Create;
begin

end;

end.
