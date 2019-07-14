unit LOTERPS_IDENT_NFSE_Doc;

interface

type TLOTERPS_IDENT_NFSE_Doc = class

  private
    ENumero, ESerie, ETipo : String;

    function getEnumero: String;
    function getESerie: String;
    function getETipo: String;
    procedure setEnumero(const Value: String);
    procedure setESerie(const Value: String);
    procedure setETipo(const Value: String);

  public
    Constructor Create_TLOTERPS_IDENT_NFSE_Doc;
    Destructor Destroy_TLOTERPS_IDENT_NFSE_Doc;

    property TEnumero : String read getEnumero write setEnumero;
    property TESerie : String read getESerie write setESerie;
    property TETipo : String read getETipo write setETipo;

end;

implementation

{ TLOTERPS_IDENT_NFSE_Doc }

constructor TLOTERPS_IDENT_NFSE_Doc.Create_TLOTERPS_IDENT_NFSE_Doc;
begin

end;

destructor TLOTERPS_IDENT_NFSE_Doc.Destroy_TLOTERPS_IDENT_NFSE_Doc;
begin

end;

function TLOTERPS_IDENT_NFSE_Doc.getEnumero: String;
begin
  result := ENumero;
end;

function TLOTERPS_IDENT_NFSE_Doc.getESerie: String;
begin
  result := ESerie;
end;

function TLOTERPS_IDENT_NFSE_Doc.getETipo: String;
begin
  result := ETipo;
end;

procedure TLOTERPS_IDENT_NFSE_Doc.setEnumero(const Value: String);
begin
   ENumero := Value;
end;

procedure TLOTERPS_IDENT_NFSE_Doc.setESerie(const Value: String);
begin
  ESerie := Value;
end;

procedure TLOTERPS_IDENT_NFSE_Doc.setETipo(const Value: String);
begin
  ETipo := Value;
end;

end.
