unit ControllerDAO;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDMPrincipal, dialogs, ClasseDAO;

Type
  TControllerDAO = class

    public
      procedure IniciarTransacao(Conn: TFDConnection);
      procedure Commit(Conn: TFDConnection);
      procedure Rollback(Conn: TFDConnection);
  end;

implementation

var DAO: TDAO;

{ TControllerDAO }

procedure TControllerDAO.Commit(Conn: TFDConnection);
begin
  DAO := TDAO.Create();
  DAO.Commit(Conn);
end;

procedure TControllerDAO.IniciarTransacao(Conn: TFDConnection);
begin
    DAO := TDAO.Create();
    DAO.IniciarTransacao(Conn);
end;

procedure TControllerDAO.Rollback(Conn: TFDConnection);
begin
    DAO := TDAO.Create();
    DAO.Rollback(Conn);
end;

end.
