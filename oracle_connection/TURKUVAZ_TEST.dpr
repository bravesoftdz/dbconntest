program TURKUVAZ_TEST;

{$APPTYPE CONSOLE}
uses
  SysUtils, SqlExpr, DbxOracle;
var
  Conn: TSQLConnection;
  Query: TSQLQuery;
begin
  Conn := TSQLConnection.Create(nil);
  Query := TSQLQuery.Create(nil);
  try
    try
      Conn.DriverName := 'Oracle';
      Conn.Params.Add('DataBase=TURKUVAZ_TEST');
      Conn.Params.Add('User_Name=ZDS');
      Conn.Params.Add('Password=dt32xc29');
      Conn.Connected := True;
      Query.SQLConnection := Conn;
      Query.SQL.Text := 'select * from saptmq.zdsap_a_abnlk';
      Query.Open;
      while not Query.Eof do begin
        Writeln(Query.Fields[0].AsString);
        Query.Next;
      end;

    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    Query.Free;
    Conn.Free;
  end;
end.
