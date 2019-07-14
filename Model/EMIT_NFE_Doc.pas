unit EMIT_NFE_Doc;

interface

type TEMIT_NFE_Doc = class

  private
    CNPJ, xNome, xFant, IE, IEST, CRT: String;

    function getCNPJ: String;
    function getCRT: String;
    function getIE: String;
    function getIEST: String;
    function getXFant: String;
    function getXNome: String;
    procedure setCNPJ(const Value: String);
    procedure setCRT(const Value: String);
    procedure setIE(const Value: String);
    procedure setIEST(const Value: String);
    procedure setXFant(const Value: String);
    procedure setXnome(const Value: String);

  public
    Constructor Create_TEMIT_NFE_Doc;
    Destructor Destroy_TEMIT_NFE_Doc;

    property TCNPJ : String read getCNPJ write setCNPJ;
    property TXNome : String read getXNome write setXNome;
    property TXFant : String read getXFant write setXFant;
    property TIE : String read getIE write setIE;
    property TIEST : String read getIEST write setIEST;
    property TCRT : String read getCRT write setCRT;

end;

implementation

{ TEMIT_NFE_Doc }

constructor TEMIT_NFE_Doc.Create_TEMIT_NFE_Doc;
begin

end;

destructor TEMIT_NFE_Doc.Destroy_TEMIT_NFE_Doc;
begin

end;

function TEMIT_NFE_Doc.getCNPJ: String;
begin
    result := CNPJ;
end;

function TEMIT_NFE_Doc.getCRT: String;
begin
   result := CRT;
end;

function TEMIT_NFE_Doc.getIE: String;
begin
    result := IE;
end;

function TEMIT_NFE_Doc.getIEST: String;
begin
   result := IEST;
end;

function TEMIT_NFE_Doc.getXFant: String;
begin
   result := xFant;
end;

function TEMIT_NFE_Doc.getXNome: String;
begin
    result := xNome;
end;

procedure TEMIT_NFE_Doc.setCNPJ(const Value: String);
begin
    CNPJ := Value;
end;

procedure TEMIT_NFE_Doc.setCRT(const Value: String);
begin
    CRT := Value;
end;

procedure TEMIT_NFE_Doc.setIE(const Value: String);
begin
    IE := Value;
end;

procedure TEMIT_NFE_Doc.setIEST(const Value: String);
begin
    IEST := Value;
end;

procedure TEMIT_NFE_Doc.setXFant(const Value: String);
begin
    xFant := Value;
end;

procedure TEMIT_NFE_Doc.setXNome(const Value: String);
begin
    xNome := Value;
end;

end.
