unit RODO_INF_VEICREBOQ_MDFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TRODO_INF_VEICREBOQ_MDFE_Doc = class

  private
    cInt, placa, RENAVAM, tara, capKG, capM3, tpCar, UF : String;

    FNodeRodoVeicR: IXMLNode;
    function getCapKG: String;
    function getCapM3: String;
    function getCInt: String;
    function getPlaca: String;
    function getRENAVAM: String;
    function getTara: String;
    function getTpCar: String;
    function getUF: String;
    procedure setCapKG(const Value: String);
    procedure setCapM3(const Value: String);
    procedure setCInt(const Value: String);
    procedure setPlaca(const Value: String);
    procedure setRENAVAM(const Value: String);
    procedure setTara(const Value: String);
    procedure setTpCar(const Value: String);
    procedure setUF(const Value: String);

  public
    Constructor Create_TRODO_INF_VEICREBOQ_MDFE_Doc;
    Destructor Destroy_TRODO_INF_VEICREBOQ_MDFE_Doc;

    procedure PreencheRodoVeicR;

    property NodeRodoVeicR: IXMLNode read FNodeRodoVeicR write FNodeRodoVeicR;
    property TCInt : String read getCInt write setCInt;
    property TPlaca : String read getPlaca write setPlaca;
    property TRENAVAM : String read getRENAVAM write setRENAVAM;
    property TTara : String read getTara write setTara;
    property TCapKG : String read getCapKG write setCapKG;
    property TCapM3 : String read getCapM3 write setCapM3;
    property TTpCar : String read getTpCar write setTpCar;
    property TUF : String read getUF write setUF;
end;

implementation

{ TRODO_INF_VEICREBOQ_MDFE_Doc }

constructor TRODO_INF_VEICREBOQ_MDFE_Doc.Create_TRODO_INF_VEICREBOQ_MDFE_Doc;
begin

end;

destructor TRODO_INF_VEICREBOQ_MDFE_Doc.Destroy_TRODO_INF_VEICREBOQ_MDFE_Doc;
begin

end;

function TRODO_INF_VEICREBOQ_MDFE_Doc.getCapKG: String;
begin
  result := capKG;
end;

function TRODO_INF_VEICREBOQ_MDFE_Doc.getCapM3: String;
begin
  result := capM3;
end;

function TRODO_INF_VEICREBOQ_MDFE_Doc.getCInt: String;
begin
  result := cInt;
end;

function TRODO_INF_VEICREBOQ_MDFE_Doc.getPlaca: String;
begin
  result := placa;
end;

function TRODO_INF_VEICREBOQ_MDFE_Doc.getRENAVAM: String;
begin
  result := RENAVAM;
end;

function TRODO_INF_VEICREBOQ_MDFE_Doc.getTara: String;
begin
  result := tara;
end;

function TRODO_INF_VEICREBOQ_MDFE_Doc.getTpCar: String;
begin
  result := tpCar;
end;

function TRODO_INF_VEICREBOQ_MDFE_Doc.getUF: String;
begin
  result := UF;
end;

procedure TRODO_INF_VEICREBOQ_MDFE_Doc.setCapKG(const Value: String);
begin
  capKG := Value;
end;

procedure TRODO_INF_VEICREBOQ_MDFE_Doc.setCapM3(const Value: String);
begin
  capM3 := Value;
end;

procedure TRODO_INF_VEICREBOQ_MDFE_Doc.setCInt(const Value: String);
begin
  cInt := Value;
end;

procedure TRODO_INF_VEICREBOQ_MDFE_Doc.setPlaca(const Value: String);
begin
  placa := Value;
end;

procedure TRODO_INF_VEICREBOQ_MDFE_Doc.setRENAVAM(const Value: String);
begin
  RENAVAM := Value;
end;

procedure TRODO_INF_VEICREBOQ_MDFE_Doc.setTara(const Value: String);
begin
  tara := Value;
end;

procedure TRODO_INF_VEICREBOQ_MDFE_Doc.setTpCar(const Value: String);
begin
  tpCar := Value;
end;

procedure TRODO_INF_VEICREBOQ_MDFE_Doc.setUF(const Value: String);
begin
  UF := Value;
end;

procedure TRODO_INF_VEICREBOQ_MDFE_Doc.PreencheRodoVeicR;
begin
  if Assigned(FNodeRodoVeicR) then
    begin
      if FNodeRodoVeicR.ChildNodes.FindNode('cInt') <> nil then
        cInt := FNodeRodoVeicR.ChildNodes.FindNode('cInt').Text;

      if FNodeRodoVeicR.ChildNodes.FindNode('placa') <> nil then
        placa := FNodeRodoVeicR.ChildNodes.FindNode('placa').Text;

      if FNodeRodoVeicR.ChildNodes.FindNode('RENAVAM') <> nil then
        RENAVAM := FNodeRodoVeicR.ChildNodes.FindNode('RENAVAM').Text;

      if FNodeRodoVeicR.ChildNodes.FindNode('tara') <> nil then
        tara := FNodeRodoVeicR.ChildNodes.FindNode('tara').Text;

      if FNodeRodoVeicR.ChildNodes.FindNode('capKG') <> nil then
        capKG := FNodeRodoVeicR.ChildNodes.FindNode('capKG').Text;

      if FNodeRodoVeicR.ChildNodes.FindNode('capM3') <> nil then
        capM3 := FNodeRodoVeicR.ChildNodes.FindNode('capM3').Text;

      if FNodeRodoVeicR.ChildNodes.FindNode('tpCar') <> nil then
        tpCar := FNodeRodoVeicR.ChildNodes.FindNode('tpCar').Text;

      if FNodeRodoVeicR.ChildNodes.FindNode('UF') <> nil then
        UF := FNodeRodoVeicR.ChildNodes.FindNode('UF').Text;
    end;
end;

end.
