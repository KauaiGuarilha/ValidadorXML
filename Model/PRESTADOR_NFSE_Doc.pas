unit PRESTADOR_NFSE_Doc;

interface


type TPRESTADOR_NFSE_Doc = class

  private
    PCNPJ, PInscriMun, PRazaoSoc, Pddd, PTelefone, PEmail : String;

    function getPCNPJ: String;
    function getPddd: String;
    function getPEmail: String;
    function getPInscriMun: String;
    function getPRazaoSoc: String;
    function getPTelefone: String;
    procedure setPCNPJ(const Value: String);
    procedure setPddd(const Value: String);
    procedure setPEmail(const Value: String);
    procedure setPInscriMun(const Value: String);
    procedure setPRazaoSoc(const Value: String);
    procedure setPTelefone(const Value: String);

  public
    Constructor Create_TPRESTADOR_NFSE_Doc;
    Destructor Destroy_TPRESTADOR_NFSE_Doc;

    property TPCNPJ : String read getPCNPJ write setPCNPJ;
    property TPInscriMun : String read getPInscriMun write setPInscriMun;
    property TPRazaoSoc : String read getPRazaoSoc write setPRazaoSoc;
    property TPddd : String read getPddd write setPddd;
    property TPTelefone : String read getPTelefone write setPTelefone;
    property TPEmail : String read getPEmail write setPEmail;

end;

implementation

{ TPRESTADOR_NFSE_Doc }

constructor TPRESTADOR_NFSE_Doc.Create_TPRESTADOR_NFSE_Doc;
begin

end;

destructor TPRESTADOR_NFSE_Doc.Destroy_TPRESTADOR_NFSE_Doc;
begin

end;

function TPRESTADOR_NFSE_Doc.getPCNPJ: String;
begin
  result := PCNPJ;
end;

function TPRESTADOR_NFSE_Doc.getPddd: String;
begin
  result := Pddd;
end;

function TPRESTADOR_NFSE_Doc.getPEmail: String;
begin
  result := PEmail;
end;

function TPRESTADOR_NFSE_Doc.getPInscriMun: String;
begin
  result := PInscriMun;
end;

function TPRESTADOR_NFSE_Doc.getPRazaoSoc: String;
begin
  result := PRazaoSoc;
end;

function TPRESTADOR_NFSE_Doc.getPTelefone: String;
begin
  result := PTelefone;
end;

procedure TPRESTADOR_NFSE_Doc.setPCNPJ(const Value: String);
begin
  PCNPJ :=  Value;
end;

procedure TPRESTADOR_NFSE_Doc.setPddd(const Value: String);
begin
  Pddd := Value;
end;

procedure TPRESTADOR_NFSE_Doc.setPEmail(const Value: String);
begin
  PEmail := Value;
end;

procedure TPRESTADOR_NFSE_Doc.setPInscriMun(const Value: String);
begin
  PInscriMun := Value;
end;

procedure TPRESTADOR_NFSE_Doc.setPRazaoSoc(const Value: String);
begin
  PRazaoSoc := Value;
end;

procedure TPRESTADOR_NFSE_Doc.setPTelefone(const Value: String);
begin
  PTelefone := Value;
end;

end.
