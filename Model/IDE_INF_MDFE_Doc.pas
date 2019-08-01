unit IDE_INF_MDFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TIDE_INF_MDFE_Doc = class

  private
    cMunCarrega, xMunCarrega : String;

    FNodeIdeInf: IXMLNode;

    function getCMunCarrega: String;
    function getXMunCarrega: String;
    procedure setCMunCarrega(const Value: String);
    procedure setXMunCarrega(const Value: String);

  public
    Constructor Create_TIDE_INF_MDFE_Doc;
    Destructor Destroy_TIDE_INF_MDFE_Doc;

    procedure PreencheIdeInf;

    property NodeIdeInf: IXMLNode read FNodeIdeInf write FNodeIdeInf;
    property TcMunCarrega : String read getCMunCarrega write setCMunCarrega;
    property TxMunCarrega : String read getXMunCarrega write setXMunCarrega;


end;

implementation

{ TIDE_INF_MDFE_Doc }

constructor TIDE_INF_MDFE_Doc.Create_TIDE_INF_MDFE_Doc;
begin

end;

destructor TIDE_INF_MDFE_Doc.Destroy_TIDE_INF_MDFE_Doc;
begin

end;

function TIDE_INF_MDFE_Doc.getCMunCarrega: String;
begin
  result := cMunCarrega
end;

function TIDE_INF_MDFE_Doc.getXMunCarrega: String;
begin
  result := xMunCarrega;
end;

procedure TIDE_INF_MDFE_Doc.setCMunCarrega(const Value: String);
begin
  cMunCarrega := Value;
end;

procedure TIDE_INF_MDFE_Doc.setXMunCarrega(const Value: String);
begin
  xMunCarrega := Value;
end;

procedure TIDE_INF_MDFE_Doc.PreencheIdeInf;
begin
  if Assigned(FNodeIdeInf) then
    begin
      if FNodeIdeInf.ChildNodes.FindNode('cMunCarrega') <> nil then
        cMunCarrega := FNodeIdeInf.ChildNodes.FindNode('cMunCarrega').Text;

      if FNodeIdeInf.ChildNodes.FindNode('xMunCarrega') <> nil then
        xMunCarrega := FNodeIdeInf.ChildNodes.FindNode('xMunCarrega').Text;
    end;
end;

end.
