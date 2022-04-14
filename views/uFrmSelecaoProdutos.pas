unit uFrmSelecaoProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmSelecaoProdutos = class(TForm)
    Label1: TLabel;
    EdtNomeProduto: TEdit;
    BtnSelecionar: TButton;
    Button1: TButton;
    DBGrid1: TDBGrid;
    procedure BtnSelecionarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecaoProdutos: TFrmSelecaoProdutos;

implementation

Uses uFrmMain, ControllerProdutos;

{$R *.dfm}


procedure TFrmSelecaoProdutos.BtnSelecionarClick(Sender: TObject);
begin
  FrmMain.Panel2.Visible := True;
end;

procedure TFrmSelecaoProdutos.Button1Click(Sender: TObject);
Var
  ControllerProduto: TControllerProdutos;
begin
  ControllerProduto := TControllerProdutos.create();
  ControllerProduto.Consultar(EdtNomeProduto.Text);
end;

end.