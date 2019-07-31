unit RODO_INF_MDFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TRODO_INF_MDFE_Doc = class

  private
    RNTRC : String; // infANTT
    CIOT, CPF : String; // infCIOT

    FNodeRodoInf: IXMLNode;

    function getCIOT: String;
    function getCPF: String;
    function getRNTRC: String;
    procedure setCIOT(const Value: String);
    procedure setCPF(const Value: String);
    procedure setRNTRC(const Value: String);

  public
    Constructor Create_TRODO_INF_MDFE_Doc;
    Destructor Destroy_TRODO_INF_MDFE_Doc;

    procedure PreencheRodoInf;

    property NodeRodoInf: IXMLNode read FNodeRodoInf write FNodeRodoInf;
    property TRNTRC : String read getRNTRC write setRNTRC;
    property TCIOT : String read getCIOT write setCIOT;
    property TCPF : String read getCPF write setCPF;
end;

implementation

{ TRODO_INF_MDFE_Doc }

constructor TRODO_INF_MDFE_Doc.Create_TRODO_INF_MDFE_Doc;
begin

end;

destructor TRODO_INF_MDFE_Doc.Destroy_TRODO_INF_MDFE_Doc;
begin

end;

function TRODO_INF_MDFE_Doc.getCIOT: String;
begin
  result := CIOT;
end;

function TRODO_INF_MDFE_Doc.getCPF: String;
begin
  result := CPF;
end;

function TRODO_INF_MDFE_Doc.getRNTRC: String;
begin
  result := RNTRC;
end;

procedure TRODO_INF_MDFE_Doc.setCIOT(const Value: String);
begin
  CIOT := Value;
end;

procedure TRODO_INF_MDFE_Doc.setCPF(const Value: String);
begin
  CPF := Value;
end;

procedure TRODO_INF_MDFE_Doc.setRNTRC(const Value: String);
begin
  RNTRC := Value;
end;

procedure TRODO_INF_MDFE_Doc.PreencheRodoInf;
begin
  if Assigned(FNodeRodoInf) then
    begin
      if FNodeRodoInf.ChildNodes.FindNode('RNTRC') <> nil then
        RNTRC := FNodeRodoInf.ChildNodes.FindNode('RNTRC').Text;

      if FNodeRodoInf.ChildNodes.FindNode('CIOT') <> nil then
        CIOT := FNodeRodoInf.ChildNodes.FindNode('CIOT').Text;

      if FNodeRodoInf.ChildNodes.FindNode('CPF') <> nil then
        CPF := FNodeRodoInf.ChildNodes.FindNode('CPF').Text;
    end;
end;

end.
