object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 247
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 40
    Top = 112
    Width = 774
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'localhost'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=16.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=sakila'
      'User_Name=root'
      'Password=3900878'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    VendorLib = 'LIBMYSQL.dll'
    Connected = True
    Left = 24
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 24
    Top = 56
  end
  object SQLDataSet1: TSQLDataSet
    SchemaName = 'root'
    Active = True
    CommandText = 
      'select '#13#10'    *'#13#10'from'#13#10'    sakila.actor a'#13#10'        INNER JOIN'#13#10'  ' +
      '  sakila.film_actor fa ON a.actor_id = fa.actor_id'#13#10'        INNE' +
      'R JOIN'#13#10'    sakila.film f ON fa.film_id = f.film_id'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    ResolveToDataSet = True
    Left = 176
    Top = 8
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 248
    Top = 8
  end
end
