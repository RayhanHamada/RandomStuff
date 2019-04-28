unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ListBox1: TListBox;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  ListBox1.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
angka : integer;
begin
  For angka := strToInt(Edit1.Text) to strToInt(Edit2.Text) do
  begin
    ListBox1.AddItem(intToStr(angka),Sender);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  angka : integer;
begin
  angka := 1;
  while angka < strToInt(Edit2.Text) + 1 do
  begin
    ListBox1.AddItem(intToStr(angka), Sender);
    angka := angka + 1;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  angka : integer;
begin
  angka := strToInt(Edit1.Text);
  repeat
    ListBox1.AddItem(intToStr(angka), Sender);
    angka := angka + 1;
  until angka = strToInt(Edit2.Text) + 1;
end;
end.
