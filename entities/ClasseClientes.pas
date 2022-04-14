unit ClasseClientes;

interface

uses Dialogs;

Type
  TClientes = Class
    private
      FCodigo: integer;
      FNome: string;
      FCidade: string;
      FUF: string;
  public
    constructor Create;
    procedure Salvar(const objetoCliente: TClientes);

    // propriedades da classe (semelhante aos getters and setters)
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Cidade: string read FCidade write FCidade;
    property UF: string read FUF write FUF;
  end;

implementation

uses
  SysUtils;

{ TClientes }

constructor TClientes.Create;
begin

end;

procedure TClientes.Salvar(const objetoCliente: TClientes);
begin

end;

end.
