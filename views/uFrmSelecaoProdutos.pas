unit uFrmSelecaoProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, ClasseProdutos;

type
  TFrmSelecaoProdutos = class(TForm)
    Label1: TLabel;
    EdtNomeProduto: TEdit;
    BtnSelecionar: TButton;
    Button1: TButton;
    GridProdutos: TDBGrid;
    procedure BtnSelecionarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecaoProdutos: TFrmSelecaoProdutos;
  Produto: TProdutos;

implementation

Uses uFrmMain, ControllerProdutos;

{$R *.dfm}


procedure TFrmSelecaoProdutos.BtnSelecionarClick(Sender: TObject);
begin
  FrmMain.Panel2.Visible := True;

  Produto := TProdutos.Create();
  Produto.Codigo := GridProdutos.Columns[0].Field.Value;
  Produto.Descricao := GridProdutos.Columns[1].Field.Value;
  Produto.PrecoVenda := GridProdutos.Columns[2].Field.Value;

  Close;
end;

procedure TFrmSelecaoProdutos.Button1Click(Sender: TObject);
Var
  ControllerProduto: TControllerProdutos;
begin
  Produto := TProdutos.Create();

  ControllerProduto := TControllerProdutos.create();
  ControllerProduto.Consultar(EdtNomeProduto.Text);
end;

procedure TFrmSelecaoProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmMain.Edit2.Text := IntToStr(Produto.Codigo);
  FrmMain.Edit3.Text := Produto.Descricao;
  FrmMain.Edit5.Text := Produto.PrecoVenda;
  FrmMain.Edit1.Text := FrmMain.EdtNumeroPedido.Text;
  FrmMain.Edit6.Text := Produto.PrecoVenda;
end;

end.
