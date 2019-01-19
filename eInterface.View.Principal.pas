unit eInterface.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  eInterface.Model.Interfaces;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    FPessoa : iPessoa;
    procedure ExibeResultado(Value : String);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  eInterface.Controller.Pessoa, eInterface.Controller.Interfaces;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  FPessoa
    .Nome(Edit1.Text)
    .Sobrenome(Edit2.Text)
    .Display(ExibeResultado)
    .NomeCompleto
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: FPessoa := TControllerPessoa.New.Pessoa(tpFisica);
    1: FPessoa := TControllerPessoa.New.Pessoa(tpJuridica);
  end;
end;

procedure TForm2.ExibeResultado(Value: String);
begin
  Memo1.Lines.Add(Value);
end;

end.
