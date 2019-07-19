unit DEST_NFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TDEST_NFE_Doc = class

  private
    CPF, DxNome, indIEDest, DIE, DCNPJ, DEmail: String;

    FNodeDest : IXMLNode;

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

    procedure PreencherDest;

    property NodeDest : IXMLNode read FNodeDest write FNodeDest;
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

procedure TDEST_NFE_Doc.PreencherDest;
begin
  if Assigned(FNodeDest) then
  begin
    if FNodeDest.ChildNodes.FindNode('CPF') <> nil then
        CPF := FNodeDest.ChildNodes.FindNode('CPF').Text;

    if FNodeDest.ChildNodes.FindNode('CNPJ') <> nil then
        DCNPJ := FNodeDest.ChildNodes.FindNode('CNPJ').Text;

    if FNodeDest.ChildNodes.FindNode('xNome') <> nil then
        DxNome := FNodeDest.ChildNodes.FindNode('xNome').Text;

    if FNodeDest.ChildNodes.FindNode('indIEDest') <> nil then
        indIEDest := FNodeDest.ChildNodes.FindNode('indIEDest').Text;

    if FNodeDest.ChildNodes.FindNode('IE') <> nil then
        DIE := FNodeDest.ChildNodes.FindNode('IE').Text;

    if FNodeDest.ChildNodes.FindNode('email') <> nil then
        DEmail := FNodeDest.ChildNodes.FindNode('email').Text;
  end;

end;

end.
