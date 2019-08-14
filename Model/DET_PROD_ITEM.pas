unit DET_PROD_ITEM;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TDET_PROD_ITEM = class

  private
    cProd, cEAN, xProd, NCM, CFOP, uCom, qCom, vUnCom, vProd, cEANTrib, uTrib, qTrib,
    vUnTrib, indTot : String;

    FNodeDet: IXMLNode;
    FNodeProd: IXMLNode;
    FNodeInfProd: IXMLNode;

    function getCEAN: String;
    function getCEANTrib: String;
    function getCFOP: String;
    function getCProd: String;
    function getIndTot: String;
    function getNCM: String;
    function getQTrib: String;
    function getUCom: String;
    function getUTrib: String;
    function getVProd: String;
    function getVUnCom: String;
    function getVUnTrib: String;
    function getXProd: String;
    procedure setCEAN(const Value: String);
    procedure setCEANTrib(const Value: String);
    procedure setCFOP(const Value: String);
    procedure setCProd(const Value: String);
    procedure setIndTot(const Value: String);
    procedure setNCM(const Value: String);
    procedure setQTrib(const Value: String);
    procedure setUCom(const Value: String);
    procedure setUTrib(const Value: String);
    procedure setVProd(const Value: String);
    procedure setVUnCom(const Value: String);
    procedure setVUnTrib(const Value: String);
    procedure setXProd(const Value: String);
    function getQCom: String;
    procedure setQCom(const Value: String);


  public
    Constructor Create_TDET_PROD_ITEM;
    Destructor Destroy_TDET_PROD_ITEM;

    procedure PreencherDetProd;

    property NodeDet : IXMLNode read FNodeDet write FNodeDet;
    property NodeProd : IXMLNode read FNodeProd write FNodeProd;
    property NodeInfProd : IXMLNode read FNodeInfProd write FNodeInfProd;

    property TCProd : String read getCProd write setCProd;
    property TCEAN : String read getCEAN write setCEAN;
    property TXProd : String read getXProd write setXProd;
    property TNCM : String read getNCM write setNCM;
    property TCFOP : String read getCFOP write setCFOP;
    property TUCom : String read getUCom write setUCom;
    property TQCom : String read getQCom write setQCom;
    property TVUnCom : String read getVUnCom write setVUnCom;
    property TVProd : String read getVProd write setVProd;
    property TCEANTrib : String read getCEANTrib write setCEANTrib;
    property TUTrib : String read getUTrib write setUTrib;
    property TQTrib : String read getQTrib write setQTrib;
    property TVUnTrib : String read getVUnTrib write setVUnTrib;
    property TIndTot : String read getIndTot write setIndTot;

end;

implementation

{ TDET_PROD_ITEM }

constructor TDET_PROD_ITEM.Create_TDET_PROD_ITEM;
begin

end;

destructor TDET_PROD_ITEM.Destroy_TDET_PROD_ITEM;
begin

end;

function TDET_PROD_ITEM.getCEAN: String;
begin
  result := cEAN;
end;

function TDET_PROD_ITEM.getCEANTrib: String;
begin
  result := cEANTrib;
end;

function TDET_PROD_ITEM.getCFOP: String;
begin
  result := CFOP;
end;

function TDET_PROD_ITEM.getCProd: String;
begin
  result := cProd;
end;

function TDET_PROD_ITEM.getIndTot: String;
begin
  result := indTot;
end;

function TDET_PROD_ITEM.getNCM: String;
begin
  result := NCM;
end;

function TDET_PROD_ITEM.getQCom: String;
begin
  result := qCom;
end;

function TDET_PROD_ITEM.getQTrib: String;
begin
  result := qTrib;
end;

function TDET_PROD_ITEM.getUCom: String;
begin
  result := uCom;
end;

function TDET_PROD_ITEM.getUTrib: String;
begin
  result := uTrib;
end;

function TDET_PROD_ITEM.getVProd: String;
begin
  result := vProd;
end;

function TDET_PROD_ITEM.getVUnCom: String;
begin
  result := vUnCom;
end;

function TDET_PROD_ITEM.getVUnTrib: String;
begin
  result := vUnTrib;
end;

function TDET_PROD_ITEM.getXProd: String;
begin
  result := xProd;
end;

procedure TDET_PROD_ITEM.setCEAN(const Value: String);
begin
  cEAN := Value;
end;

procedure TDET_PROD_ITEM.setCEANTrib(const Value: String);
begin
  cEANTrib := Value;
end;

procedure TDET_PROD_ITEM.setCFOP(const Value: String);
begin
  CFOP := Value;
end;

procedure TDET_PROD_ITEM.setCProd(const Value: String);
begin
  cProd := Value;
end;

procedure TDET_PROD_ITEM.setIndTot(const Value: String);
begin
  indTot := Value;
end;

procedure TDET_PROD_ITEM.setNCM(const Value: String);
begin
  NCM := Value;
end;

procedure TDET_PROD_ITEM.setQCom(const Value: String);
begin
  qCom := Value;
end;

procedure TDET_PROD_ITEM.setQTrib(const Value: String);
begin
  qTrib := Value;
end;

procedure TDET_PROD_ITEM.setUCom(const Value: String);
begin
  uCom := Value;
end;

procedure TDET_PROD_ITEM.setUTrib(const Value: String);
begin
  uTrib := Value;
end;

procedure TDET_PROD_ITEM.setVProd(const Value: String);
begin
  vProd := Value;
end;

procedure TDET_PROD_ITEM.setVUnCom(const Value: String);
begin
  vUnCom := Value;
end;

procedure TDET_PROD_ITEM.setVUnTrib(const Value: String);
begin
  vUnTrib := Value;
end;

procedure TDET_PROD_ITEM.setXProd(const Value: String);
begin
  xProd := Value;
end;

procedure TDET_PROD_ITEM.PreencherDetProd;
begin
 if Assigned(FNodeProd) then
  begin
    if FNodeProd.ChildNodes.FindNode('cProd') <> nil then
        cProd := FNodeProd.ChildNodes.FindNode('cProd').Text;

    if FNodeProd.ChildNodes.FindNode('cEAN') <> nil then
        cEAN := FNodeProd.ChildNodes.FindNode('cEAN').Text;

    if FNodeProd.ChildNodes.FindNode('xProd') <> nil then
        xProd := FNodeProd.ChildNodes.FindNode('xProd').Text;

    if FNodeProd.ChildNodes.FindNode('NCM') <> nil then
        NCM := FNodeProd.ChildNodes.FindNode('NCM').Text;

    if FNodeProd.ChildNodes.FindNode('CFOP') <> nil then
        CFOP := FNodeProd.ChildNodes.FindNode('CFOP').Text;

    if FNodeProd.ChildNodes.FindNode('uCom') <> nil then
        uCom := FNodeProd.ChildNodes.FindNode('uCom').Text;

    if FNodeProd.ChildNodes.FindNode('qCom') <> nil then
        qCom := FNodeProd.ChildNodes.FindNode('qCom').Text;

    if FNodeProd.ChildNodes.FindNode('vUnCom') <> nil then
        vUnCom := FNodeProd.ChildNodes.FindNode('vUnCom').Text;

    if FNodeProd.ChildNodes.FindNode('vProd') <> nil then
        vProd := FNodeProd.ChildNodes.FindNode('vProd').Text;

    if FNodeProd.ChildNodes.FindNode('cEANTrib') <> nil then
        cEANTrib := FNodeProd.ChildNodes.FindNode('cEANTrib').Text;

    if FNodeProd.ChildNodes.FindNode('uTrib') <> nil then
        uTrib := FNodeProd.ChildNodes.FindNode('uTrib').Text;

    if FNodeProd.ChildNodes.FindNode('vUnTrib') <> nil then
        vUnTrib := FNodeProd.ChildNodes.FindNode('vUnTrib').Text;

    if FNodeProd.ChildNodes.FindNode('indTot') <> nil then
        indTot := FNodeProd.ChildNodes.FindNode('indTot').Text;

   end;
end;

end.
