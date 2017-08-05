unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXMySQL, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
