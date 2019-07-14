unit UnfseDocumento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.ExtCtrls,
  Xml.XMLDoc, Vcl.ComCtrls, Vcl.StdCtrls, LOTERPS_NFSE_Doc, LOTERPS_IDENT_NFSE_Doc, LISTARPS_NFSE_Doc,
  PRESTADOR_NFSE_Doc, PRESTADORENDER_NFSE_Doc, TOMADORIDENT_NFSE_Doc, TOMADORENDER_NFSE_Doc;

type
  TfrmNFSe_Documento = class(TForm)
    XMLDocument1: TXMLDocument;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    frmNFSe_Documento: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnOk: TButton;
    edtENmLote: TEdit;
    edtEQtdRps: TEdit;
    edtEInsMun: TEdit;
    edtECNPJ: TEdit;
    edtPCnpj: TEdit;
    StatusBar1: TStatusBar;
    Button1: TButton;
    Label5: TLabel;
    Label7: TLabel;
    edtENumero: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edtESerie: TEdit;
    edtETipo: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtEDataEmi: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtESeriePres: TEdit;
    edtEDescRPS: TEdit;
    edtEOperac: TEdit;
    Label16: TLabel;
    edtENatOperc: TEdit;
    Label17: TLabel;
    edtERegEspTrib: TEdit;
    Label18: TLabel;
    edtEOptSimpNac: TEdit;
    Label19: TLabel;
    edtEIncCult: TEdit;
    Label20: TLabel;
    edtEStatus: TEdit;
    Label21: TLabel;
    edtPInscMun: TEdit;
    Label22: TLabel;
    edtPRazaoSoci: TEdit;
    edtPEndereco: TEdit;
    Label23: TLabel;
    edtPENumero: TEdit;
    Label26: TLabel;
    edtPEBairro: TEdit;
    edtPECodMun: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    edtPEDescMun: TEdit;
    Label29: TLabel;
    edtPEUf: TEdit;
    edtPECEP: TEdit;
    Label30: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    edtTICnpj: TEdit;
    lbnTICpf: TLabel;
    edtTICpf: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    edtTRazaoSoc: TEdit;
    Label39: TLabel;
    edtTEmail: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    edtTEEndereco: TEdit;
    Label43: TLabel;
    edtTENum: TEdit;
    edtTEComple: TEdit;
    Label44: TLabel;
    edtTEBairro: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    edtTECodMun: TEdit;
    edtTEDescMun: TEdit;
    Label47: TLabel;
    Label48: TLabel;
    edtTEUf: TEdit;
    edtTECep: TEdit;
    Label36: TLabel;
    Label49: TLabel;
    edtPDDD: TEdit;
    edtPTelefone: TEdit;
    lbnPEmail: TLabel;
    edtPEmail: TEdit;
    lbnEMotCanc: TLabel;
    edtEMotCanc: TEdit;
    lbnPETipoBairr: TLabel;
    edtPETipoBairr: TEdit;
    Label50: TLabel;
    Label51: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
     nodeEnviaLot_loteRps, nodeListaIdentRps, nodeListaInfRps, nodeListaPresta, nodeListaPrestaEnd, nodeListaTomadInde, nodeListaTomador,
     nodeListaTomadorCont, nodeListaTomadorEnd, nodeListaPrestaCont : IXMLNode;

     FLOTERPS_NFSE_Doc : TLOTERPS_NFSE_Doc;
     FLOTERPS_IDENT_NFSE_Doc : TLOTERPS_IDENT_NFSE_Doc;
     FLISTARPS_NFSE_Doc : TLISTARPS_NFSE_Doc;
     FPRESTADOR_NFSE_Doc : TPRESTADOR_NFSE_Doc;
     FPRESTADORENDER_NFSE_Doc : TPRESTADORENDER_NFSE_Doc;
     FTOMADORIDENT_NFSE_Doc : TTOMADORIDENT_NFSE_Doc;
     FTOMADORENDER_NFSE_Doc : TTOMADORENDER_NFSE_Doc;

  public

  end;

var
  frmNFSe_Documento: TfrmNFSe_Documento;

implementation

{$R *.dfm}

procedure TfrmNFSe_Documento.btnOkClick(Sender: TObject);
begin
    try
       OpenDialog1.Execute;
       XMLDocument1.LoadFromFile(OpenDialog1.FileName);

       nodeEnviaLot_loteRps := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps');
       nodeListaIdentRps := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('IdentificacaoRps');
       nodeListaInfRps := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps');
       nodeListaPresta := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Prestador');
       nodeListaPrestaCont := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Prestador').ChildNodes.FindNode('Contato');
       nodeListaPrestaEnd := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Prestador').ChildNodes.FindNode('Endereco');
       nodeListaTomadInde := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Tomador').ChildNodes.FindNode('IdentificacaoTomador').ChildNodes.FindNode('CpfCnpj');
       nodeListaTomador := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Tomador');
       nodeListaTomadorCont := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Tomador').ChildNodes.FindNode('Contato');
       nodeListaTomadorEnd := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Tomador').ChildNodes.FindNode('Endereco');

       {LoteRPS}

       if nodeEnviaLot_loteRps.ChildValues['Cnpj'] = null then
       begin
           self.edtECNPJ.Text := '';
       end else
       begin
          FLOTERPS_NFSE_Doc.TECNPJ := nodeEnviaLot_loteRps.ChildValues['Cnpj'];
          self.edtECNPJ.Text :=  FLOTERPS_NFSE_Doc.TECNPJ;
       end;

       if nodeEnviaLot_loteRps.ChildValues['InscricaoMunicipal'] = null then
       begin
           self.edtEInsMun.Text := '';
       end else
       begin
          FLOTERPS_NFSE_Doc.TEInsMun :=  nodeEnviaLot_loteRps.ChildValues['InscricaoMunicipal'];
          self.edtEInsMun.Text := FLOTERPS_NFSE_Doc.TEInsMun;
       end;

       if nodeEnviaLot_loteRps.ChildValues['QuantidadeRps'] = null then
       begin
           self.edtEQtdRps.Text := '';
       end else
       begin
          FLOTERPS_NFSE_Doc.TEQtdRps := nodeEnviaLot_loteRps.ChildValues['QuantidadeRps'];
          self.edtEQtdRps.Text := FLOTERPS_NFSE_Doc.TEQtdRps;
       end;

       if nodeEnviaLot_loteRps.ChildValues['NumeroLote'] = null then
       begin
           self.edtENmLote.Text := '';
       end else
       begin
          FLOTERPS_NFSE_Doc.TENmLote := nodeEnviaLot_loteRps.ChildValues['NumeroLote'];
          self.edtENmLote.Text := FLOTERPS_NFSE_Doc.TENmLote;
       end;

       {ListaRPS identicacaoRPS}

       if nodeListaIdentRps.ChildValues['Numero'] = null then
       begin
           self.edtENumero.Text := '';
       end else
       begin
          FLOTERPS_IDENT_NFSE_Doc.TEnumero := nodeListaIdentRps.ChildValues['Numero'];
          self.edtENumero.Text := FLOTERPS_IDENT_NFSE_Doc.TEnumero;
       end;

       if nodeListaIdentRps.ChildValues['Serie'] = null then
       begin
           self.edtESerie.Text := '';
       end else
       begin
          FLOTERPS_IDENT_NFSE_Doc.TESerie := nodeListaIdentRps.ChildValues['Serie'];
          self.edtESerie.Text := FLOTERPS_IDENT_NFSE_Doc.TESerie;
       end;

       if nodeListaIdentRps.ChildValues['Tipo'] = null then
       begin
           self.edtETipo.Text := '';
       end else
       begin
          FLOTERPS_IDENT_NFSE_Doc.TETipo := nodeListaIdentRps.ChildValues['Tipo'];
          self.edtETipo.Text := FLOTERPS_IDENT_NFSE_Doc.TETipo;
       end;

       {Lista RPS}

       if nodeListaInfRps.ChildValues['DataEmissao'] = null then
       begin
           self.edtEDataEmi.Text := '';
       end else
       begin
           FLISTARPS_NFSE_Doc.TEDataEmiss := nodeListaInfRps.ChildValues['DataEmissao'];
           self.edtEDataEmi.Text := FLISTARPS_NFSE_Doc.TEDataEmiss;
       end;

       if nodeListaInfRps.ChildValues['SeriePrestacao'] = null then
       begin
           self.edtESeriePres.Text := '';
       end else
       begin
          FLISTARPS_NFSE_Doc.TESeriePrest := nodeListaInfRps.ChildValues['SeriePrestacao'];
          self.edtESeriePres.Text := FLISTARPS_NFSE_Doc.TESeriePrest;
       end;

       if nodeListaInfRps.ChildValues['DescricaoRPS'] = null then
       begin
           self.edtEDescRPS.Text := '';
       end else
       begin
          FLISTARPS_NFSE_Doc.TEDescRPS := nodeListaInfRps.ChildValues['DescricaoRPS'];
          self.edtEDescRPS.Text := FLISTARPS_NFSE_Doc.TEDescRPS;
       end;

       if nodeListaInfRps.ChildValues['Operacao'] = null then
       begin
           self.edtEOperac.Text := '';
       end else
       begin
          FLISTARPS_NFSE_Doc.TEOperac := nodeListaInfRps.ChildValues['Operacao'];
          self.edtEOperac.Text := FLISTARPS_NFSE_Doc.TEOperac;
       end;

       if nodeListaInfRps.ChildValues['NaturezaOperacao'] = null then
       begin
           self.edtENatOperc.Text := '';
       end else
       begin
          FLISTARPS_NFSE_Doc.TENatOperc := nodeListaInfRps.ChildValues['NaturezaOperacao'];
          self.edtENatOperc.Text := FLISTARPS_NFSE_Doc.TENatOperc;
       end;

       if nodeListaInfRps.ChildValues['RegimeEspecialTributacao'] = null then
       begin
           self.edtERegEspTrib.Text := '';
       end else
       begin
          FLISTARPS_NFSE_Doc.TERegEspTrib := nodeListaInfRps.ChildValues['RegimeEspecialTributacao'];
          self.edtERegEspTrib.Text := FLISTARPS_NFSE_Doc.TERegEspTrib;
       end;

       if nodeListaInfRps.ChildValues['OptanteSimplesNacional'] = null then
       begin
           self.edtEOptSimpNac.Text := '';
       end else
       begin
           FLISTARPS_NFSE_Doc.TEOptSimpNac := nodeListaInfRps.ChildValues['OptanteSimplesNacional'];
           self.edtEOptSimpNac.Text := FLISTARPS_NFSE_Doc.TEOptSimpNac;
       end;

       if nodeListaInfRps.ChildValues['IncentivadorCultural'] = null then
       begin
           self.edtEIncCult.Text := '';
       end else
       begin
           FLISTARPS_NFSE_Doc.TEIncCult := nodeListaInfRps.ChildValues['IncentivadorCultural'];
           self.edtEIncCult.Text := FLISTARPS_NFSE_Doc.TEIncCult;
       end;

       if nodeListaInfRps.ChildValues['Status'] = null then
       begin
           self.edtEStatus.Text := '';
       end else
       begin
          FLISTARPS_NFSE_Doc.TEStats := nodeListaInfRps.ChildValues['Status'];
          self.edtEStatus.Text := FLISTARPS_NFSE_Doc.TEStats;
       end;

       if nodeListaInfRps.ChildValues['MotCancelamento'] = null then
       begin
          self.edtEMotCanc.Text := '';
          self.edtEMotCanc.Visible := false;
          self.lbnEMotCanc.Visible := false;
       end else
       begin
          FLISTARPS_NFSE_Doc.TEMotCanc := nodeListaInfRps.ChildValues['MotCancelamento'];
          self.edtEMotCanc.Text := FLISTARPS_NFSE_Doc.TEMotCanc;
       end;

       {Prestador}

       if nodeListaPresta.ChildValues['Cnpj'] = null then
       begin
          self.edtPCnpj.Text := '';
       end else
       begin
          FPRESTADOR_NFSE_Doc.TPCNPJ := nodeListaPresta.ChildValues['Cnpj'];
          self.edtPCnpj.Text := FPRESTADOR_NFSE_Doc.TPCNPJ;
       end;

       if nodeListaPresta.ChildValues['InscricaoMunicipal'] = null then
       begin
          self.edtPInscMun.Text := '';
       end else
       begin
          FPRESTADOR_NFSE_Doc.TPInscriMun := nodeListaPresta.ChildValues['InscricaoMunicipal'];
          self.edtPInscMun.Text := FPRESTADOR_NFSE_Doc.TPInscriMun;
       end;

       if nodeListaPresta.ChildValues['RazaoSocial'] = null then
       begin
          self.edtPRazaoSoci.Text := '';
       end else
       begin
          FPRESTADOR_NFSE_Doc.TPRazaoSoc := nodeListaPresta.ChildValues['RazaoSocial'];
          self.edtPRazaoSoci.Text := FPRESTADOR_NFSE_Doc.TPRazaoSoc;
       end;

       if nodeListaPrestaCont.ChildValues['DDDTelefone'] = null then
       begin
          self.edtPDDD.Text := '';
       end else
       begin
          FPRESTADOR_NFSE_Doc.TPddd := nodeListaPrestaCont.ChildValues['DDDTelefone'];
          self.edtPDDD.Text := FPRESTADOR_NFSE_Doc.TPddd;
       end;

       if nodeListaPrestaCont.ChildValues['Telefone'] = null then
       begin
          self.edtPTelefone.Text := '';
       end else
       begin
          FPRESTADOR_NFSE_Doc.TPTelefone := nodeListaPrestaCont.ChildValues['Telefone'];
          self.edtPTelefone.Text := FPRESTADOR_NFSE_Doc.TPTelefone;
       end;

       if nodeListaPrestaCont.ChildValues['Email'] = null then
       begin
           self.edtPEmail.Text := '';
           self.edtPEmail.Visible := false;
           self.lbnPEmail.Visible := false;
       end else
       begin
           FPRESTADOR_NFSE_Doc.TPEmail := nodeListaPrestaCont.ChildValues['Email'];
           self.edtPEmail.Text := FPRESTADOR_NFSE_Doc.TPEmail;
       end;

       {Prestador_end}

       if nodeListaPrestaEnd.ChildValues['Endereco'] = null then
       begin
          self.edtPEndereco.Text := '';
       end else
       begin
           FPRESTADORENDER_NFSE_Doc.TPEndereco := nodeListaPrestaEnd.ChildValues['Endereco'];
           self.edtPEndereco.Text := FPRESTADORENDER_NFSE_Doc.TPEndereco;
       end;

       if nodeListaPrestaEnd.ChildValues['Numero'] = null then
       begin
          self.edtPENumero.Text := '';
       end else
       begin
           FPRESTADORENDER_NFSE_Doc.TPENumero := nodeListaPrestaEnd.ChildValues['Numero'];
           self.edtPENumero.Text := FPRESTADORENDER_NFSE_Doc.TPENumero;
       end;

       if nodeListaPrestaEnd.ChildValues['Bairro'] = null then
       begin
          self.edtPEBairro.Text := '';
       end else
       begin
           FPRESTADORENDER_NFSE_Doc.TPEBairro := nodeListaPrestaEnd.ChildValues['Bairro'];
           self.edtPEBairro.Text := FPRESTADORENDER_NFSE_Doc.TPEBairro;
       end;

       if nodeListaPrestaEnd.ChildValues['TipoBairro'] = null then
       begin
          self.edtPETipoBairr.Text := '';
          self.edtPETipoBairr.Visible := false;
          self.lbnPETipoBairr.Visible := false;
       end else
       begin
          FPRESTADORENDER_NFSE_Doc.TPETipoBairr := nodeListaPrestaEnd.ChildValues['TipoBairro'];
          self.edtPETipoBairr.Text := FPRESTADORENDER_NFSE_Doc.TPETipoBairr;
       end;

       if nodeListaPrestaEnd.ChildValues['CodigoMunicipio'] = null then
       begin
          self.edtPECodMun.Text := '';
       end else
       begin
          FPRESTADORENDER_NFSE_Doc.TPECodMun := nodeListaPrestaEnd.ChildValues['CodigoMunicipio'];
          self.edtPECodMun.Text := FPRESTADORENDER_NFSE_Doc.TPECodMun;
       end;

       if nodeListaPrestaEnd.ChildValues['DescricaoMunicipio'] = null then
       begin
          self.edtPEDescMun.Text := '';
       end else
       begin
          FPRESTADORENDER_NFSE_Doc.TPEDescMun := nodeListaPrestaEnd.ChildValues['DescricaoMunicipio'];
          self.edtPEDescMun.Text := FPRESTADORENDER_NFSE_Doc.TPEDescMun;
       end;

       if nodeListaPrestaEnd.ChildValues['Uf'] = null then
       begin
          self.edtPEUf.Text := '';
       end else
       begin
          FPRESTADORENDER_NFSE_Doc.TPEUf := nodeListaPrestaEnd.ChildValues['Uf'];
          self.edtPEUf.Text := FPRESTADORENDER_NFSE_Doc.TPEUf;
       end;

       if nodeListaPrestaEnd.ChildValues['Cep'] = null then
       begin
          self.edtPECEP.Text := '';
       end else
       begin
          FPRESTADORENDER_NFSE_Doc.TPECEP := nodeListaPrestaEnd.ChildValues['Cep'];
          self.edtPECEP.Text := FPRESTADORENDER_NFSE_Doc.TPECEP;
       end;

        {Tomador idenficador}

       if nodeListaTomadInde.ChildValues['Cnpj'] = null then
       begin
          self.edtTICnpj.Text := '';
       end else
       begin
          FTOMADORIDENT_NFSE_Doc.TTICnpj := nodeListaTomadInde.ChildValues['Cnpj'];
          self.edtTICnpj.Text := FTOMADORIDENT_NFSE_Doc.TTICnpj;
       end;

       if nodeListaTomadInde.ChildValues['Cpf'] = null then
       begin
          self.edtTICpf.Text := '';
          self.edtTICpf.Visible := false;
          self.lbnTICpf.Visible := false;
       end else
       begin
          FTOMADORIDENT_NFSE_Doc.TTICpf := nodeListaTomadorCont.ChildValues['Cpf'];
          self.edtTICpf.Text := FTOMADORIDENT_NFSE_Doc.TTICpf;
       end;

        {Tomador}

       if nodeListaTomador.ChildValues['RazaoSocial'] = null then
       begin
          self.edtTRazaoSoc.Text := '';
       end else
       begin
          FTOMADORIDENT_NFSE_Doc.TTRazaoSoc := nodeListaTomador.ChildValues['RazaoSocial'];
          self.edtTRazaoSoc.Text := FTOMADORIDENT_NFSE_Doc.TTRazaoSoc;
       end;

       if nodeListaTomadorCont.ChildValues['Email'] = null then
       begin
          self.edtTEmail.Text := '';
       end else
       begin
          FTOMADORIDENT_NFSE_Doc.TTEmail := nodeListaTomadorCont.ChildValues['Email'];
          self.edtTEmail.Text := FTOMADORIDENT_NFSE_Doc.TTEmail;
       end;

       {Endereco}

       if nodeListaTomadorEnd.ChildValues['Endereco'] = null then
       begin
          self.edtTEEndereco.Text := '';
       end else
       begin
          FTOMADORENDER_NFSE_Doc.TTEndereco := nodeListaTomadorEnd.ChildValues['Endereco'];
          self.edtTEEndereco.Text := FTOMADORENDER_NFSE_Doc.TTEndereco;
       end;

       if nodeListaTomadorEnd.ChildValues['Numero'] = null then
       begin
          self.edtTENum.Text := '';
       end else
       begin
          FTOMADORENDER_NFSE_Doc.TTENumero := nodeListaTomadorEnd.ChildValues['Numero'];
          self.edtTENum.Text := FTOMADORENDER_NFSE_Doc.TTENumero;
       end;

       if nodeListaTomadorEnd.ChildValues['Bairro'] = null then
       begin
          self.edtTEBairro.Text := '';
       end else
       begin
          FTOMADORENDER_NFSE_Doc.TTEBairro := nodeListaTomadorEnd.ChildValues['Bairro'];
          self.edtTEBairro.Text := FTOMADORENDER_NFSE_Doc.TTEBairro;
       end;

       if nodeListaTomadorEnd.ChildValues['Complemento'] = null then
       begin
          self.edtTEComple.Text := '';
       end else
       begin
          FTOMADORENDER_NFSE_Doc.TTEComple := nodeListaTomadorEnd.ChildValues['Complemento'];
          self.edtTEComple.Text := FTOMADORENDER_NFSE_Doc.TTEComple;
       end;

       if nodeListaTomadorEnd.ChildValues['CodigoMunicipio'] = null then
       begin
          self.edtTECodMun.Text := '';
       end else
       begin
          FTOMADORENDER_NFSE_Doc.TTECodMun := nodeListaTomadorEnd.ChildValues['CodigoMunicipio'];
          self.edtTECodMun.Text := FTOMADORENDER_NFSE_Doc.TTECodMun;
       end;

       if nodeListaTomadorEnd.ChildValues['DescricaoMunicipio'] = null then
       begin
          self.edtTEDescMun.Text := '';
       end else
       begin
          FTOMADORENDER_NFSE_Doc.TTEdescMun := nodeListaTomadorEnd.ChildValues['DescricaoMunicipio'];
          self.edtTEDescMun.Text := FTOMADORENDER_NFSE_Doc.TTEdescMun;
       end;

       if nodeListaTomadorEnd.ChildValues['Uf'] = null then
       begin
          self.edtTEUf.Text := '';
       end else
       begin
          FTOMADORENDER_NFSE_Doc.TTEUf := nodeListaTomadorEnd.ChildValues['Uf'];
          self.edtTEUf.Text := FTOMADORENDER_NFSE_Doc.TTEUf;
       end;

       if nodeListaTomadorEnd.ChildValues['Cep'] = null then
       begin
          self.edtTECep.Text := '';
       end else
       begin
           FTOMADORENDER_NFSE_Doc.TTECep := nodeListaTomadorEnd.ChildValues['Cep'];
           self.edtTECep.Text := FTOMADORENDER_NFSE_Doc.TTECep;
       end;

     except on E: Exception do

     end;

end;

procedure TfrmNFSe_Documento.Button1Click(Sender: TObject);
begin
    ShowMessage('Em construção');
end;

procedure TfrmNFSe_Documento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FLOTERPS_NFSE_Doc.Destroy_TLOTERPS_NFSE_Doc;
  FLOTERPS_IDENT_NFSE_Doc.Destroy_TLOTERPS_IDENT_NFSE_Doc;
  FLISTARPS_NFSE_Doc.Destroy_TLISTARPS_NFSE_Doc;
  FPRESTADOR_NFSE_Doc.Destroy_TPRESTADOR_NFSE_Doc;
  FPRESTADORENDER_NFSE_Doc.Destroy_TPRESTADORENDER_NFSE_Doc;
  FTOMADORIDENT_NFSE_Doc.Destroy_TTOMADORIDENT_NFSE_Doc;
  FTOMADORENDER_NFSE_Doc.Destroy_TTOMADORENDER_NFSE_Doc;
end;

procedure TfrmNFSe_Documento.FormCreate(Sender: TObject);
begin
  FLOTERPS_NFSE_Doc := TLOTERPS_NFSE_Doc.Create_TLOTERPS_NFSE_Doc;
  FLOTERPS_IDENT_NFSE_Doc := TLOTERPS_IDENT_NFSE_Doc.Create_TLOTERPS_IDENT_NFSE_Doc;
  FLISTARPS_NFSE_Doc := TLISTARPS_NFSE_Doc.Create_TLISTARPS_NFSE_Doc;
  FPRESTADOR_NFSE_Doc := TPRESTADOR_NFSE_Doc.Create_TPRESTADOR_NFSE_Doc;
  FPRESTADORENDER_NFSE_Doc := TPRESTADORENDER_NFSE_Doc.Create_TPRESTADORENDER_NFSE_Doc;
  FTOMADORIDENT_NFSE_Doc := TTOMADORIDENT_NFSE_Doc.Create_TTOMADORIDENT_NFSE_Doc;
  FTOMADORENDER_NFSE_Doc := TTOMADORENDER_NFSE_Doc.Create_TTOMADORENDER_NFSE_Doc;
end;

procedure TfrmNFSe_Documento.Timer1Timer(Sender: TObject);
begin
    StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
