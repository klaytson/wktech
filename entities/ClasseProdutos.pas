unit ClasseProdutos;

interface

uses Dialogs;

Type
  TProdutos = Class
    private
      FCodigo: integer;
      FDescricao: string;
      FPrecoVenda: string;

  public
    constructor Create;
    procedure Salvar(const objetoProduto: TProdutos);

    // propriedades da classe (semelhante aos getters and setters)
    property Codigo: integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property PrecoVenda: string read FPrecoVenda write FPrecoVenda;
  end;

implementation

uses
  SysUtils;

{ TProdutos }

constructor TProdutos.Create;
begin

end;

procedure TProdutos.Salvar(const objetoProduto: TProdutos);
begin

end;

end.
