unit eInterface.Model.PessoaJuridica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)
    private
      FNome: String;
      FSobrenome: String;
      FDisplay: TEvDisplay;
      function Nome(Value: String) : iPessoa;
      function Sobrenome(Value: String) : iPessoa;
      function NomeCompleto : iPessoa;
      function Display(Value : TEvDisplay) : iPessoa;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iPessoa;
  end;
implementation

{ TModelPessoaJuridica }

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

function TModelPessoaJuridica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelPessoaJuridica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaJuridica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome + ' ' + FSobrenome + ' LTDA ME');
end;

function TModelPessoaJuridica.Sobrenome(Value: String): iPessoa;
begin
  Result := Self;
  FSobrenome := Value;
end;

end.
