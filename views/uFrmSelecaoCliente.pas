unit uFrmSelecaoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, ClasseClientes, ClassePedidos;

type
  TFrmSelecaoCliente = class(TForm)
    GridClientes: TDBGrid;
    Label1: TLabel;
    EdtNomeCliente: TEdit;
    BtnSelecionar: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecaoCliente: TFrmSelecaoCliente;
  ObjPedido: TPedidos;
  objCliente: TClientes;

implementation

Uses ClasseDAOPedidos, ControllerClientes, ControllerPedidos, uDMPrincipal, uFrmMain;

{$R *.dfm}

procedure TFrmSelecaoCliente.BtnSelecionarClick(Sender: TObject);
Var
  //ObjPedido: TPedidos;
  ObjControllerPedido: TControllerPedidos;
begin
  ObjPedido := TPedidos.Create();
  ObjPedido.CodigoCliente := GridClientes.Columns[0].Field.Value;
  ObjPedido.DataEmissao := Date();
  ObjPedido.ValorTotal := 0.0;

  objCliente.Nome := GridClientes.Columns[1].Field.Value;
  objCliente.Codigo := GridClientes.Columns[0].Field.Value;

  ObjControllerPedido := TControllerPedidos.Create();
  ObjControllerPedido.Inserir(ObjPedido);

  Close;
end;

procedure TFrmSelecaoCliente.Button1Click(Sender: TObject);
Var
  ControllerCliente: TControllerClientes;
begin
  objCliente := TClientes.Create();

  ControllerCliente := TControllerClientes.Create();
  objCliente :=  ControllerCliente.Consultar(EdtNomeCliente.Text);
end;

procedure TFrmSelecaoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
  ControllerPedido: TControllerPedidos;
begin
  FrmMain.EdtCodigoCliente.Text := IntToStr(ObjCliente.Codigo);
  FrmMain.EdtNomeCliente.Text := objCliente.Nome;
  FrmMain.EdtDataEmissao.Text := DateTimeToStr(Date());
  FrmMain.EdtNumeroPedido.Text := IntToStr(ControllerPedido.ObterNumeroPedido());
  FrmMain.BtnSelecao.Visible := True;
end;

procedure TFrmSelecaoCliente.FormShow(Sender: TObject);
begin
  EdtNomeCliente.SetFocus;
end;

end.
