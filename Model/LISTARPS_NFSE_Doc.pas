unit LISTARPS_NFSE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TLISTARPS_NFSE_Doc = class

  private
    EDataEmiss, ESeriePrest, EDescRPS, EOperac, ENatOperc, ERegEspTrib, EOptSimpNac, EIncCult, EStats, EMotCanc : String;

    FNodeListaRPS : IXMLNode;

    function getEDataEmiss: String;
    function getEDescRPS: String;
    function getEIncCult: String;
    function getEMotCanc: String;
    function getENatOperc: String;
    function getEOperac: String;
    function getEOptSimpNac: String;
    function getERegEspTrib: String;
    function getESeriePrest: String;
    function getEStats: String;
    procedure setEDataEmiss(const Value: String);
    procedure setEDescRPS(const Value: String);
    procedure setEIncCult(const Value: String);
    procedure setEMotCanc(const Value: String);
    procedure setENatOperc(const Value: String);
    procedure setEOperac(const Value: String);
    procedure setEOptSimpNac(const Value: String);
    procedure setERegEspTrib(const Value: String);
    procedure setESeriePrest(const Value: String);
    procedure setEStats(const Value: String);

  public
    Constructor Create_TLISTARPS_NFSE_Doc;
    Destructor Destroy_TLISTARPS_NFSE_Doc;

    procedure PreencherListaRPS;

    property NodeListaRPS : IXMLNode read FNodeListaRPS write FNodeListaRPS;
    property TEDataEmiss : String read getEDataEmiss write setEDataEmiss;
    property TESeriePrest : String read getESeriePrest write setESeriePrest;
    property TEDescRPS : String read getEDescRPS write setEDescRPS;
    property TEOperac : String read getEOperac write setEOperac;
    property TENatOperc : String read getENatOperc write setENatOperc;
    property TEOptSimpNac : String read getEOptSimpNac write setEOptSimpNac;
    property TERegEspTrib :String read getERegEspTrib write setERegEspTrib;
    property TEIncCult : String read getEIncCult write setEIncCult;
    property TEStats : String read getEStats write setEStats;
    property TEMotCanc : String read getEMotCanc write setEMotCanc;

end;

implementation

{ TLISTARPS_NFSE_Doc }

constructor TLISTARPS_NFSE_Doc.Create_TLISTARPS_NFSE_Doc;
begin

end;

destructor TLISTARPS_NFSE_Doc.Destroy_TLISTARPS_NFSE_Doc;
begin

end;

function TLISTARPS_NFSE_Doc.getEDataEmiss: String;
begin
  result := EDataEmiss;
end;

function TLISTARPS_NFSE_Doc.getEDescRPS: String;
begin
  result := EDescRPS;
end;

function TLISTARPS_NFSE_Doc.getEIncCult: String;
begin
  result := EIncCult;
end;

function TLISTARPS_NFSE_Doc.getEMotCanc: String;
begin
  result := EMotCanc;
end;

function TLISTARPS_NFSE_Doc.getENatOperc: String;
begin
  result := ENatOperc;
end;

function TLISTARPS_NFSE_Doc.getEOperac: String;
begin
  result := EOperac;
end;

function TLISTARPS_NFSE_Doc.getEOptSimpNac: String;
begin
  result := EOptSimpNac;
end;

function TLISTARPS_NFSE_Doc.getERegEspTrib: String;
begin
  result := ERegEspTrib;
end;

function TLISTARPS_NFSE_Doc.getESeriePrest: String;
begin
  result := ESeriePrest;
end;

function TLISTARPS_NFSE_Doc.getEStats: String;
begin
  result := EStats;
end;

procedure TLISTARPS_NFSE_Doc.setEDataEmiss(const Value: String);
begin
  EDataEmiss := Value;
end;

procedure TLISTARPS_NFSE_Doc.setEDescRPS(const Value: String);
begin
  EDescRPS := Value;
end;

procedure TLISTARPS_NFSE_Doc.setEIncCult(const Value: String);
begin
  EIncCult := Value;
end;

procedure TLISTARPS_NFSE_Doc.setEMotCanc(const Value: String);
begin
  EMotCanc := Value;
end;

procedure TLISTARPS_NFSE_Doc.setENatOperc(const Value: String);
begin
  ENatOperc := Value;
end;

procedure TLISTARPS_NFSE_Doc.setEOperac(const Value: String);
begin
  EOperac := Value;
end;

procedure TLISTARPS_NFSE_Doc.setEOptSimpNac(const Value: String);
begin
  EOptSimpNac := Value;
end;

procedure TLISTARPS_NFSE_Doc.setERegEspTrib(const Value: String);
begin
  ERegEspTrib := Value;
end;

procedure TLISTARPS_NFSE_Doc.setESeriePrest(const Value: String);
begin
  ESeriePrest := Value;
end;

procedure TLISTARPS_NFSE_Doc.setEStats(const Value: String);
begin
  EStats := Value;
end;

procedure TLISTARPS_NFSE_Doc.PreencherListaRPS;
begin
  if Assigned(FNodeListaRPS) then
  begin
    if FNodeListaRPS.ChildNodes.FindNode('DataEmissao') <> nil then
       EDataEmiss := FNodeListaRPS.ChildNodes.FindNode('DataEmissao').Text;

    if FNodeListaRPS.ChildNodes.FindNode('SeriePrestacao') <> nil then
       ESeriePrest := FNodeListaRPS.ChildNodes.FindNode('SeriePrestacao').Text;

    if FNodeListaRPS.ChildNodes.FindNode('DescricaoRPS') <> nil then
       EDescRPS := FNodeListaRPS.ChildNodes.FindNode('DescricaoRPS').Text;

    if FNodeListaRPS.ChildNodes.FindNode('Operacao') <> nil then
       EOperac := FNodeListaRPS.ChildNodes.FindNode('Operacao').Text;

    if FNodeListaRPS.ChildNodes.FindNode('NaturezaOperacao') <> nil then
       ENatOperc := FNodeListaRPS.ChildNodes.FindNode('NaturezaOperacao').Text;

    if FNodeListaRPS.ChildNodes.FindNode('RegimeEspecialTributacao') <> nil then
       ERegEspTrib := FNodeListaRPS.ChildNodes.FindNode('RegimeEspecialTributacao').Text;

    if FNodeListaRPS.ChildNodes.FindNode('OptanteSimplesNacional') <> nil then
       EOptSimpNac := FNodeListaRPS.ChildNodes.FindNode('OptanteSimplesNacional').Text;

    if FNodeListaRPS.ChildNodes.FindNode('IncentivadorCultural') <> nil then
       EIncCult := FNodeListaRPS.ChildNodes.FindNode('IncentivadorCultural').Text;

    if FNodeListaRPS.ChildNodes.FindNode('Status') <> nil then
       EStats := FNodeListaRPS.ChildNodes.FindNode('Status').Text;

    if FNodeListaRPS.ChildNodes.FindNode('MotCancelamento') <> nil then
       EMotCanc := FNodeListaRPS.ChildNodes.FindNode('MotCancelamento').Text;
  end;

end;

end.
