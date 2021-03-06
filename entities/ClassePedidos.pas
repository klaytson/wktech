unit ClassePedidos;

interface

uses Dialogs;

Type
  TPedidos = Class
    private
      FNumeroPedido: Integer;
      FDataEmissao: TDate;
      FCodigoCliente: Integer;
      FValorTotal: Double;

  public
    constructor Create;

    property NumeroPedido: Integer read FNumeroPedido write FNumeroPedido;
    property DataEmissao: TDate read FDataEmissao write FDataEmissao;
    property CodigoCliente: Integer read FCodigoCliente write FCodigoCliente;
    property ValorTotal: Double read FValorTotal write FValorTotal;
  end;

implementation

uses
  SysUtils;

{ TPedidos }

constructor TPedidos.Create;
begin

end;



end.
