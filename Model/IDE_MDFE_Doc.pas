unit IDE_MDFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TIDE_MDFE_Doc = class

  private
    cUF, tpAmb, tpEmit, mood, serie, nMDF, cMDF, cDV, modal, dhEmi, tpEmis, procEmi, verProc,
    UFIni, UFFim, UFPer : String;

    FNodeIde: IXMLNode;

    function getCDV: String;
    function getCMDF: String;
    function getCUF: String;
    function getDhEmi: String;
    function getModal: String;
    function getMood: String;
    function getNMDF: String;
    function getProcEmi: String;
    function getSerie: String;
    function getTpAmb: String;
    function getTpEmis: String;
    function getTpEmit: String;
    function getUFFim: String;
    function getUFIni: String;
    function getUFPer: String;
    function getVerProc: String;
    procedure setCDV(const Value: String);
    procedure setCMDF(const Value: String);
    procedure setCUF(const Value: String);
    procedure setDhEmi(const Value: String);
    procedure setModal(const Value: String);
    procedure setMood(const Value: String);
    procedure setNMDF(const Value: String);
    procedure setprocEmi(const Value: String);
    procedure setSerie(const Value: String);
    procedure setTpAmb(const Value: String);
    procedure settpEmis(const Value: String);
    procedure setTpEmit(const Value: String);
    procedure setUFFim(const Value: String);
    procedure setUFIni(const Value: String);
    procedure setUFPer(const Value: String);
    procedure setVerProc(const Value: String);

  public
    Constructor Create_TIDE_MDFE_Doc;
    Destructor Destroy_TIDE_MDFE_Doc;

    procedure PreencherIDE;

    property NodeIde : IXMLNode read FNodeIde write FNodeIde;
    property TCUF : String read getCUF write setCUF;
    property TTpAmb : String read getTpAmb write setTpAmb;
    property TTpEmit : String read getTpEmit write setTpEmit;
    property TMood : String read getMood write setMood;
    property TSerie : String read getSerie write setSerie;
    property TNMDF : String read getNMDF write setNMDF;
    property TCMDF : String read getCMDF write setCMDF;
    property TCDV : String read getCDV write setCDV;
    property TModal : String read getModal write setModal;
    property TDhEmi : String read getDhEmi write setDhEmi;
    property TTpEmis : String read getTpEmis write settpEmis;
    property TProcEmi : String read getProcEmi write setprocEmi;
    property TVerProc : String read getVerProc write setVerProc;
    property TUFIni : String read getUFIni write setUFIni;
    property TUFFim : String read getUFFim write setUFFim;
    property TUFPer : String read getUFPer write setUFPer;
end;

implementation

{ TIDE_MDFE_Doc }

constructor TIDE_MDFE_Doc.Create_TIDE_MDFE_Doc;
begin

end;

destructor TIDE_MDFE_Doc.Destroy_TIDE_MDFE_Doc;
begin

end;

function TIDE_MDFE_Doc.getCDV: String;
begin
  result := cDV;
end;

function TIDE_MDFE_Doc.getCMDF: String;
begin
  result := cMDF;
end;

function TIDE_MDFE_Doc.getCUF: String;
begin
  result := cUF;
end;

function TIDE_MDFE_Doc.getDhEmi: String;
begin
  result := dhEmi;
end;

function TIDE_MDFE_Doc.getModal: String;
begin
  result := modal;
end;

function TIDE_MDFE_Doc.getMood: String;
begin
  result := mood;
end;

function TIDE_MDFE_Doc.getNMDF: String;
begin
  result := nMDF;
end;

function TIDE_MDFE_Doc.getProcEmi: String;
begin
  result := procEmi;
end;

function TIDE_MDFE_Doc.getSerie: String;
begin
  result := serie;
end;

function TIDE_MDFE_Doc.getTpAmb: String;
begin
  result := tpAmb;
end;

function TIDE_MDFE_Doc.getTpEmis: String;
begin
  result := tpEmis;
end;

function TIDE_MDFE_Doc.getTpEmit: String;
begin
  result := tpEmit;
end;

function TIDE_MDFE_Doc.getUFFim: String;
begin
  result := UFFim;
end;

function TIDE_MDFE_Doc.getUFIni: String;
begin
  result := UFIni;
end;

function TIDE_MDFE_Doc.getUFPer: String;
begin
  result := UFPer;
end;

function TIDE_MDFE_Doc.getVerProc: String;
begin
  result := verProc;
end;

procedure TIDE_MDFE_Doc.setCDV(const Value: String);
begin
  cDV := Value;
end;

procedure TIDE_MDFE_Doc.setCMDF(const Value: String);
begin
  cMDF := Value;
end;

procedure TIDE_MDFE_Doc.setCUF(const Value: String);
begin
  cUF := Value;
end;

procedure TIDE_MDFE_Doc.setDhEmi(const Value: String);
begin
  dhEmi := Value;
end;

procedure TIDE_MDFE_Doc.setModal(const Value: String);
begin
  modal := Value;
end;

procedure TIDE_MDFE_Doc.setMood(const Value: String);
begin
  mood := Value;
end;

procedure TIDE_MDFE_Doc.setNMDF(const Value: String);
begin
  nMDF := Value;
end;

procedure TIDE_MDFE_Doc.setprocEmi(const Value: String);
begin
  procEmi := Value;
end;

procedure TIDE_MDFE_Doc.setSerie(const Value: String);
begin
  serie := Value;
end;

procedure TIDE_MDFE_Doc.setTpAmb(const Value: String);
begin
  tpAmb := Value;
end;

procedure TIDE_MDFE_Doc.settpEmis(const Value: String);
begin
  tpEmis := Value;
end;

procedure TIDE_MDFE_Doc.setTpEmit(const Value: String);
begin
  tpEmit := Value;
end;

procedure TIDE_MDFE_Doc.setUFFim(const Value: String);
begin
  UFFim := Value;
end;

procedure TIDE_MDFE_Doc.setUFIni(const Value: String);
begin
  UFIni := Value;
end;

procedure TIDE_MDFE_Doc.setUFPer(const Value: String);
begin
  UFPer := Value;
end;

procedure TIDE_MDFE_Doc.setVerProc(const Value: String);
begin
  verProc := Value;
end;

procedure TIDE_MDFE_Doc.PreencherIDE;
begin
  if Assigned(FNodeIde) then
   begin
     if FNodeIde.ChildNodes.FindNode('cUF') <> nil then
       cUf := FNodeIde.ChildNodes.FindNode('cUF').Text;

     if FNodeIde.ChildNodes.FindNode('tpAmb') <> nil then
       tpAmb := FNodeIde.ChildNodes.FindNode('tpAmb').Text;

     if FNodeIde.ChildNodes.FindNode('tpEmit') <> nil then
       tpEmit := FNodeIde.ChildNodes.FindNode('tpEmit').Text;

     if FNodeIde.ChildNodes.FindNode('mod') <> nil then
       mood := FNodeIde.ChildNodes.FindNode('mod').Text;

     if FNodeIde.ChildNodes.FindNode('serie') <> nil then
       serie := FNodeIde.ChildNodes.FindNode('serie').Text;

     if FNodeIde.ChildNodes.FindNode('nMDF') <> nil then
       nMDF := FNodeIde.ChildNodes.FindNode('nMDF').Text;

     if FNodeIde.ChildNodes.FindNode('cMDF') <> nil then
       cMDF := FNodeIde.ChildNodes.FindNode('cMDF').Text;

     if FNodeIde.ChildNodes.FindNode('cDV') <> nil then
       cDV := FNodeIde.ChildNodes.FindNode('cDV').Text;

     if FNodeIde.ChildNodes.FindNode('modal') <> nil then
       modal := FNodeIde.ChildNodes.FindNode('modal').Text;

     if FNodeIde.ChildNodes.FindNode('dhEmi') <> nil then
       dhEmi := FNodeIde.ChildNodes.FindNode('dhEmi').Text;

     if FNodeIde.ChildNodes.FindNode('tpEmis') <> nil then
       tpEmis := FNodeIde.ChildNodes.FindNode('tpEmis').Text;

     if FNodeIde.ChildNodes.FindNode('procEmi') <> nil then
       procEmi := FNodeIde.ChildNodes.FindNode('procEmi').Text;

     if FNodeIde.ChildNodes.FindNode('verProc') <> nil then
       verProc := FNodeIde.ChildNodes.FindNode('verProc').Text;

     if FNodeIde.ChildNodes.FindNode('UFIni') <> nil then
       UFIni := FNodeIde.ChildNodes.FindNode('UFIni').Text;

     if FNodeIde.ChildNodes.FindNode('UFFim') <> nil then
       UFFim := FNodeIde.ChildNodes.FindNode('UFFim').Text;

     if FNodeIde.ChildNodes.FindNode('UFPer') <> nil then
       UFPer := FNodeIde.ChildNodes.FindNode('UFPer').Text;
   end;
end;

end.
