unit TOMADORENDER_NFSE_Doc;

interface

type TTOMADORENDER_NFSE_Doc = class

  private
    TEndereco, TENumero, TEComple, TEBairro, TECodMun, TEdescMun, TEUf, TECep : String;

    function getTEBairro: String;
    function getTECep: String;
    function getTECodMun: String;
    function getTEComple: String;
    function getTEdescMun: String;
    function getTEndereco: String;
    function getTENumero: String;
    function getTEUf: String;
    procedure setTEBairro(const Value: String);
    procedure setTECep(const Value: String);
    procedure setTECodMun(const Value: String);
    procedure setTEComple(const Value: String);
    procedure setTEdescMun(const Value: String);
    procedure setTEndereco(const Value: String);
    procedure setTENumero(const Value: String);
    procedure setTEUf(const Value: String);

  public
    Constructor Create_TTOMADORENDER_NFSE_Doc;
    Destructor Destroy_TTOMADORENDER_NFSE_Doc;

    property TTEndereco : String read getTEndereco write setTEndereco;
    property TTENumero : String read getTENumero write setTENumero;
    property TTEComple : String read getTEComple write setTEComple;
    property TTEBairro : String read getTEBairro write setTEBairro;
    property TTECodMun : String read getTECodMun write setTECodMun;
    property TTEdescMun : String read getTEdescMun write setTEdescMun;
    property TTEUf : String read getTEUf write setTEUf;
    property TTECep : String read getTECep write setTECep;

end;

implementation

{ TTOMADORENDER_NFSE_Doc }

constructor TTOMADORENDER_NFSE_Doc.Create_TTOMADORENDER_NFSE_Doc;
begin

end;

destructor TTOMADORENDER_NFSE_Doc.Destroy_TTOMADORENDER_NFSE_Doc;
begin

end;

function TTOMADORENDER_NFSE_Doc.getTEBairro: String;
begin
  result := TEBairro;
end;

function TTOMADORENDER_NFSE_Doc.getTECep: String;
begin
  result := TECep;
end;

function TTOMADORENDER_NFSE_Doc.getTECodMun: String;
begin
  result := TECodMun;
end;

function TTOMADORENDER_NFSE_Doc.getTEComple: String;
begin
  result := TEComple;
end;

function TTOMADORENDER_NFSE_Doc.getTEdescMun: String;
begin
  result := TEdescMun;
end;

function TTOMADORENDER_NFSE_Doc.getTEndereco: String;
begin
  result := TEndereco;
end;

function TTOMADORENDER_NFSE_Doc.getTENumero: String;
begin
  result := TENumero;
end;

function TTOMADORENDER_NFSE_Doc.getTEUf: String;
begin
  result := TEUf;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEBairro(const Value: String);
begin
  TEBairro := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTECep(const Value: String);
begin
  TECep := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTECodMun(const Value: String);
begin
  TECodMun := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEComple(const Value: String);
begin
  TEComple := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEdescMun(const Value: String);
begin
  TEdescMun := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEndereco(const Value: String);
begin
  TEndereco := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTENumero(const Value: String);
begin
  TENumero := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEUf(const Value: String);
begin
  TEUf := Value;
end;

end.
