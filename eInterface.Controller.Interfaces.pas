unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;

type

  TPessoa = (tpFisica, tpJuridica);

  iControllerPessoa = interface
    ['{79BB7A54-5408-4249-87D4-057CB7755BBE}']
    function Pessoa(Value : TPessoa) : iPessoa;
  end;

implementation

end.
