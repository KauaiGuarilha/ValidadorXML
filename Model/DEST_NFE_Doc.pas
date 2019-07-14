unit DEST_NFE_Doc;

interface

type TDEST_NFE_Doc = class

  private
    CPF, DxNome, indIEDest, DIE, DCNPJ, DEmail: String;

    function getCPF: String;
    function getDCNPJ: String;
    function getDEmail: String;
    function getDIE: String;
    function getDxNome: String;
    function getIndIEDest: String;
    procedure setCPF(const Value: String);
    procedure setDCNPJ(const Value: String);
    procedure setDEmail(const Value: String);
    procedure setDIE(const Value: String);
    procedure setDxNome(const Value: String);
    procedure setIndIEDest(const Value: String);

  public
    Constructor Create_TDEST_NFE_Doc;
    Destructor Destroy_TDEST_NFE_Doc;

    property TCPF : String read getCPF write setCPF;
    property TDxNome : String read getDxNome write setDxNome;
    property TIndIEDest : String read getIndIEDest write setIndIEDest;
    property TDIE : String read getDIE write setDIE;
    property TDCNPJ : String read getDCNPJ write setDCNPJ;
    property TDEmail : String read getDEmail write setDEmail;

end;

implementation

{ TDEST_NFE_Doc }

constructor TDEST_NFE_Doc.Create_TDEST_NFE_Doc;
begin

end;

destructor TDEST_NFE_Doc.Destroy_TDEST_NFE_Doc;
begin

end;

function TDEST_NFE_Doc.getCPF: String;
begin
    result := CPF;
end;

function TDEST_NFE_Doc.getDCNPJ: String;
begin
    result := DCNPJ;
end;

function TDEST_NFE_Doc.getDEmail: String;
begin
    result := DEmail;
end;

function TDEST_NFE_Doc.getDIE: String;
begin
    result := DIE;
end;

function TDEST_NFE_Doc.getDxNome: String;
begin
    result := DxNome;
end;

function TDEST_NFE_Doc.getIndIEDest: String;
begin
    result := indIEDest;
end;

procedure TDEST_NFE_Doc.setCPF(const Value: String);
begin
    CPF := Value;
end;

procedure TDEST_NFE_Doc.setDCNPJ(const Value: String);
begin
    DCNPJ := Value;
end;

procedure TDEST_NFE_Doc.setDEmail(const Value: String);
begin
    DEmail := Value;
end;

procedure TDEST_NFE_Doc.setDIE(const Value: String);
begin
    DIE := Value;
end;

procedure TDEST_NFE_Doc.setDxNome(const Value: String);
begin
    DxNome :=  Value;
end;

procedure TDEST_NFE_Doc.setIndIEDest(const Value: String);
begin
    indIEDest := Value;
end;

end.
