unit LOTERPS_NFSE_Doc;

interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TLOTERPS_NFSE_Doc = class

  private
    ECNPJ, EInsMun, EQtdRps, ENmLote : String;

    FNodeLoteRPS : IXMLNode;

    function getECNPJ: String;
    function getEInsMun: String;
    function getEQtdRps: String;
    function getENmLote: String;
    procedure setECNPJ(const Value: String);
    procedure setEInsMun(const Value: String);
    procedure setEQtdRps(const Value: String);
    procedure setENmLote(const Value: String);

  public
    Constructor Create_TLOTERPS_NFSE_Doc;
    Destructor Destroy_TLOTERPS_NFSE_Doc;

    procedure PreencherLoteRPS;

    property NodeLoteRPS : IXMLNode read FNodeLoteRPS write FNodeLoteRPS;
    property TECNPJ : String read getECNPJ write setECNPJ;
    property TEInsMun : String read getEInsMun write setEInsMun;
    property TEQtdRps : String read getEQtdRps write setEQtdRps;
    property TENmLote : String read getENmLote write setENmLote;

end;

implementation

{ TLOTERPS_NFSE_Doc }

constructor TLOTERPS_NFSE_Doc.Create_TLOTERPS_NFSE_Doc;
begin

end;

destructor TLOTERPS_NFSE_Doc.Destroy_TLOTERPS_NFSE_Doc;
begin

end;

function TLOTERPS_NFSE_Doc.getECNPJ: String;
begin
  result := ECNPJ;
end;

function TLOTERPS_NFSE_Doc.getEInsMun: String;
begin
   result := EInsMun;
end;

function TLOTERPS_NFSE_Doc.getEQtdRps: String;
begin
   result := EQtdRps;
end;

function TLOTERPS_NFSE_Doc.getENmLote: String;
begin
  result := ENmLote;
end;

procedure TLOTERPS_NFSE_Doc.setECNPJ(const Value: String);
begin
  ECNPJ := Value;
end;

procedure TLOTERPS_NFSE_Doc.setEInsMun(const Value: String);
begin
  EInsMun := Value;
end;

procedure TLOTERPS_NFSE_Doc.setEQtdRps(const Value: String);
begin
  EQtdRps := Value;
end;

procedure TLOTERPS_NFSE_Doc.setENmLote(const Value: String);
begin
  ENmLote := Value;
end;

procedure TLOTERPS_NFSE_Doc.PreencherLoteRPS;
begin
  if Assigned(FNodeLoteRPS) then
  begin
   if FNodeLoteRPS.ChildNodes.FindNode('Cnpj') <> nil then
       ECNPJ := FNodeLoteRPS.ChildNodes.FindNode('Cnpj').Text;

   if FNodeLoteRPS.ChildNodes.FindNode('InscricaoMunicipal') <> nil then
       EInsMun := FNodeLoteRPS.ChildNodes.FindNode('InscricaoMunicipal').Text;

   if FNodeLoteRPS.ChildNodes.FindNode('QuantidadeRps') <> nil then
       EQtdRps := FNodeLoteRPS.ChildNodes.FindNode('QuantidadeRps').Text;

   if FNodeLoteRPS.ChildNodes.FindNode('NumeroLote') <> nil then
       ENmLote := FNodeLoteRPS.ChildNodes.FindNode('NumeroLote').Text;

   if FNodeLoteRPS.ChildNodes.FindNode('Cnpj') <> nil then
       ECNPJ := FNodeLoteRPS.ChildNodes.FindNode('Cnpj').Text;
  end;

end;

end.
