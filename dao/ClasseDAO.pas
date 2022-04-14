unit ClasseDAO;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDMPrincipal, dialogs;

Type
  TDAO = class

    public
      procedure IniciarTransacao(Conn: TFDConnection);
      procedure Commit(Conn: TFDConnection);
      procedure Rollback(Conn: TFDConnection);
  end;

implementation

{ ClassDAO }

procedure TDAO.Commit(Conn: TFDConnection);
begin
  Conn.Commit;
end;

procedure TDAO.IniciarTransacao(Conn: TFDConnection);
begin
  Conn.StartTransaction;
end;

procedure TDAO.Rollback(Conn: TFDConnection);
begin
  Conn.Rollback;
end;

end.
