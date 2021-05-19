unit Mainform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lst1: TListBox;
    btn1: TButton;
    grp1: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    lbl2: TLabel;
    grp2: TGroupBox;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FillList;
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure lbl3MouseLeave(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
  FillList;
end;

procedure TForm3.chk1Click(Sender: TObject);
begin
  lbl3.Caption := chk1.Caption;
end;

procedure TForm3.chk2Click(Sender: TObject);
begin
  lbl3.Caption := chk2.Caption;
end;

procedure TForm3.chk3Click(Sender: TObject);
begin
  lbl3.Caption := chk3.Caption;
end;

procedure TForm3.FillList;
var
  InputString: string;
begin
  InputString:= InputBox('Input Box', 'Prompt', 'Default string');
  lst1.Items.Add(InputString);
end;

procedure TForm3.lbl3MouseLeave(Sender: TObject);
begin
  lbl5.Caption := lbl2.Caption + ' ' + lbl3.Caption;
end;

procedure TForm3.rb1Click(Sender: TObject);
begin
  lbl2.Caption := rb1.Caption;
end;

procedure TForm3.rb2Click(Sender: TObject);
begin
  lbl2.Caption := rb2.Caption;
end;

end.
