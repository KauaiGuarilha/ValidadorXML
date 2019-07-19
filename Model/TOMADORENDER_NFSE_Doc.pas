unit TOMADORENDER_NFSE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TTOMADORENDER_NFSE_Doc = class

  private
    TEndereco, TENumero, TEComple, TEBairro, TECodMun, TEdescMun, TEUf, TECep : String;

    FNodeTomadorEnder: IXMLNode;

    function getTEBairro: String;
    function getTECep: String;
    function getTECodMun: String;
    function getTEComple: String;
    function getTEdescMun: String;
    function getTEndereco: String;
    function getTENumero: String;
    function getTEUf: String;
    procedure setTEBairro(const Value: String);
    procedure setTECep(const Value: String);
    procedure setTECodMun(const Value: String);
    procedure setTEComple(const Value: String);
    procedure setTEdescMun(const Value: String);
    procedure setTEndereco(const Value: String);
    procedure setTENumero(const Value: String);
    procedure setTEUf(const Value: String);

  public
    Constructor Create_TTOMADORENDER_NFSE_Doc;
    Destructor Destroy_TTOMADORENDER_NFSE_Doc;

    procedure PreencherTomadorEnder;

    property NodeTomadorEnder : IXMLNode read FNodeTomadorEnder write FNodeTomadorEnder;
    property TTEndereco : String read getTEndereco write setTEndereco;
    property TTENumero : String read getTENumero write setTENumero;
    property TTEComple : String read getTEComple write setTEComple;
    property TTEBairro : String read getTEBairro write setTEBairro;
    property TTECodMun : String read getTECodMun write setTECodMun;
    property TTEdescMun : String read getTEdescMun write setTEdescMun;
    property TTEUf : String read getTEUf write setTEUf;
    property TTECep : String read getTECep write setTECep;

end;

implementation

{ TTOMADORENDER_NFSE_Doc }

constructor TTOMADORENDER_NFSE_Doc.Create_TTOMADORENDER_NFSE_Doc;
begin

end;

destructor TTOMADORENDER_NFSE_Doc.Destroy_TTOMADORENDER_NFSE_Doc;
begin

end;

function TTOMADORENDER_NFSE_Doc.getTEBairro: String;
begin
  result := TEBairro;
end;

function TTOMADORENDER_NFSE_Doc.getTECep: String;
begin
  result := TECep;
end;

function TTOMADORENDER_NFSE_Doc.getTECodMun: String;
begin
  result := TECodMun;
end;

function TTOMADORENDER_NFSE_Doc.getTEComple: String;
begin
  result := TEComple;
end;

function TTOMADORENDER_NFSE_Doc.getTEdescMun: String;
begin
  result := TEdescMun;
end;

function TTOMADORENDER_NFSE_Doc.getTEndereco: String;
begin
  result := TEndereco;
end;

function TTOMADORENDER_NFSE_Doc.getTENumero: String;
begin
  result := TENumero;
end;

function TTOMADORENDER_NFSE_Doc.getTEUf: String;
begin
  result := TEUf;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEBairro(const Value: String);
begin
  TEBairro := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTECep(const Value: String);
begin
  TECep := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTECodMun(const Value: String);
begin
  TECodMun := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEComple(const Value: String);
begin
  TEComple := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEdescMun(const Value: String);
begin
  TEdescMun := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEndereco(const Value: String);
begin
  TEndereco := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTENumero(const Value: String);
begin
  TENumero := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.setTEUf(const Value: String);
begin
  TEUf := Value;
end;

procedure TTOMADORENDER_NFSE_Doc.PreencherTomadorEnder;
begin
  if Assigned(FNodeTomadorEnder) then
  begin
    if FNodeTomadorEnder.ChildNodes.FindNode('Endereco') <> nil then
       TEndereco := FNodeTomadorEnder.ChildNodes.FindNode('Endereco').Text;

    if FNodeTomadorEnder.ChildNodes.FindNode('Numero') <> nil then
       TENumero := FNodeTomadorEnder.ChildNodes.FindNode('Numero').Text;

    if FNodeTomadorEnder.ChildNodes.FindNode('Bairro') <> nil then
       TEBairro := FNodeTomadorEnder.ChildNodes.FindNode('Bairro').Text;

    if FNodeTomadorEnder.ChildNodes.FindNode('Complemento') <> nil then
       TEComple := FNodeTomadorEnder.ChildNodes.FindNode('Complemento').Text;

    if FNodeTomadorEnder.ChildNodes.FindNode('CodigoMunicipio') <> nil then
       TECodMun := FNodeTomadorEnder.ChildNodes.FindNode('CodigoMunicipio').Text;

    if FNodeTomadorEnder.ChildNodes.FindNode('DescricaoMunicipio') <> nil then
       TEdescMun := FNodeTomadorEnder.ChildNodes.FindNode('DescricaoMunicipio').Text;

    if FNodeTomadorEnder.ChildNodes.FindNode('Uf') <> nil then
       TEUf := FNodeTomadorEnder.ChildNodes.FindNode('Uf').Text;

    if FNodeTomadorEnder.ChildNodes.FindNode('Cep') <> nil then
       TECEP := FNodeTomadorEnder.ChildNodes.FindNode('Cep').Text;
  end;

end;

end.
