unit ENDEREMIT_NFE_Doc;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TENDEREMIT_NFE_Doc = class

  private
    xLgr, nro, xCpl, xBairro, cMun, xMun, EUF, CEP, cPais, xPais, fone: String;

    FNodeEnderEmit: IXMLNode;

    function getCEP: String;
    function getCMun: String;
    function getCPais: String;
    function getXPais: String;
    function getEUF: String;
    function getFone: String;
    function getNro: String;
    function getXBairro: String;
    function getXCpl: String;
    function getXLgr: String;
    function getXMun: String;
    procedure setCEP(const Value: String);
    procedure setCMun(const Value: String);
    procedure setCPais(const Value: String);
    procedure setXPais(const Value: String);
    procedure setEUF(const Value: String);
    procedure setFone(const Value: String);
    procedure setNro(const Value: String);
    procedure setXBairro(const Value: String);
    procedure setXCpl(const Value: String);
    procedure setXLgr(const Value: String);
    procedure setXMun(const Value: String);

  public
    Constructor Create_TENDEREMIT_NFE_Doc;
    Destructor Destroy_TENDEREMIT_NFE_Doc;

    procedure PreencherEnderEmit;

    property NodeEnderEmit : IXMLNode read FNodeEnderEmit write FNodeEnderEmit;
    property TXLgr : String read getXLgr write setXLgr;
    property TNro : String read getNro write setNro;
    property TXCpl : String read getXCpl write setXCpl;
    property TXBairro : String read getXBairro write setXBairro;
    property TCMun : String read getCMun write setCMun;
    property TXMun : String read getXMun write setXMun;
    property TEUF : String read getEUF write setEUF;
    property TCEP : String read getCEP write setCEP;
    property TCPais : String read getCPais write setCPais;
    property TXPais : String read getXPais write setXPais;
    property TFone : String read getFone write setFone;
end;

implementation

{ TENDEREMIT_NFE_Doc }

constructor TENDEREMIT_NFE_Doc.Create_TENDEREMIT_NFE_Doc;
begin

end;

destructor TENDEREMIT_NFE_Doc.Destroy_TENDEREMIT_NFE_Doc;
begin

end;

function TENDEREMIT_NFE_Doc.getCEP: String;
begin
    result := CEP;
end;

function TENDEREMIT_NFE_Doc.getCMun: String;
begin
    result := cMun;
end;

function TENDEREMIT_NFE_Doc.getCPais: String;
begin
    result := cPais;
end;

function TENDEREMIT_NFE_Doc.getEUF: String;
begin
    result := EUF;
end;

function TENDEREMIT_NFE_Doc.getFone: String;
begin
    result := fone;
end;

function TENDEREMIT_NFE_Doc.getNro: String;
begin
    result := nro;
end;

function TENDEREMIT_NFE_Doc.getXBairro: String;
begin
    result := xBairro;
end;

function TENDEREMIT_NFE_Doc.getXCpl: String;
begin
    result := xCpl;
end;

function TENDEREMIT_NFE_Doc.getXLgr: String;
begin
    result := xLgr;
end;

function TENDEREMIT_NFE_Doc.getXMun: String;
begin
    result := xMun;
end;

function TENDEREMIT_NFE_Doc.getXPais: String;
begin
    result := xPais;
end;

procedure TENDEREMIT_NFE_Doc.setCEP(const Value: String);
begin
    CEP := Value;
end;

procedure TENDEREMIT_NFE_Doc.setCMun(const Value: String);
begin
    cMun :=  Value;
end;

procedure TENDEREMIT_NFE_Doc.setCPais(const Value: String);
begin
   cPais := Value;
end;

procedure TENDEREMIT_NFE_Doc.setEUF(const Value: String);
begin
   EUF := Value;
end;

procedure TENDEREMIT_NFE_Doc.setFone(const Value: String);
begin
   fone := Value;
end;

procedure TENDEREMIT_NFE_Doc.setNro(const Value: String);
begin
    nro := Value;
end;

procedure TENDEREMIT_NFE_Doc.setXBairro(const Value: String);
begin
    xBairro :=  Value;
end;

procedure TENDEREMIT_NFE_Doc.setXCpl(const Value: String);
begin
    xCpl := Value;
end;

procedure TENDEREMIT_NFE_Doc.setXLgr(const Value: String);
begin
    xLgr := Value;
end;

procedure TENDEREMIT_NFE_Doc.setXMun(const Value: String);
begin
    xMun := Value;
end;

procedure TENDEREMIT_NFE_Doc.setXPais(const Value: String);
begin
    xPais := Value;
end;

procedure TENDEREMIT_NFE_Doc.PreencherEnderEmit;
begin
   if Assigned(FNodeEnderEmit) then
   begin
     if FNodeEnderEmit.ChildNodes.FindNode('xLgr') <> nil then
        xLgr := FNodeEnderEmit.ChildNodes.FindNode('xLgr').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('nro') <> nil then
        nro := FNodeEnderEmit.ChildNodes.FindNode('nro').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('xCpl') <> nil then
        xCpl := FNodeEnderEmit.ChildNodes.FindNode('xCpl').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('xBairro') <> nil then
        xBairro := FNodeEnderEmit.ChildNodes.FindNode('xBairro').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('cMun') <> nil then
        cMun := FNodeEnderEmit.ChildNodes.FindNode('cMun').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('xMun') <> nil then
        xMun := FNodeEnderEmit.ChildNodes.FindNode('xMun').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('UF') <> nil then
        EUF := FNodeEnderEmit.ChildNodes.FindNode('UF').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('CEP') <> nil then
        CEP := FNodeEnderEmit.ChildNodes.FindNode('CEP').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('cPais') <> nil then
        cPais := FNodeEnderEmit.ChildNodes.FindNode('cPais').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('xPais') <> nil then
        xPais := FNodeEnderEmit.ChildNodes.FindNode('xPais').Text;

     if FNodeEnderEmit.ChildNodes.FindNode('fone') <> nil then
        fone := FNodeEnderEmit.ChildNodes.FindNode('fone').Text;
   end;
end;

end.
