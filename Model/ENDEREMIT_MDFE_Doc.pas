unit ENDEREMIT_MDFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TENDEREMIT_MDFE_Doc = class

  private
    xLgr, nro, xBairro, cMun, xMun, CEP, UF, fone, email : String;

    FNodeEnderEmit: IXMLNode;

    function getCEP: String;
    function getCMun: String;
    function getEmail: String;
    function getEUF: String;
    function getFone: String;
    function getNro: String;
    function getXBairro: String;
    function getXLgr: String;
    function getXMun: String;
    procedure setCEP(const Value: String);
    procedure setCMun(const Value: String);
    procedure setEmail(const Value: String);
    procedure setEUF(const Value: String);
    procedure setFone(const Value: String);
    procedure setNro(const Value: String);
    procedure setXBairro(const Value: String);
    procedure setXLgr(const Value: String);
    procedure setXMun(const Value: String);

  public
    Constructor Create_TENDEREMIT_MDFE_Doc;
    Destructor Destroy_TENDEREMIT_MDFE_Doc;

    procedure PreencherEnderEmit;

    property NodeEnderEmit : IXMLNode read FNodeEnderEmit write FNodeEnderEmit;
    property TXLgr : String read getXLgr write setXLgr;
    property TNro : String read getNro write setNro;
    property TXBairro : String read getXBairro write setXBairro;
    property TCMun : String read getCMun write setCMun;
    property TXMun : String read getXMun write setXMun;
    property TCEP : String read getCEP write setCEP;
    property TEUF : String read getEUF write setEUF;
    property TFone : String read getFone write setFone;
    property TEmail : String read getEmail write setEmail;
end;

implementation

{ TENDEREMIT_MDFE_Doc }

constructor TENDEREMIT_MDFE_Doc.Create_TENDEREMIT_MDFE_Doc;
begin

end;

destructor TENDEREMIT_MDFE_Doc.Destroy_TENDEREMIT_MDFE_Doc;
begin

end;

function TENDEREMIT_MDFE_Doc.getCEP: String;
begin
  result := CEP;
end;

function TENDEREMIT_MDFE_Doc.getCMun: String;
begin
  result := cMun;
end;

function TENDEREMIT_MDFE_Doc.getEmail: String;
begin
  result := email;
end;

function TENDEREMIT_MDFE_Doc.getEUF: String;
begin
  result := UF;
end;

function TENDEREMIT_MDFE_Doc.getFone: String;
begin
  result := fone;
end;

function TENDEREMIT_MDFE_Doc.getNro: String;
begin
  result := nro;
end;

function TENDEREMIT_MDFE_Doc.getXBairro: String;
begin
  result := xBairro;
end;

function TENDEREMIT_MDFE_Doc.getXLgr: String;
begin
  result := xLgr;
end;

function TENDEREMIT_MDFE_Doc.getXMun: String;
begin
  result := xMun;
end;

procedure TENDEREMIT_MDFE_Doc.setCEP(const Value: String);
begin
  CEP := Value;
end;

procedure TENDEREMIT_MDFE_Doc.setCMun(const Value: String);
begin
  cMun := Value;
end;

procedure TENDEREMIT_MDFE_Doc.setEmail(const Value: String);
begin
  email := Value;
end;

procedure TENDEREMIT_MDFE_Doc.setEUF(const Value: String);
begin
  UF := Value;
end;

procedure TENDEREMIT_MDFE_Doc.setFone(const Value: String);
begin
  fone := Value;
end;

procedure TENDEREMIT_MDFE_Doc.setNro(const Value: String);
begin
  nro := Value;
end;

procedure TENDEREMIT_MDFE_Doc.setXBairro(const Value: String);
begin
  xBairro := Value;
end;

procedure TENDEREMIT_MDFE_Doc.setXLgr(const Value: String);
begin
  xLgr := Value;
end;

procedure TENDEREMIT_MDFE_Doc.setXMun(const Value: String);
begin
  xMun := Value;
end;

procedure TENDEREMIT_MDFE_Doc.PreencherEnderEmit;
begin
  if Assigned(FNodeEnderEmit) then
   begin
     if FNodeEnderEmit.ChildNodes.FindNode('xLgr') <> nil then
        xLgr := FNodeEnderEmit.ChildNodes.FindNode('xLgr').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('nro') <> nil then
        nro := FNodeEnderEmit.ChildNodes.FindNode('nro').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('xBairro') <> nil then
        xBairro := FNodeEnderEmit.ChildNodes.FindNode('xBairro').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('cMun') <> nil then
        cMun := FNodeEnderEmit.ChildNodes.FindNode('cMun').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('xMun') <> nil then
        xMun := FNodeEnderEmit.ChildNodes.FindNode('xMun').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('UF') <> nil then
        UF := FNodeEnderEmit.ChildNodes.FindNode('UF').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('CEP') <> nil then
        CEP := FNodeEnderEmit.ChildNodes.FindNode('CEP').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('fone') <> nil then
        fone := FNodeEnderEmit.ChildNodes.FindNode('fone').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('email') <> nil then
        email := FNodeEnderEmit.ChildNodes.FindNode('email').Text;
   end;
end;

end.
