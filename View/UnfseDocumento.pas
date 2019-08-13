unit UnfseDocumento;
{**
 *
 * @author Kauai Guarilha
 */}
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
    lbnEMotCanc: TLabel;
    edtEMotCanc: TEdit;
    lbnPETipoBairr: TLabel;
    edtPETipoBairr: TEdit;
    Label50: TLabel;
    Label51: TLabel;
    edtPEmail: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    FLOTERPS_NFSE_Doc : TLOTERPS_NFSE_Doc;
    FLOTERPS_IDENT_NFSE_Doc : TLOTERPS_IDENT_NFSE_Doc;
    FLISTARPS_NFSE_Doc : TLISTARPS_NFSE_Doc;
    FPRESTADOR_NFSE_Doc : TPRESTADOR_NFSE_Doc;
    FPRESTADORENDER_NFSE_Doc : TPRESTADORENDER_NFSE_Doc;
    FTOMADORIDENT_NFSE_Doc : TTOMADORIDENT_NFSE_Doc;
    FTOMADORENDER_NFSE_Doc : TTOMADORENDER_NFSE_Doc;

    procedure loteRps_nfse_doc;
    procedure loteRps_ident_nfse_doc;
    procedure listaRps_nfse_doc;
    procedure prestador_nfse_doc;
    procedure prestadorEnder_nfse_doc;
    procedure tomadorIdent_nfse_doc;
    procedure tomador_nfse_doc;
    procedure tomadorEnder_nfse_doc;
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

    loteRps_nfse_doc;
    loteRps_ident_nfse_doc;
    listaRps_nfse_doc;
    prestador_nfse_doc;
    prestadorEnder_nfse_doc;
    tomadorIdent_nfse_doc;
    tomador_nfse_doc;
    tomadorEnder_nfse_doc;
  except on E: Exception do

  end;
end;

procedure TfrmNFSe_Documento.Button1Click(Sender: TObject);
begin
    ShowMessage('Em construção');
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

procedure TfrmNFSe_Documento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FLOTERPS_NFSE_Doc.Free;
  FLOTERPS_IDENT_NFSE_Doc.Free;
  FLISTARPS_NFSE_Doc.Free;
  FPRESTADOR_NFSE_Doc.Free;
  FPRESTADORENDER_NFSE_Doc.Free;
  FTOMADORIDENT_NFSE_Doc.Free;
  FTOMADORENDER_NFSE_Doc.Free;
end;

procedure TfrmNFSe_Documento.loteRps_nfse_doc;
var nodeEnviaLot_loteRps : IXMLNode;
begin
  nodeEnviaLot_loteRps := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps');

  FLOTERPS_NFSE_Doc.NodeLoteRPS := nodeEnviaLot_loteRps;
  FLOTERPS_NFSE_Doc.PreencherLoteRPS;

  self.edtECNPJ.Text :=  FLOTERPS_NFSE_Doc.TECNPJ;
  self.edtEInsMun.Text := FLOTERPS_NFSE_Doc.TEInsMun;
  self.edtEQtdRps.Text := FLOTERPS_NFSE_Doc.TEQtdRps;
  self.edtENmLote.Text := FLOTERPS_NFSE_Doc.TENmLote;
end;

procedure TfrmNFSe_Documento.loteRps_ident_nfse_doc;
var nodeListaIdentRps : IXMLNode;
begin
  nodeListaIdentRps := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('IdentificacaoRps');

  FLOTERPS_IDENT_NFSE_Doc.NodeLoteRPSIdent := nodeListaIdentRps;
  FLOTERPS_IDENT_NFSE_Doc.PreencherLoteRPSIdent;

  self.edtENumero.Text := FLOTERPS_IDENT_NFSE_Doc.TEnumero;
  self.edtESerie.Text := FLOTERPS_IDENT_NFSE_Doc.TESerie;
  self.edtETipo.Text := FLOTERPS_IDENT_NFSE_Doc.TETipo;
end;

procedure TfrmNFSe_Documento.listaRps_nfse_doc;
var nodeListaInfRps : IXMLNode;
begin
   nodeListaInfRps := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps');

  FLISTARPS_NFSE_Doc.NodeListaRPS := nodeListaInfRps;
  FLISTARPS_NFSE_Doc.PreencherListaRPS;

  self.edtEDataEmi.Text := FLISTARPS_NFSE_Doc.TEDataEmiss;
  self.edtESeriePres.Text := FLISTARPS_NFSE_Doc.TESeriePrest;
  self.edtEDescRPS.Text := FLISTARPS_NFSE_Doc.TEDescRPS;
  self.edtEOperac.Text := FLISTARPS_NFSE_Doc.TEOperac;
  self.edtENatOperc.Text := FLISTARPS_NFSE_Doc.TENatOperc;
  self.edtERegEspTrib.Text := FLISTARPS_NFSE_Doc.TERegEspTrib;
  self.edtEOptSimpNac.Text := FLISTARPS_NFSE_Doc.TEOptSimpNac;
  self.edtEIncCult.Text := FLISTARPS_NFSE_Doc.TEIncCult;
  self.edtEStatus.Text := FLISTARPS_NFSE_Doc.TEStats;
  self.edtEMotCanc.Text := FLISTARPS_NFSE_Doc.TEMotCanc;
end;

procedure TfrmNFSe_Documento.prestador_nfse_doc;
var nodeListaPresta, nodeListaPrestaCont : IXMLNode;
begin
  nodeListaPresta := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Prestador');
  nodeListaPrestaCont := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Prestador').ChildNodes.FindNode('Contato');

  FPRESTADOR_NFSE_Doc.NodePrestador := nodeListaPresta;
  FPRESTADOR_NFSE_Doc.PreencherPrestador;

  self.edtPCnpj.Text := FPRESTADOR_NFSE_Doc.TPCNPJ;
  self.edtPInscMun.Text := FPRESTADOR_NFSE_Doc.TPInscriMun;
  self.edtPRazaoSoci.Text := FPRESTADOR_NFSE_Doc.TPRazaoSoc;
  self.edtPDDD.Text := FPRESTADOR_NFSE_Doc.TPddd;
  self.edtPTelefone.Text := FPRESTADOR_NFSE_Doc.TPTelefone;
  self.edtPEmail.Text := FPRESTADOR_NFSE_Doc.TPEmail;

  FPRESTADOR_NFSE_Doc.NodePrestador := nodeListaPrestaCont;
  FPRESTADOR_NFSE_Doc.PreencherPrestador;

  self.edtPDDD.Text := FPRESTADOR_NFSE_Doc.TPddd;
  self.edtPTelefone.Text := FPRESTADOR_NFSE_Doc.TPTelefone;
  //self.edtPEmail.Text := FPRESTADOR_NFSE_Doc.TPEmail;
  self.edtPECodMun.Text := FPRESTADORENDER_NFSE_Doc.TPECodMun;
end;

procedure TfrmNFSe_Documento.prestadorEnder_nfse_doc;
var nodeListaPrestaEnd : IXMLNode;
begin
  nodeListaPrestaEnd := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Prestador').ChildNodes.FindNode('Endereco');

  FPRESTADORENDER_NFSE_Doc.NodePrestadorEnder := nodeListaPrestaEnd;
  FPRESTADORENDER_NFSE_Doc.PreencherPrestadorEnder;

  self.edtPEndereco.Text := FPRESTADORENDER_NFSE_Doc.TPEndereco;
  self.edtPENumero.Text := FPRESTADORENDER_NFSE_Doc.TPENumero;
  self.edtPEBairro.Text := FPRESTADORENDER_NFSE_Doc.TPEBairro;
  self.edtPETipoBairr.Text := FPRESTADORENDER_NFSE_Doc.TPETipoBairr;
  self.edtPECodMun.Text := FPRESTADORENDER_NFSE_Doc.TPECodMun;
  self.edtPEDescMun.Text := FPRESTADORENDER_NFSE_Doc.TPEDescMun;
  self.edtPEUf.Text := FPRESTADORENDER_NFSE_Doc.TPEUf;
  self.edtPECEP.Text := FPRESTADORENDER_NFSE_Doc.TPECEP;
end;

procedure TfrmNFSe_Documento.tomadorIdent_nfse_doc;
var nodeListaTomadInde : IXMLNode;
begin
  nodeListaTomadInde := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Tomador').ChildNodes.FindNode('IdentificacaoTomador').ChildNodes.FindNode('CpfCnpj');

  FTOMADORIDENT_NFSE_Doc.NodeTomador := nodeListaTomadInde;
  FTOMADORIDENT_NFSE_Doc.PreencherTomador;

  self.edtTICnpj.Text := FTOMADORIDENT_NFSE_Doc.TTICnpj;
  self.edtTICpf.Text := FTOMADORIDENT_NFSE_Doc.TTICpf;
  self.edtTEmail.Text := FTOMADORIDENT_NFSE_Doc.TTEmail;
end;

procedure TfrmNFSe_Documento.tomador_nfse_doc;
var nodeListaTomador, nodeListaTomadorCont : IXMLNode;
begin
  nodeListaTomador := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Tomador');
  nodeListaTomadorCont := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Tomador').ChildNodes.FindNode('Contato');

  FTOMADORIDENT_NFSE_Doc.NodeTomador := nodeListaTomador;  //Tomador
  FTOMADORIDENT_NFSE_Doc.PreencherTomador;

  self.edtTRazaoSoc.Text := FTOMADORIDENT_NFSE_Doc.TTRazaoSoc;

  FTOMADORIDENT_NFSE_Doc.NodeTomador := nodeListaTomadorCont; //Contato
  FTOMADORIDENT_NFSE_Doc.PreencherTomador;

  self.edtTEmail.Text := FTOMADORIDENT_NFSE_Doc.TTEmail;
end;

procedure TfrmNFSe_Documento.tomadorEnder_nfse_doc;
var nodeListaTomadorEnd : IXMLNode;
begin
  nodeListaTomadorEnd := XMLDocument1.ChildNodes.FindNode('EnviarLoteRpsEnvio').ChildNodes.FindNode('LoteRps').ChildNodes.FindNode('ListaRps').ChildNodes.FindNode('Rps').ChildNodes.FindNode('InfRps').ChildNodes.FindNode('Tomador').ChildNodes.FindNode('Endereco');

  FTOMADORENDER_NFSE_Doc.NodeTomadorEnder := nodeListaTomadorEnd;
  FTOMADORENDER_NFSE_Doc.PreencherTomadorEnder;

  self.edtTEEndereco.Text := FTOMADORENDER_NFSE_Doc.TTEndereco;
  self.edtTENum.Text := FTOMADORENDER_NFSE_Doc.TTENumero;
  self.edtTEBairro.Text := FTOMADORENDER_NFSE_Doc.TTEBairro;
  self.edtTEComple.Text := FTOMADORENDER_NFSE_Doc.TTEComple;
  self.edtTECodMun.Text := FTOMADORENDER_NFSE_Doc.TTECodMun;
  self.edtTEDescMun.Text := FTOMADORENDER_NFSE_Doc.TTEdescMun;
  self.edtTEUf.Text := FTOMADORENDER_NFSE_Doc.TTEUf;
  self.edtTECep.Text := FTOMADORENDER_NFSE_Doc.TTECep;
end;

procedure TfrmNFSe_Documento.Timer1Timer(Sender: TObject);
begin
    StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
