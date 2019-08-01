unit INFDOC_MDFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TINFDOC_MDFE_Doc = class

  private
    cMunDescarga, xMunDescarga : String; //infMunDescarga
    chNFe : String; //infNFe

    FNodeInfDoc: IXMLNode;

    function getChNFe: String;
    function getCMunDescarga: String;
    function getXMunDescarga: String;
    procedure setChNFe(const Value: String);
    procedure setCMunDescarga(const Value: String);
    procedure setXMunDescarga(const Value: String);

  public
    Constructor Create_TINFDOC_MDFE_Doc;
    Destructor Destroy_TINFDOC_MDFE_Doc;

    procedure PreencheInfDoc;

    property NodeInfDoc: IXMLNode read FNodeInfDoc write FNodeInfDoc;
    property TCMunDescarga : String read getCMunDescarga write setCMunDescarga;
    property TXMunDescarga : String read getXMunDescarga write setXMunDescarga;
    property TChNFe : String read getChNFe write setChNFe;
end;

implementation

{ TINFDOC_MDFE_Doc }

constructor TINFDOC_MDFE_Doc.Create_TINFDOC_MDFE_Doc;
begin

end;

destructor TINFDOC_MDFE_Doc.Destroy_TINFDOC_MDFE_Doc;
begin

end;

function TINFDOC_MDFE_Doc.getChNFe: String;
begin
  result := chNFe;
end;

function TINFDOC_MDFE_Doc.getCMunDescarga: String;
begin
  result := cMunDescarga;
end;

function TINFDOC_MDFE_Doc.getXMunDescarga: String;
begin
  result := xMunDescarga;
end;

procedure TINFDOC_MDFE_Doc.setChNFe(const Value: String);
begin
  chNFe := Value;
end;

procedure TINFDOC_MDFE_Doc.setCMunDescarga(const Value: String);
begin
  cMunDescarga := Value;
end;

procedure TINFDOC_MDFE_Doc.setXMunDescarga(const Value: String);
begin
  xMunDescarga := Value;
end;

procedure TINFDOC_MDFE_Doc.PreencheInfDoc;
begin
  if Assigned(FNodeInfDoc) then
    begin
      if FNodeInfDoc.ChildNodes.FindNode('cMunDescarga') <> nil then //infMunDescarga
        cMunDescarga := FNodeInfDoc.ChildNodes.FindNode('cMunDescarga').Text;

      if FNodeInfDoc.ChildNodes.FindNode('xMunDescarga') <> nil then
        xMunDescarga := FNodeInfDoc.ChildNodes.FindNode('xMunDescarga').Text;

      if FNodeInfDoc.ChildNodes.FindNode('chNFe') <> nil then //infNFe
        chNFe := FNodeInfDoc.ChildNodes.FindNode('chNFe').Text;
    end;
end;

end.
