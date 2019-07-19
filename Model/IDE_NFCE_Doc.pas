unit IDE_NFCE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TIDE_NFCE_Doc = class

  private
    cUf, cNF, natOp, mood, serie, nNF, dhEmi, dhCont, tpNF, idDest, cMunFG, tpImp, tpEmis, cDV, tpAmb, finNFe, indFinal,
    indPres, procEmi, verProc, xJust: String;

    FNodeIde: IXMLNode;

    function getCDV: String;
    function getCMunFG: String;
    function getCNF: String;
    function getCUf: String;
    function getDhCont: String;
    function getDhEmi: String;
    function getFinNFe: String;
    function getIdDest: String;
    function getIndFinal: String;
    function getIndPres: String;
    function getMood: String;
    function getNatOp: String;
    function getNNF: String;
    function getProcEmi: String;
    function getSerie: String;
    function getTpAmb: String;
    function getTpEmis: String;
    function getTpImp: String;
    function getTpNF: String;
    function getVerProc: String;
    function getXJust: String;
    procedure setCDV(const Value: String);
    procedure setCMunFG(const Value: String);
    procedure setCNF(const Value: String);
    procedure setCUf(const Value: String);
    procedure setDhCont(const Value: String);
    procedure setDhEmi(const Value: String);
    procedure setFinNFe(const Value: String);
    procedure setIdDest(const Value: String);
    procedure setIndFinal(const Value: String);
    procedure setIndPres(const Value: String);
    procedure setMood(const Value: String);
    procedure setNatOp(const Value: String);
    procedure setNNF(const Value: String);
    procedure setProcEmi(const Value: String);
    procedure setSerie(const Value: String);
    procedure setTpAmb(const Value: String);
    procedure setTpEmis(const Value: String);
    procedure setTpImp(const Value: String);
    procedure setTpNF(const Value: String);
    procedure setVerProc(const Value: String);
    procedure setXJust(const Value: String);

  public
    Constructor Create_TIDE_NFCE_Doc;
    Destructor Destroy_TIDE_NFCE_Doc;

    procedure PreencherIDE;

    property NodeIde : IXMLNode read FNodeIde write FNodeIde;
    property TcUf : String read getCUf write setCUf;
    property TcNF : String read getCNF write setCNF;
    property TNatOp : String read getNatOp write setNatOp;
    property TMood : String read getMood write setMood;
    property TSerie : String read getSerie write setSerie;
    property TNNF : String read getNNF write setNNF;
    property TDhEmi : String read getDhEmi write setDhEmi;
    property TDhCont : String read getDhCont  write setDhCont;
    property TTpNF : String read getTpNF  write setTpNF;
    property TIdDest : String read getIdDest  write setIdDest;
    property TCMunFG : String read getCMunFG  write setCMunFG;
    property TTpImp : String read getTpImp  write setTpImp;
    property TTpEmis : String read getTpEmis  write setTpEmis;
    property TCDV : String read getCDV  write setCDV;
    property TTpAmb : String read getTpAmb  write setTpAmb;
    property TFinNFe : String read getFinNFe  write setFinNFe;
    property TIndFinal : String read getIndFinal  write setIndFinal;
    property TIndPres : String read getIndPres  write setIndPres;
    property TProcEmi : String read getProcEmi  write setProcEmi;
    property TVerProc : String read getVerProc  write setVerProc;
    property TXJust : String read getXJust write setXJust;

end;

implementation

{ TIDE_NFCE_Doc }

constructor TIDE_NFCE_Doc.Create_TIDE_NFCE_Doc;
begin

end;

destructor TIDE_NFCE_Doc.Destroy_TIDE_NFCE_Doc;
begin

end;

function TIDE_NFCE_Doc.getCDV: String;
begin
   result := cDV;
end;

function TIDE_NFCE_Doc.getCMunFG: String;
begin
   result := cMunFG;
end;

function TIDE_NFCE_Doc.getCNF: String;
begin
   result := cNF;
end;

function TIDE_NFCE_Doc.getCUf: String;
begin
   result := cUf;
end;

function TIDE_NFCE_Doc.getDhCont: String;
begin
   result := dhCont;
end;

function TIDE_NFCE_Doc.getDhEmi: String;
begin
   result := dhEmi;
end;

function TIDE_NFCE_Doc.getFinNFe: String;
begin
   result := finNFe;
end;

function TIDE_NFCE_Doc.getIdDest: String;
begin
   result := idDest;
end;

function TIDE_NFCE_Doc.getIndFinal: String;
begin
   result := indFinal;
end;

function TIDE_NFCE_Doc.getIndPres: String;
begin
   result := indPres;
end;

function TIDE_NFCE_Doc.getMood: String;
begin
   result := mood;
end;

function TIDE_NFCE_Doc.getNatOp: String;
begin
   result := natOp;
end;

function TIDE_NFCE_Doc.getNNF: String;
begin
   result := nNF;
end;

function TIDE_NFCE_Doc.getProcEmi: String;
begin
   result := procEmi;
end;

function TIDE_NFCE_Doc.getSerie: String;
begin
   result := serie;
end;

function TIDE_NFCE_Doc.getTpAmb: String;
begin
   result := tpAmb;
end;

function TIDE_NFCE_Doc.getTpEmis: String;
begin
   result := tpEmis;
end;

function TIDE_NFCE_Doc.getTpImp: String;
begin
   result := tpImp;
end;

function TIDE_NFCE_Doc.getTpNF: String;
begin
   result := tpNF;
end;

function TIDE_NFCE_Doc.getVerProc: String;
begin
   result := verProc;
end;

function TIDE_NFCE_Doc.getXJust: String;
begin
   result := xJust;
end;

procedure TIDE_NFCE_Doc.setCDV(const Value: String);
begin
    cDV := Value;
end;

procedure TIDE_NFCE_Doc.setCMunFG(const Value: String);
begin
   cMunFG := Value;
end;

procedure TIDE_NFCE_Doc.setCNF(const Value: String);
begin
   cNF := Value;
end;

procedure TIDE_NFCE_Doc.setCUf(const Value: String);
begin
    cUf := Value;
end;

procedure TIDE_NFCE_Doc.setDhCont(const Value: String);
begin
    dhCont := Value;
end;

procedure TIDE_NFCE_Doc.setDhEmi(const Value: String);
begin
    dhEmi := Value;
end;

procedure TIDE_NFCE_Doc.setFinNFe(const Value: String);
begin
    finNFe := Value;
end;

procedure TIDE_NFCE_Doc.setIdDest(const Value: String);
begin
   idDest := Value;
end;

procedure TIDE_NFCE_Doc.setIndFinal(const Value: String);
begin
    indFinal := Value;
end;

procedure TIDE_NFCE_Doc.setIndPres(const Value: String);
begin
    indPres := Value;
end;

procedure TIDE_NFCE_Doc.setMood(const Value: String);
begin
    mood := Value;
end;

procedure TIDE_NFCE_Doc.setNatOp(const Value: String);
begin
    natOp := Value;
end;

procedure TIDE_NFCE_Doc.setNNF(const Value: String);
begin
    nNF := Value;
end;

procedure TIDE_NFCE_Doc.setProcEmi(const Value: String);
begin
    procEmi := Value;
end;

procedure TIDE_NFCE_Doc.setSerie(const Value: String);
begin
    serie := Value;
end;

procedure TIDE_NFCE_Doc.setTpAmb(const Value: String);
begin
    tpAmb := Value;
end;

procedure TIDE_NFCE_Doc.setTpEmis(const Value: String);
begin
    tpEmis := Value;
end;

procedure TIDE_NFCE_Doc.setTpImp(const Value: String);
begin
    tpImp := Value;
end;

procedure TIDE_NFCE_Doc.setTpNF(const Value: String);
begin
    tpNF := Value;
end;

procedure TIDE_NFCE_Doc.setVerProc(const Value: String);
begin
    verProc := Value;
end;

procedure TIDE_NFCE_Doc.setXJust(const Value: String);
begin
    xJust := Value;
end;

procedure TIDE_NFCE_Doc.PreencherIDE;
begin
  if Assigned(FNodeIde) then
  begin
    if FNodeIde.ChildNodes.FindNode('cUF') <> nil then
       cUf := FNodeIde.ChildNodes.FindNode('cUF').Text;

    if FNodeIde.ChildNodes.FindNode('cNF') <> nil then
       cNF := FNodeIde.ChildNodes.FindNode('cNF').Text;

    if FNodeIde.ChildNodes.FindNode('natOp') <> nil then
       natOp := FNodeIde.ChildNodes.FindNode('natOp').Text;

    if FNodeIde.ChildNodes.FindNode('mod') <> nil then
       mood := FNodeIde.ChildNodes.FindNode('mod').Text;

    if FNodeIde.ChildNodes.FindNode('serie') <> nil then
       serie := FNodeIde.ChildNodes.FindNode('serie').Text;

    if FNodeIde.ChildNodes.FindNode('nNF') <> nil then
       nNF := FNodeIde.ChildNodes.FindNode('nNF').Text;

    if FNodeIde.ChildNodes.FindNode('dhEmi') <> nil then
       dhEmi := FNodeIde.ChildNodes.FindNode('dhEmi').Text;

    if FNodeIde.ChildNodes.FindNode('dhCont') <> nil then
       dhCont := FNodeIde.ChildNodes.FindNode('dhCont').Text;

    if FNodeIde.ChildNodes.FindNode('tpNF') <> nil then
       tpNF := FNodeIde.ChildNodes.FindNode('tpNF').Text;

    if FNodeIde.ChildNodes.FindNode('idDest') <> nil then
       idDest := FNodeIde.ChildNodes.FindNode('idDest').Text;

    if FNodeIde.ChildNodes.FindNode('cMunFG') <> nil then
       cMunFG := FNodeIde.ChildNodes.FindNode('cMunFG').Text;

    if FNodeIde.ChildNodes.FindNode('tpImp') <> nil then
       tpImp := FNodeIde.ChildNodes.FindNode('tpImp').Text;

    if FNodeIde.ChildNodes.FindNode('tpEmis') <> nil then
       tpEmis := FNodeIde.ChildNodes.FindNode('tpEmis').Text;

    if FNodeIde.ChildNodes.FindNode('cDV') <> nil then
       cDV := FNodeIde.ChildNodes.FindNode('cDV').Text;

    if FNodeIde.ChildNodes.FindNode('tpAmb') <> nil then
       tpAmb := FNodeIde.ChildNodes.FindNode('tpAmb').Text;

    if FNodeIde.ChildNodes.FindNode('finNFe') <> nil then
       finNFe := FNodeIde.ChildNodes.FindNode('finNFe').Text;

    if FNodeIde.ChildNodes.FindNode('indFinal') <> nil then
       indFinal := FNodeIde.ChildNodes.FindNode('indFinal').Text;

    if FNodeIde.ChildNodes.FindNode('indPres') <> nil then
       indPres := FNodeIde.ChildNodes.FindNode('indPres').Text;

    if FNodeIde.ChildNodes.FindNode('procEmi') <> nil then
       procEmi := FNodeIde.ChildNodes.FindNode('procEmi').Text;

    if FNodeIde.ChildNodes.FindNode('verProc') <> nil then
       verProc := FNodeIde.ChildNodes.FindNode('verProc').Text;

    if FNodeIde.ChildNodes.FindNode('xJust') <> nil then
       xJust := FNodeIde.ChildNodes.FindNode('xJust').Text;
  end;

end;

end.
