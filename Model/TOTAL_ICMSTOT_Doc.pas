unit TOTAL_ICMSTOT_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TTOTAL_ICMSTOT_Doc = class

  private
    vBC, vICMS, vICMSDeson, vFCP, vBCST, vST, vFCPST, vFCPSTRet, vProd, vFrete,
    vSeg, vDesc, vII, vIPI, vIPIDevol, vPIS, vCOFINS, vOutro, vNF, vTotTrib : String;

    vFCPUFDest, vICMSUFDest  : String;

    FNodeInfTot : IXMLNode;

    function getVBC: String;
    function getVBCST: String;
    function getVCOFINS: String;
    function getVDesc: String;
    function getVFCP: String;
    function getVFCPST: String;
    function getVFCPSTRet: String;
    function getVFrete: String;
    function getVICMS: String;
    function getVICMSDeson: String;
    function getVII: String;
    function getVIPI: String;
    function getVIPIDevol: String;
    function getVNF: String;
    function getVOutro: String;
    function getVPIS: String;
    function getVProd: String;
    function getVSeg: String;
    function getVST: String;
    function getVTotTrib: String;
    procedure setVBC(const Value: String);
    procedure setVBCST(const Value: String);
    procedure setVCOFINS(const Value: String);
    procedure setVDesc(const Value: String);
    procedure setVFCP(const Value: String);
    procedure setVFCPST(const Value: String);
    procedure setVFCPSTRet(const Value: String);
    procedure setVFrete(const Value: String);
    procedure setVICMS(const Value: String);
    procedure setVICMSDeson(const Value: String);
    procedure setVII(const Value: String);
    procedure setVIPI(const Value: String);
    procedure setVIPIDevol(const Value: String);
    procedure setVNF(const Value: String);
    procedure setVOutro(const Value: String);
    procedure setVPIS(const Value: String);
    procedure setVProd(const Value: String);
    procedure setVSeg(const Value: String);
    procedure setVST(const Value: String);
    procedure setVTotTrib(const Value: String);
    function getVFCPUFDest: String;
    function getVICMSUFDest: String;
    procedure setVFCPUFDest(const Value: String);
    procedure setVICMSUFDest(const Value: String);

  public
    Constructor Create_TTOTAL_ICMSTOT_Doc;
    Destructor Destroy_TTOTAL_ICMSTOT_Doc;

    procedure PreencheTot;

    Property NodeInfTot : IXMLNode read FNodeInfTot write FNodeInfTot;
    property TVBC : String read getVBC write setVBC;
    property TVICMS : String read getVICMS write setVICMS;
    property TVICMSDeson : String read getVICMSDeson write setVICMSDeson;
    property TVFCP : String read getVFCP write setVFCP;
    property TVBCST : String read getVBCST write setVBCST;
    property TVST : String read getVST write setVST;
    property TVFCPST : String read getVFCPST write setVFCPST;
    property TVFCPSTRet : String read getVFCPSTRet write setVFCPSTRet;
    property TVProd : String read getVProd write setVProd;
    property TVFrete : String read getVFrete write setVFrete;
    property TVSeg : String read getVSeg write setVSeg;
    property TVDesc : String read getVDesc write setVDesc;
    property TVII : String read getVII write setVII;
    property TVIPI : String read getVIPI write setVIPI;
    property TVIPIDevol : String read getVIPIDevol write setVIPIDevol;
    property TVPIS : String read getVPIS write setVPIS;
    property TVCOFINS : String read getVCOFINS write setVCOFINS;
    property TVOutro : String read getVOutro write setVOutro;
    property TVNF : String read getVNF write setVNF;
    property TVTotTrib : String read getVTotTrib write setVTotTrib;

    property TVFCPUFDest : String read getVFCPUFDest write setVFCPUFDest;
    property TVICMSUFDest : String read getVICMSUFDest write setVICMSUFDest;
end;

implementation

{ TTOTAL_ICMSTOT_Doc }

constructor TTOTAL_ICMSTOT_Doc.Create_TTOTAL_ICMSTOT_Doc;
begin

end;

destructor TTOTAL_ICMSTOT_Doc.Destroy_TTOTAL_ICMSTOT_Doc;
begin

end;

function TTOTAL_ICMSTOT_Doc.getVBC: String;
begin
  result := vBC;
end;

function TTOTAL_ICMSTOT_Doc.getVBCST: String;
begin
  result := vBCST;
end;

function TTOTAL_ICMSTOT_Doc.getVCOFINS: String;
begin
  result := vCOFINS;
end;

function TTOTAL_ICMSTOT_Doc.getVDesc: String;
begin
  result := vDesc;
end;

function TTOTAL_ICMSTOT_Doc.getVFCP: String;
begin
  result := vFCP;
end;

function TTOTAL_ICMSTOT_Doc.getVFCPST: String;
begin
  result := vFCPST;
end;

function TTOTAL_ICMSTOT_Doc.getVFCPSTRet: String;
begin
  result := vFCPSTRet;
end;

function TTOTAL_ICMSTOT_Doc.getVFCPUFDest: String;
begin
  result := vFCPUFDest;
end;

function TTOTAL_ICMSTOT_Doc.getVFrete: String;
begin
  result := vFrete;
end;

function TTOTAL_ICMSTOT_Doc.getVICMS: String;
begin
  result := vICMS;
end;

function TTOTAL_ICMSTOT_Doc.getVICMSDeson: String;
begin
  result := vICMSDeson;
end;

function TTOTAL_ICMSTOT_Doc.getVICMSUFDest: String;
begin
  result := vICMSUFDest
end;

function TTOTAL_ICMSTOT_Doc.getVII: String;
begin
  result := vII;
end;

function TTOTAL_ICMSTOT_Doc.getVIPI: String;
begin
  result := vIPI;
end;

function TTOTAL_ICMSTOT_Doc.getVIPIDevol: String;
begin
  result := vIPIDevol;
end;

function TTOTAL_ICMSTOT_Doc.getVNF: String;
begin
  result := vNF;
end;

function TTOTAL_ICMSTOT_Doc.getVOutro: String;
begin
  result := vOutro;
end;

function TTOTAL_ICMSTOT_Doc.getVPIS: String;
begin
  result := vPIS;
end;

function TTOTAL_ICMSTOT_Doc.getVProd: String;
begin
  result := vProd;
end;

function TTOTAL_ICMSTOT_Doc.getVSeg: String;
begin
  result := vSeg;
end;

function TTOTAL_ICMSTOT_Doc.getVST: String;
begin
  result := vST;
end;

function TTOTAL_ICMSTOT_Doc.getVTotTrib: String;
begin
  result := vTotTrib;
end;

procedure TTOTAL_ICMSTOT_Doc.setVBC(const Value: String);
begin
  vBC := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVBCST(const Value: String);
begin
  vBCST := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVCOFINS(const Value: String);
begin
  vCOFINS := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVDesc(const Value: String);
begin
  vDesc := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVFCP(const Value: String);
begin
  vFCP := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVFCPST(const Value: String);
begin
  vFCPST := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVFCPSTRet(const Value: String);
begin
  vFCPSTRet := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVFCPUFDest(const Value: String);
begin
  vFCPUFDest := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVFrete(const Value: String);
begin
  vFrete := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVICMS(const Value: String);
begin
  vICMS := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVICMSDeson(const Value: String);
begin
  vICMSDeson := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVICMSUFDest(const Value: String);
begin
  vICMSUFDest := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVII(const Value: String);
begin
  vII := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVIPI(const Value: String);
begin
  vIPI := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVIPIDevol(const Value: String);
begin
  vIPIDevol := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVNF(const Value: String);
begin
  vNF := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVOutro(const Value: String);
begin
  vOutro := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVPIS(const Value: String);
begin
  vPIS := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVProd(const Value: String);
begin
  vProd := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVSeg(const Value: String);
begin
  vSeg := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVST(const Value: String);
begin
  vST := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.setVTotTrib(const Value: String);
begin
  vTotTrib := Value;
end;

procedure TTOTAL_ICMSTOT_Doc.PreencheTot;
begin
  if Assigned(FNodeInfTot) then
  begin
    if FNodeInfTot.ChildNodes.FindNode('vBC') <> nil then
        vBC := FNodeInfTot.ChildNodes.FindNode('vBC').Text;

    if FNodeInfTot.ChildNodes.FindNode('vICMS') <> nil then
        vICMS := FNodeInfTot.ChildNodes.FindNode('vICMS').Text;

    if FNodeInfTot.ChildNodes.FindNode('vICMSDeson') <> nil then
        vICMSDeson := FNodeInfTot.ChildNodes.FindNode('vICMSDeson').Text;

    if FNodeInfTot.ChildNodes.FindNode('vFCP') <> nil then
        vFCP := FNodeInfTot.ChildNodes.FindNode('vFCP').Text;

    if FNodeInfTot.ChildNodes.FindNode('vBCST') <> nil then
        vBCST := FNodeInfTot.ChildNodes.FindNode('vBCST').Text;

    if FNodeInfTot.ChildNodes.FindNode('vST') <> nil then
        vST := FNodeInfTot.ChildNodes.FindNode('vST').Text;

    if FNodeInfTot.ChildNodes.FindNode('vFCPST') <> nil then
        vFCPST := FNodeInfTot.ChildNodes.FindNode('vFCPST').Text;

    if FNodeInfTot.ChildNodes.FindNode('vFCPSTRet') <> nil then
        vFCPSTRet := FNodeInfTot.ChildNodes.FindNode('vFCPSTRet').Text;

    if FNodeInfTot.ChildNodes.FindNode('vProd') <> nil then
        vProd := FNodeInfTot.ChildNodes.FindNode('vProd').Text;

    if FNodeInfTot.ChildNodes.FindNode('vFrete') <> nil then
        vFrete := FNodeInfTot.ChildNodes.FindNode('vFrete').Text;

    if FNodeInfTot.ChildNodes.FindNode('vSeg') <> nil then
        vSeg := FNodeInfTot.ChildNodes.FindNode('vSeg').Text;

    if FNodeInfTot.ChildNodes.FindNode('vDesc') <> nil then
        vDesc := FNodeInfTot.ChildNodes.FindNode('vDesc').Text;

    if FNodeInfTot.ChildNodes.FindNode('vII') <> nil then
        vII := FNodeInfTot.ChildNodes.FindNode('vII').Text;

    if FNodeInfTot.ChildNodes.FindNode('vIPI') <> nil then
        vIPI := FNodeInfTot.ChildNodes.FindNode('vIPI').Text;

    if FNodeInfTot.ChildNodes.FindNode('vIPIDevol') <> nil then
        vIPIDevol := FNodeInfTot.ChildNodes.FindNode('vIPIDevol').Text;

    if FNodeInfTot.ChildNodes.FindNode('vPIS') <> nil then
        vPIS := FNodeInfTot.ChildNodes.FindNode('vPIS').Text;

    if FNodeInfTot.ChildNodes.FindNode('vCOFINS') <> nil then
        vCOFINS := FNodeInfTot.ChildNodes.FindNode('vCOFINS').Text;

    if FNodeInfTot.ChildNodes.FindNode('vOutro') <> nil then
        vOutro := FNodeInfTot.ChildNodes.FindNode('vOutro').Text;

    if FNodeInfTot.ChildNodes.FindNode('vNF') <> nil then
        vNF := FNodeInfTot.ChildNodes.FindNode('vNF').Text;

    if FNodeInfTot.ChildNodes.FindNode('vTotTrib') <> nil then
        vTotTrib := FNodeInfTot.ChildNodes.FindNode('vTotTrib').Text;

    if FNodeInfTot.ChildNodes.FindNode('vFCPUFDest') <> nil then
        vFCPUFDest := FNodeInfTot.ChildNodes.FindNode('vFCPUFDest').Text;

    if FNodeInfTot.ChildNodes.FindNode('vICMSUFDest') <> nil then
        vICMSUFDest := FNodeInfTot.ChildNodes.FindNode('vICMSUFDest').Text;

  end;
end;

end.
