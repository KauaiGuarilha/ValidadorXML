unit RODO_INF_VEICTRACAO_MDFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TRODO_INF_VEICTRACAO_MDFE_Doc = class

  private
    cInt, placa, RENAVAM, tara, capKG, capM3, tpRod, tpCar, UF : String; //veicTracao
    xNome, CPF : String;  //condutor

    FNodeRodoVeicT: IXMLNode;

    function getCapKG: String;
    function getCapM3: String;
    function getCInt: String;
    function getCPF: String;
    function getPlaca: String;
    function getRENAVAM: String;
    function getTara: String;
    function getTpCar: String;
    function getTpRod: String;
    function getUF: String;
    function getXNome: String;
    procedure setCapKG(const Value: String);
    procedure setCapM3(const Value: String);
    procedure setCInt(const Value: String);
    procedure setCPF(const Value: String);
    procedure setPlaca(const Value: String);
    procedure setRENAVAM(const Value: String);
    procedure setTara(const Value: String);
    procedure setTpCar(const Value: String);
    procedure setTpRod(const Value: String);
    procedure setUF(const Value: String);
    procedure setXNome(const Value: String);


  public
    Constructor Create_TRODO_INF_VEICTRACAO_MDFE_Doc;
    Destructor Destroy_TRODO_INF_VEICTRACAO_MDFE_Doc;

    procedure PreencheRodoVeicT;

    property NodeRodoVeicT: IXMLNode read FNodeRodoVeicT write FNodeRodoVeicT;
    property TCInt : String read getCInt write setCInt;
    property TPlaca : String read getPlaca write setPlaca;
    property TRENAVAM : String read getRENAVAM write setRENAVAM;
    property TTara : String read getTara write setTara;
    property TCapKG : String read getCapKG write setCapKG;
    property TCapM3 : String read getCapM3 write setCapM3;
    property TTpRod : String read getTpRod write setTpRod;
    property TTpCar : String read getTpCar write setTpCar;
    property TUF : String read getUF write setUF;
    property TXNome : String read getXNome write setXNome;
    property TCPF : String read getCPF write setCPF;
end;

implementation

{ TRODO_INF_VEICTRACAO_MDFE_Doc }

constructor TRODO_INF_VEICTRACAO_MDFE_Doc.Create_TRODO_INF_VEICTRACAO_MDFE_Doc;
begin

end;

destructor TRODO_INF_VEICTRACAO_MDFE_Doc.Destroy_TRODO_INF_VEICTRACAO_MDFE_Doc;
begin

end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getCapKG: String;
begin
  result := capKG;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getCapM3: String;
begin
  result := capM3;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getCInt: String;
begin
  result := cInt;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getCPF: String;
begin
  result := CPF;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getPlaca: String;
begin
  result := placa;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getRENAVAM: String;
begin
  result := RENAVAM;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getTara: String;
begin
  result := tara;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getTpCar: String;
begin
  result := tpCar;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getTpRod: String;
begin
  result := tpRod;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getUF: String;
begin
  result := UF;
end;

function TRODO_INF_VEICTRACAO_MDFE_Doc.getXNome: String;
begin
  result := xNome;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setCapKG(const Value: String);
begin
  capKG := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setCapM3(const Value: String);
begin
  capM3 := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setCInt(const Value: String);
begin
  cInt := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setCPF(const Value: String);
begin
  CPF := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setPlaca(const Value: String);
begin
  placa := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setRENAVAM(const Value: String);
begin
  RENAVAM := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setTara(const Value: String);
begin
  tara := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setTpCar(const Value: String);
begin
  tpCar := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setTpRod(const Value: String);
begin
  tpRod := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setUF(const Value: String);
begin
  UF := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.setXNome(const Value: String);
begin
  xNome := Value;
end;

procedure TRODO_INF_VEICTRACAO_MDFE_Doc.PreencheRodoVeicT;
begin
  if Assigned(FNodeRodoVeicT) then
    begin
      if FNodeRodoVeicT.ChildNodes.FindNode('cInt') <> nil then
        cInt := FNodeRodoVeicT.ChildNodes.FindNode('cInt').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('placa') <> nil then
        placa := FNodeRodoVeicT.ChildNodes.FindNode('placa').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('RENAVAM') <> nil then
        RENAVAM := FNodeRodoVeicT.ChildNodes.FindNode('RENAVAM').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('tara') <> nil then
        tara := FNodeRodoVeicT.ChildNodes.FindNode('tara').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('capKG') <> nil then
        capKG := FNodeRodoVeicT.ChildNodes.FindNode('capKG').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('capM3') <> nil then
        capM3 := FNodeRodoVeicT.ChildNodes.FindNode('capM3').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('tpRod') <> nil then
        tpRod := FNodeRodoVeicT.ChildNodes.FindNode('tpRod').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('tpCar') <> nil then
        tpCar := FNodeRodoVeicT.ChildNodes.FindNode('tpCar').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('UF') <> nil then
        UF := FNodeRodoVeicT.ChildNodes.FindNode('UF').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('xNome') <> nil then
        xNome := FNodeRodoVeicT.ChildNodes.FindNode('xNome').Text;

      if FNodeRodoVeicT.ChildNodes.FindNode('CPF') <> nil then
        CPF := FNodeRodoVeicT.ChildNodes.FindNode('CPF').Text;
    end;
end;

end.
