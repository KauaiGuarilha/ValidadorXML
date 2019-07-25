unit EMIT_MDFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TEMIT_MDFE_Doc = class

  private
    CNPJ, IE, IEST, xNome, xFant : String;

    FNodeEmit: IXMLNode;

    function getCNPJ: String;
    function getIE: String;
    function getIEST: String;
    function getXFant: String;
    function getXNome: String;
    procedure setCNPJ(const Value: String);
    procedure setIE(const Value: String);
    procedure setIEST(const Value: String);
    procedure setXFant(const Value: String);
    procedure setXNome(const Value: String);
  public
    Constructor Create_TEMIT_MDFE_Doc;
    Destructor Destroy_TEMIT_MDFE_Doc;

    procedure PreencheEmit;

    property NodeEmit: IXMLNode read FNodeEmit write FNodeEmit;
    property TCNPJ : String read getCNPJ write setCNPJ;
    property TIE : String read getIE write setIE;
    property TIEST : String read getIEST write setIEST;
    property TXNome : String read getXNome write setXNome;
    property TXFant : String read getXFant write setXFant;

end;

implementation

{ TEMIT_MDFE_Doc }

constructor TEMIT_MDFE_Doc.Create_TEMIT_MDFE_Doc;
begin

end;

destructor TEMIT_MDFE_Doc.Destroy_TEMIT_MDFE_Doc;
begin

end;

function TEMIT_MDFE_Doc.getCNPJ: String;
begin
  result := CNPJ;
end;

function TEMIT_MDFE_Doc.getIE: String;
begin
  result := IE;
end;

function TEMIT_MDFE_Doc.getIEST: String;
begin
  result := IEST;
end;

function TEMIT_MDFE_Doc.getXFant: String;
begin
  result := xFant;
end;

function TEMIT_MDFE_Doc.getXNome: String;
begin
  result := xNome;
end;

procedure TEMIT_MDFE_Doc.setCNPJ(const Value: String);
begin
  CNPJ := Value;
end;

procedure TEMIT_MDFE_Doc.setIE(const Value: String);
begin
  IE := Value;
end;

procedure TEMIT_MDFE_Doc.setIEST(const Value: String);
begin
  IEST := Value;
end;

procedure TEMIT_MDFE_Doc.setXFant(const Value: String);
begin
  xFant := Value;
end;

procedure TEMIT_MDFE_Doc.setXNome(const Value: String);
begin
  xNome := Value;
end;

procedure TEMIT_MDFE_Doc.PreencheEmit;
begin
  if Assigned(FNodeEmit) then
    begin
      if FNodeEmit.ChildNodes.FindNode('CNPJ') <> nil then
        CNPJ := FNodeEmit.ChildNodes.FindNode('CNPJ').Text;

      if FNodeEmit.ChildNodes.FindNode('xNome') <> nil then
        xNome := FNodeEmit.ChildNodes.FindNode('xNome').Text;

      if FNodeEmit.ChildNodes.FindNode('xFant') <> nil then
        xFant := FNodeEmit.ChildNodes.FindNode('xFant').Text;

      if FNodeEmit.ChildNodes.FindNode('IE') <> nil then
        IE := FNodeEmit.ChildNodes.FindNode('IE').Text;

      if FNodeEmit.ChildNodes.FindNode('IEST') <> nil then
        IEST := FNodeEmit.ChildNodes.FindNode('IEST').Text;
    end;
end;

end.
