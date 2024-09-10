unit projek2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtDatabase1: TEdit;
    edtHost1: TEdit;
    edtPort1: TEdit;
    edtPassword1: TEdit;
    mmo1: TMemo;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edtDatabase2: TEdit;
    edtHost2: TEdit;
    edtPort2: TEdit;
    edtPassword2: TEdit;
    btn1: TButton;
    dbgrd1: TDBGrid;
    dbgrd2: TDBGrid;
    btn2: TButton;
    btn3: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZConnection2: TZConnection;
    ZQuery2: TZQuery;
    ds2: TDataSource;
    ds1: TDataSource;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  var PortNum: Integer;
  begin
    try
      if not ZConnection1.Connected then
      begin
        ZConnection1.Database := edtDatabase1.Text;
        ZConnection1.HostName := edtHost1.Text;

        if TryStrToInt(edtPort1.Text, PortNum) then
          ZConnection1.Port := PortNum;

        if edtPassword1.Text <> '' then
          ZConnection1.Password := edtPassword1.Text;

        ZConnection2.Database := edtDatabase2.Text;
        ZConnection2.HostName := edtHost2.Text;

        if TryStrToInt(edtPort2.Text, PortNum) then
          ZConnection2.Port := PortNum;

        if edtPassword2.Text <> '' then
          ZConnection2.Password := edtPassword2.Text;

        ZConnection1.Connect;
        ZConnection2.Connect;
      end;

      ZQuery1.SQL.Text := mmo1.Lines.Text;
      ZQuery2.SQL.Text := mmo1.Lines.Text;

      ZQuery1.Open;
      ZQuery2.Open;

      ShowMessage('Perintah SQL berhasil dijalankan!');
    except
      on E: Exception do
        ShowMessage('Gagal menjalankan perintah SQL: ' + E.Message);
    end;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  var PortNum: Integer;
  try
    ZConnection1.Database := edtDatabase1.Text;
    ZConnection1.HostName := edtHost1.Text;

    if TryStrToInt(edtPort1.Text, PortNum) then
      ZConnection1.Port := PortNum
    else if edtPort1.Text <> '' then
      raise Exception.Create('Port tidak valid');

    if edtPassword1.Text <> '' then
      ZConnection1.Password := edtPassword1.Text;

    ZConnection1.Connect;
    ShowMessage('Koneksi berhasil!');
  except
    on E: Exception do
      ShowMessage('Koneksi gagal: ' + E.Message);
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  var PortNum: Integer;
  try
    ZConnection2.Database := edtDatabase2.Text;
    ZConnection2.HostName := edtHost2.Text;

    if TryStrToInt(edtPort2.Text, PortNum) then
      ZConnection2.Port := PortNum
    else if edtPort2.Text <> '' then
      raise Exception.Create('Port tidak valid');

    if edtPassword2.Text <> '' then
      ZConnection2.Password := edtPassword2.Text;

    ZConnection2.Connect;
    ShowMessage('Koneksi berhasil!');
  except
    on E: Exception do
      ShowMessage('Koneksi gagal: ' + E.Message);
  end;
end;

end.

