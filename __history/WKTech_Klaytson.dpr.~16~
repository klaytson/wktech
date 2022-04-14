program WKTech_Klaytson;

uses
  Vcl.Forms,
  uFrmMain in 'views\uFrmMain.pas' {FrmMain},
  ClasseClientes in 'entities\ClasseClientes.pas',
  ClasseProdutos in 'entities\ClasseProdutos.pas',
  ClasseDAOClientes in 'dao\ClasseDAOClientes.pas',
  ClasseDAOProdutos in 'dao\ClasseDAOProdutos.pas',
  ControllerClientes in 'controllers\ControllerClientes.pas',
  ClasseDAOPedidos in 'dao\ClasseDAOPedidos.pas',
  ClassePedidos in 'entities\ClassePedidos.pas',
  uDMPrincipal in 'dao\uDMPrincipal.pas' {DMPrincipal: TDataModule},
  uFrmSelecaoCliente in 'views\uFrmSelecaoCliente.pas' {FrmSelecaoCliente},
  ControllerPedidos in 'controllers\ControllerPedidos.pas',
  ClasseDAO in 'dao\ClasseDAO.pas',
  ControllerDAO in 'controllers\ControllerDAO.pas',
  ClassePedidosProdutos in 'entities\ClassePedidosProdutos.pas',
  uFrmSelecaoProdutos in 'views\uFrmSelecaoProdutos.pas' {FrmSelecaoProdutos},
  ControllerPedidosProdutos in 'controllers\ControllerPedidosProdutos.pas',
  ControllerProdutos in 'controllers\ControllerProdutos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TFrmSelecaoCliente, FrmSelecaoCliente);
  Application.CreateForm(TFrmSelecaoProdutos, FrmSelecaoProdutos);
  Application.Run;
end.
