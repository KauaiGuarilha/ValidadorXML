unit TOMADORIDENT_NFSE_Doc;

interface

type TTOMADORIDENT_NFSE_Doc = class

  private
    TICnpj, TICpf : String; {Tomador idenficador}
    TRazaoSoc, TEmail : String;  {Tomador}

    function getTEmail: String;
    function getTICnpj: String;
    function getTICpf: String;
    function getTRazaoSoc: String;
    procedure setTEmail(const Value: String);
    procedure setTICnpj(const Value: String);
    procedure setTICpf(const Value: String);
    procedure setTRazaoSoc(const Value: String);

  public
    Constructor Create_TTOMADORIDENT_NFSE_Doc;
    Destructor Destroy_TTOMADORIDENT_NFSE_Doc;

    property TTICnpj : String read getTICnpj write setTICnpj;
    property TTICpf : String read getTICpf write setTICpf;
    property TTRazaoSoc : String read getTRazaoSoc write setTRazaoSoc;
    property TTEmail : String read getTEmail write setTEmail;

end;

implementation

{ TTOMADORIDENT_NFSE_Doc }

constructor TTOMADORIDENT_NFSE_Doc.Create_TTOMADORIDENT_NFSE_Doc;
begin

end;

destructor TTOMADORIDENT_NFSE_Doc.Destroy_TTOMADORIDENT_NFSE_Doc;
begin

end;

function TTOMADORIDENT_NFSE_Doc.getTEmail: String;
begin
  result := TICnpj;
end;

function TTOMADORIDENT_NFSE_Doc.getTICnpj: String;
begin
  result := TICnpj;
end;

function TTOMADORIDENT_NFSE_Doc.getTICpf: String;
begin
  result := TICpf;
end;

function TTOMADORIDENT_NFSE_Doc.getTRazaoSoc: String;
begin
  result := TRazaoSoc;
end;

procedure TTOMADORIDENT_NFSE_Doc.setTEmail(const Value: String);
begin
  TEmail := Value;
end;

procedure TTOMADORIDENT_NFSE_Doc.setTICnpj(const Value: String);
begin
  TICnpj := Value;
end;

procedure TTOMADORIDENT_NFSE_Doc.setTICpf(const Value: String);
begin
  TICpf := Value;
end;

procedure TTOMADORIDENT_NFSE_Doc.setTRazaoSoc(const Value: String);
begin
  TRazaoSoc := Value;
end;

end.
