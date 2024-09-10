object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl1: TLabel
    Left = 56
    Top = 80
    Width = 57
    Height = 15
    Caption = 'Database 1'
  end
  object lbl2: TLabel
    Left = 56
    Top = 120
    Width = 64
    Height = 15
    Caption = 'Hostname 1'
  end
  object lbl3: TLabel
    Left = 56
    Top = 160
    Width = 31
    Height = 15
    Caption = 'Port 1'
  end
  object lbl4: TLabel
    Left = 56
    Top = 200
    Width = 59
    Height = 15
    Caption = 'Password 1'
  end
  object lbl5: TLabel
    Left = 640
    Top = 80
    Width = 57
    Height = 15
    Caption = 'Database 2'
  end
  object lbl6: TLabel
    Left = 640
    Top = 120
    Width = 64
    Height = 15
    Caption = 'Hostname 2'
  end
  object lbl7: TLabel
    Left = 640
    Top = 160
    Width = 31
    Height = 15
    Caption = 'Port 2'
  end
  object lbl8: TLabel
    Left = 640
    Top = 200
    Width = 59
    Height = 15
    Caption = 'Password 2'
  end
  object edtDatabase1: TEdit
    Left = 168
    Top = 77
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtHost1: TEdit
    Left = 168
    Top = 117
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object edtPort1: TEdit
    Left = 168
    Top = 157
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object edtPassword1: TEdit
    Left = 168
    Top = 197
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object mmo1: TMemo
    Left = 340
    Top = 24
    Width = 257
    Height = 111
    Lines.Strings = (
      '')
    TabOrder = 4
  end
  object edtDatabase2: TEdit
    Left = 752
    Top = 77
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object edtHost2: TEdit
    Left = 752
    Top = 117
    Width = 121
    Height = 23
    TabOrder = 6
  end
  object edtPort2: TEdit
    Left = 752
    Top = 157
    Width = 121
    Height = 23
    TabOrder = 7
  end
  object edtPassword2: TEdit
    Left = 752
    Top = 197
    Width = 121
    Height = 23
    TabOrder = 8
  end
  object btn1: TButton
    Left = 427
    Top = 169
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 9
    OnClick = btn1Click
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 296
    Width = 449
    Height = 120
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object dbgrd2: TDBGrid
    Left = 472
    Top = 296
    Width = 441
    Height = 120
    DataSource = ds2
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btn2: TButton
    Left = 192
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 12
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 776
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 13
    OnClick = btn3Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_bankcahaya_reza'
    User = 'root'
    Password = ''
    Protocol = 'mariadb'
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SHOW TABLES;')
    Params = <>
    Left = 32
    Top = 8
  end
  object ZConnection2: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_bankcahaya_oktareza'
    User = 'root'
    Password = ''
    Protocol = 'mariadb'
    Left = 896
    Top = 8
  end
  object ZQuery2: TZQuery
    Connection = ZConnection2
    SQL.Strings = (
      'SHOW TABLES;')
    Params = <>
    Left = 864
    Top = 8
  end
  object ds2: TDataSource
    DataSet = ZQuery2
    Left = 832
    Top = 8
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 64
    Top = 8
  end
end
