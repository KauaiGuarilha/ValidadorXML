unit PRESTADORENDER_NFSE_Doc;

interface

type TPRESTADORENDER_NFSE_Doc = class

  private
    PEndereco, PENumero, PEBairro, PECodMun, PEDescMun, PEUf, PECEP, PETipoBairr : String;

    function getPEBairro: String;
    function getPECEP: String;
    function getPECodMun: String;
    function getPEDescMun: String;
    function getPEndereco: String;
    function getPENumero: String;
    function getPETipoBairr: String;
    function getPEUf: String;
    procedure setPEBairro(const Value: String);
    procedure setPECEP(const Value: String);
    procedure setPECodMun(const Value: String);
    procedure setPEDescMun(const Value: String);
    procedure setPEndereco(const Value: String);
    procedure setPENumero(const Value: String);
    procedure setPETipoBairr(const Value: String);
    procedure setPEUf(const Value: String);


  public
    Constructor Create_TPRESTADORENDER_NFSE_Doc;
    Destructor Destroy_TPRESTADORENDER_NFSE_Doc;

    property TPEndereco : String read getPEndereco write setPEndereco;
    property TPENumero : String read getPENumero write setPENumero;
    property TPEBairro : String read getPEBairro write setPEBairro;
    property TPECodMun : String read getPECodMun write setPECodMun;
    property TPEDescMun : String read getPEDescMun write setPEDescMun;
    property TPEUf : String read getPEUf write setPEUf;
    property TPECEP : String read getPECEP write setPECEP;
    property TPETipoBairr : String read getPETipoBairr write setPETipoBairr;

end;

implementation

{ TPRESTADORENDER_NFSE_Doc }

constructor TPRESTADORENDER_NFSE_Doc.Create_TPRESTADORENDER_NFSE_Doc;
begin

end;

destructor TPRESTADORENDER_NFSE_Doc.Destroy_TPRESTADORENDER_NFSE_Doc;
begin

end;

function TPRESTADORENDER_NFSE_Doc.getPEBairro: String;
begin
  result := PEBairro;
end;

function TPRESTADORENDER_NFSE_Doc.getPECEP: String;
begin
  result := PECEP;
end;

function TPRESTADORENDER_NFSE_Doc.getPECodMun: String;
begin
  result := PECodMun;
end;

function TPRESTADORENDER_NFSE_Doc.getPEDescMun: String;
begin
  result := PEDescMun;
end;

function TPRESTADORENDER_NFSE_Doc.getPEndereco: String;
begin
  result := PEndereco;
end;

function TPRESTADORENDER_NFSE_Doc.getPENumero: String;
begin
  result := PENumero;
end;

function TPRESTADORENDER_NFSE_Doc.getPETipoBairr: String;
begin
  result := PETipoBairr;
end;

function TPRESTADORENDER_NFSE_Doc.getPEUf: String;
begin
 result := PEUf;
end;

procedure TPRESTADORENDER_NFSE_Doc.setPEBairro(const Value: String);
begin
  PEBairro := Value;
end;

procedure TPRESTADORENDER_NFSE_Doc.setPECEP(const Value: String);
begin
  PECEP := Value;
end;

procedure TPRESTADORENDER_NFSE_Doc.setPECodMun(const Value: String);
begin
  PECodMun := Value;
end;

procedure TPRESTADORENDER_NFSE_Doc.setPEDescMun(const Value: String);
begin
  PEDescMun := Value;
end;

procedure TPRESTADORENDER_NFSE_Doc.setPEndereco(const Value: String);
begin
  PEndereco := Value;
end;

procedure TPRESTADORENDER_NFSE_Doc.setPENumero(const Value: String);
begin
  PENumero := Value;
end;

procedure TPRESTADORENDER_NFSE_Doc.setPETipoBairr(const Value: String);
begin
  PETipoBairr := Value;
end;

procedure TPRESTADORENDER_NFSE_Doc.setPEUf(const Value: String);
begin
  PEUf := Value;
end;

end.
