unit tables;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, System.UITypes, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  Ttabls = class(TForm)
    DBGrid1: TDBGrid;
    ��������_datasource: TDataSource;
    bus_adotable: TADOTable;
    DBGrid2: TDBGrid;
    gr: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    ������_datasource: TDataSource;
    tickets_adotable: TADOTable;
    �������_datasource: TDataSource;
    clients_adotable: TADOTable;
    �����_datasource: TDataSource;
    trip_adotable: TADOTable;
    �����_datasource: TDataSource;
    places_adotable: TADOTable;
    DBGrid6: TDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    query: TADOQuery;
    header: TImage;
    bottom: TImage;
    mnmz: TImage;
    cls: TImage;
    TrayIcon1: TTrayIcon;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    //procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure clsClick(Sender: TObject);
    procedure mnmzClick(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  tabls: Ttabls;


implementation

{$R *.dfm}

uses main, user_input;


procedure Ttabls.FormShow(Sender: TObject);
begin
  AnimateWindow(Handle, 250, AW_BLEND or AW_SLIDE);
end;

procedure Ttabls.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow(Handle, 250, aw_blend or aw_hide);
end;

procedure Ttabls.clsClick(Sender: TObject);
begin
tabls.Close
end;

procedure Ttabls.FormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure Ttabls.TrayIcon1DblClick(Sender: TObject);
begin
  { Hide the tray icon and show the window,
  setting its state property to wsNormal. }
  TrayIcon1.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;

procedure Ttabls.mnmzClick(Sender: TObject);
begin
AnimateWindow(Handle, 250, aw_blend or aw_hide);
Hide();
  WindowState := wsMinimized;

  { Show the animated tray icon and also a hint balloon. }
  TrayIcon1.Visible := True;
  TrayIcon1.Animate := True;
  TrayIcon1.Hint:='Tables (Click!)';
  TrayIcon1.BalloonTitle:='Tables';
  TrayIcon1.BalloonHint:='Icon will appear in your tray';
  TrayIcon1.ShowBalloonHint;
end;

procedure Ttabls.Button2Click(Sender: TObject);
begin
query.SQL.Add('SELECT �����.�����_�����, �����.����_�����������, �����.�����_�����������, ������.�����_����� FROM �����, �����, ������ WHERE �����.id_�����=�����.id_����� AND �����.id_�����=������.id_�����');
query.Open;     {��������� ������ � ��������� ����� ������}
Tabls.DBGrid6.Columns.Grid.Fields[2].DisplayWidth := 5;
end;



end.
