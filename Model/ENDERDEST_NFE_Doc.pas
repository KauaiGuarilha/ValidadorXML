unit ENDERDEST_NFE_Doc;

interface

uses Xml.XMLDoc, Xml.xmldom, Xml.XMLIntf;

type TENDERDEST_NFE_Doc = class

  private
    DxLgr, Dnro, DxCpl, DxBairro, DcMun, DxMun, DUF, DCEP, DcPais, DxPais, Dfone: String;

    FNodeEnderDest : IXMLNode;

    function getDCEP: String;
    function getDcMun: String;
    function getDcPais: String;
    function getDfone: String;
    function getDnro: String;
    function getDUF: String;
    function getDxBairro: String;
    function getDxCpl: String;
    function getDxLgr: String;
    function getDxMun: String;
    function getDxPais: String;
    procedure setDCEP(const Value: String);
    procedure setDcMun(const Value: String);
    procedure setDcPais(const Value: String);
    procedure setDfone(const Value: String);
    procedure setDnro(const Value: String);
    procedure setDUF(const Value: String);
    procedure setDxBairro(const Value: String);
    procedure setDxCpl(const Value: String);
    procedure setDxLgr(const Value: String);
    procedure setDxMun(const Value: String);
    procedure setDxPais(const Value: String);


  public
     Constructor Create_TENDERDEST_NFE_Doc;
     Destructor Destroy_TENDERDEST_NFE_Doc;

     procedure PreencherEnderDest;

     property NodeEnderDest : IXMLNode read FNodeEnderDest write FNodeEnderDest;
     property TDxLgr : String read getDxLgr write setDxLgr;
     property TDnro : String read getDnro write setDnro;
     property TDxCpl : String read getDxCpl write setDxCpl;
     property TDxBairro : String read getDxBairro write setDxBairro;
     property TDcMun : String read getDcMun write setDcMun;
     property TDxMun : String read getDxMun write setDxMun;
     property TDUF : String read getDUF write setDUF;
     property TDCEP : String read getDCEP  write setDCEP;
     property TDcPais : String read getDcPais write setDcPais;
     property TDxPais : String read getDxPais write setDxPais;
     property TDfone : String read getDfone write setDfone;

end;

implementation

{ TENDERDEST_NFE_Doc }

constructor TENDERDEST_NFE_Doc.Create_TENDERDEST_NFE_Doc;
begin

end;

destructor TENDERDEST_NFE_Doc.Destroy_TENDERDEST_NFE_Doc;
begin

end;

function TENDERDEST_NFE_Doc.getDCEP: String;
begin
    result := DCEP;
end;

function TENDERDEST_NFE_Doc.getDcMun: String;
begin
    result := DcMun;
end;

function TENDERDEST_NFE_Doc.getDcPais: String;
begin
    result := DcPais;
end;

function TENDERDEST_NFE_Doc.getDfone: String;
begin
    result := Dfone;
end;

function TENDERDEST_NFE_Doc.getDnro: String;
begin
    result := Dnro;
end;

function TENDERDEST_NFE_Doc.getDUF: String;
begin
    result := DUF;
end;

function TENDERDEST_NFE_Doc.getDxBairro: String;
begin
    result := DxBairro;
end;

function TENDERDEST_NFE_Doc.getDxCpl: String;
begin
   result := DxCpl;
end;

function TENDERDEST_NFE_Doc.getDxLgr: String;
begin
   result := DxLgr;
end;

function TENDERDEST_NFE_Doc.getDxMun: String;
begin
    result := DxMun;
end;

function TENDERDEST_NFE_Doc.getDxPais: String;
begin
    result := DxPais;
end;

procedure TENDERDEST_NFE_Doc.setDCEP(const Value: String);
begin
    DCEP := Value;
end;

procedure TENDERDEST_NFE_Doc.setDcMun(const Value: String);
begin
   DcMun := Value;
end;

procedure TENDERDEST_NFE_Doc.setDcPais(const Value: String);
begin
   DcPais := Value;
end;

procedure TENDERDEST_NFE_Doc.setDfone(const Value: String);
begin
   Dfone := Value;
end;

procedure TENDERDEST_NFE_Doc.setDnro(const Value: String);
begin
   Dnro := Value;
end;

procedure TENDERDEST_NFE_Doc.setDUF(const Value: String);
begin
    DUF := Value;
end;

procedure TENDERDEST_NFE_Doc.setDxBairro(const Value: String);
begin
    DxBairro := Value;
end;

procedure TENDERDEST_NFE_Doc.setDxCpl(const Value: String);
begin
   DxCpl := Value;
end;

procedure TENDERDEST_NFE_Doc.setDxLgr(const Value: String);
begin
   DxLgr := Value;
end;

procedure TENDERDEST_NFE_Doc.setDxMun(const Value: String);
begin
   DxMun := Value;
end;

procedure TENDERDEST_NFE_Doc.setDxPais(const Value: String);
begin
    DxPais := Value;
end;

procedure TENDERDEST_NFE_Doc.PreencherEnderDest;
begin
  if Assigned(FNodeEnderDest) then
  begin
    if FNodeEnderDest.ChildNodes.FindNode('xLgr') <> nil then
        DxLgr := FNodeEnderDest.ChildNodes.FindNode('xLgr').Text;

    if FNodeEnderDest.ChildNodes.FindNode('nro') <> nil then
        Dnro := FNodeEnderDest.ChildNodes.FindNode('nro').Text;

    if FNodeEnderDest.ChildNodes.FindNode('xCpl') <> nil then
        DxCpl := FNodeEnderDest.ChildNodes.FindNode('xCpl').Text;

    if FNodeEnderDest.ChildNodes.FindNode('xBairro') <> nil then
        DxBairro := FNodeEnderDest.ChildNodes.FindNode('xBairro').Text;

    if FNodeEnderDest.ChildNodes.FindNode('cMun') <> nil then
        DcMun := FNodeEnderDest.ChildNodes.FindNode('cMun').Text;

    if FNodeEnderDest.ChildNodes.FindNode('xMun') <> nil then
        DxMun := FNodeEnderDest.ChildNodes.FindNode('xMun').Text;

    if FNodeEnderDest.ChildNodes.FindNode('UF') <> nil then
        DUF := FNodeEnderDest.ChildNodes.FindNode('UF').Text;

    if FNodeEnderDest.ChildNodes.FindNode('CEP') <> nil then
        DCEP := FNodeEnderDest.ChildNodes.FindNode('CEP').Text;

    if FNodeEnderDest.ChildNodes.FindNode('cPais') <> nil then
        DcPais := FNodeEnderDest.ChildNodes.FindNode('cPais').Text;

    if FNodeEnderDest.ChildNodes.FindNode('xPais') <> nil then
        DxPais := FNodeEnderDest.ChildNodes.FindNode('xPais').Text;

    if FNodeEnderDest.ChildNodes.FindNode('fone') <> nil then
        Dfone := FNodeEnderDest.ChildNodes.FindNode('fone').Text;
  end;

end;

end.
