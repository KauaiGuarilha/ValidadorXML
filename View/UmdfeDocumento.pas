unit UmdfeDocumento;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.ExtCtrls,
  Xml.XMLDoc, Vcl.ComCtrls, Vcl.StdCtrls, IDE_MDFE_Doc, EMIT_MDFE_Doc, IDE_INF_MDFE_Doc, RODO_INF_MDFE_Doc,
  ENDEREMIT_MDFE_Doc, Vcl.Imaging.pngimage, INFDOC_MDFE_Doc;

type
  TfrmMdfeDocumento = class(TForm)
    frmMdfeDocumento: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    ed: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label1: TLabel;
    btnOk: TButton;
    edtcUF: TEdit;
    edtNMDF: TEdit;
    edtMod: TEdit;
    edtSerie: TEdit;
    edtDhEmi: TEdit;
    edtTpEmis: TEdit;
    edtCDV: TEdit;
    edtTpAmb: TEdit;
    edtProcEmi: TEdit;
    edtVerProc: TEdit;
    edtECnpj: TEdit;
    edtEXNome: TEdit;
    edtEXFant: TEdit;
    edtEIE: TEdit;
    edtEIEST: TEdit;
    edtXLgr: TEdit;
    edtXBairro: TEdit;
    edtCMun: TEdit;
    edtXMun: TEdit;
    edtNro: TEdit;
    edtFone: TEdit;
    edtCEP: TEdit;
    edtEUF: TEdit;
    StatusBar1: TStatusBar;
    Button1: TButton;
    XMLDocument1: TXMLDocument;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    Label5: TLabel;
    edtTpEmit: TEdit;
    edtCMDF: TEdit;
    Label43: TLabel;
    edtModal: TEdit;
    Label50: TLabel;
    edtUFIni: TEdit;
    Label9: TLabel;
    edtUFFim: TEdit;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtCMunCarrega: TEdit;
    edtXMunCarrega: TEdit;
    Label19: TLabel;
    edtUFPer: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label30: TLabel;
    edtRNTRC: TEdit;
    Label34: TLabel;
    Label38: TLabel;
    edtCIOT: TEdit;
    Label39: TLabel;
    edtCPF: TEdit;
    Label42: TLabel;
    Label44: TLabel;
    edtCInt: TEdit;
    Label45: TLabel;
    edtPlaca: TEdit;
    Label46: TLabel;
    edtRENAVAM: TEdit;
    Label47: TLabel;
    edtTara: TEdit;
    Label48: TLabel;
    edtCapKG: TEdit;
    Label49: TLabel;
    edtCapM3: TEdit;
    Label51: TLabel;
    edtTpRod: TEdit;
    Label52: TLabel;
    edtTpCar: TEdit;
    Label53: TLabel;
    Label54: TLabel;
    edtCxNome: TEdit;
    edtCCPF: TEdit;
    Label55: TLabel;
    Label56: TLabel;
    edtVUF: TEdit;
    Label57: TLabel;
    Label58: TLabel;
    edtRCInt: TEdit;
    edtRPlaca: TEdit;
    Label59: TLabel;
    Label60: TLabel;
    edtRRENAVAM: TEdit;
    Label61: TLabel;
    edtRUF: TEdit;
    Label62: TLabel;
    edtRTara: TEdit;
    Label63: TLabel;
    edtRCapKG: TEdit;
    Label64: TLabel;
    edtRCapM3: TEdit;
    Label65: TLabel;
    edtRTpRod: TEdit;
    Label66: TLabel;
    edtRTpCar: TEdit;
    edtEEmail: TEdit;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    edtIcMunDescarga: TEdit;
    edtIxMunDescarga: TEdit;
    Label72: TLabel;
    Label73: TLabel;
    edtchNFe: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    FIDE_MDFE_Doc : TIDE_MDFE_Doc;
    FEMIT_MDFE_Doc : TEMIT_MDFE_Doc;
    FENDEREMIT_MDFE_Doc : TENDEREMIT_MDFE_Doc;
    FIDE_INF_MDFE_Doc : TIDE_INF_MDFE_Doc;
    FRODO_INF_MDFE_Doc : TRODO_INF_MDFE_Doc;
    FINFDOC_MDFE_Doc : TINFDOC_MDFE_Doc;

  public
    procedure ide_mfde_doc;
    procedure ide_inf_mdfe_doc;
    procedure emit_mdfe_doc;
    procedure ender_emit_mdfe_doc;
    procedure rodo_inf_mdfe_doc;
    procedure infDoc_mdfe_doc;
  end;

var
  frmMdfeDocumento: TfrmMdfeDocumento;

implementation

{$R *.dfm}

procedure TfrmMdfeDocumento.btnOkClick(Sender: TObject);
begin
  try
    OpenDialog1.Execute;
    XMLDocument1.LoadFromFile(OpenDialog1.FileName);

    ide_mfde_doc;
    ide_inf_mdfe_doc;
    emit_mdfe_doc;
    ender_emit_mdfe_doc;
    rodo_inf_mdfe_doc;
    infDoc_mdfe_doc;
  except on E: Exception do

  end;
end;

procedure TfrmMdfeDocumento.FormCreate(Sender: TObject);
begin
  FIDE_MDFE_Doc := TIDE_MDFE_Doc.Create_TIDE_MDFE_Doc;
  FEMIT_MDFE_Doc := TEMIT_MDFE_Doc.Create_TEMIT_MDFE_Doc;
  FIDE_INF_MDFE_Doc := TIDE_INF_MDFE_Doc.Create_TIDE_INF_MDFE_Doc;
  FRODO_INF_MDFE_Doc := TRODO_INF_MDFE_Doc.Create_TRODO_INF_MDFE_Doc;
  FENDEREMIT_MDFE_Doc := TENDEREMIT_MDFE_Doc.Create_TENDEREMIT_MDFE_Doc;
  FINFDOC_MDFE_Doc := TINFDOC_MDFE_Doc.Create_TINFDOC_MDFE_Doc;
end;

procedure TfrmMdfeDocumento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FIDE_MDFE_Doc.Destroy_TIDE_MDFE_Doc;
  FEMIT_MDFE_Doc.Destroy_TEMIT_MDFE_Doc;
  FENDEREMIT_MDFE_Doc.Destroy_TENDEREMIT_MDFE_Doc;
  FIDE_INF_MDFE_Doc.Destroy_TIDE_INF_MDFE_Doc;
  FRODO_INF_MDFE_Doc.Destroy_TRODO_INF_MDFE_Doc;
  FINFDOC_MDFE_Doc.Destroy_TINFDOC_MDFE_Doc;
end;

procedure TfrmMdfeDocumento.ide_mfde_doc;
var nodeInfMdfe_ide : IXMLNode;
begin
  nodeInfMdfe_ide := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('ide');

  FIDE_MDFE_Doc.NodeIde := nodeInfMdfe_ide;
  FIDE_MDFE_Doc.PreencherIDE;

  self.edtcUF.Text := FIDE_MDFE_Doc.TCUF;
  self.edtTpAmb.Text := FIDE_MDFE_Doc.TTpAmb;
  self.edtTpEmit.Text := FIDE_MDFE_Doc.TTpEmit;
  self.edtMod.Text := FIDE_MDFE_Doc.TMood;
  self.edtSerie.Text := FIDE_MDFE_Doc.TSerie;
  self.edtNMDF.Text := FIDE_MDFE_Doc.TNMDF;
  self.edtCMDF.Text := FIDE_MDFE_Doc.TCMDF;
  self.edtCDV.Text := FIDE_MDFE_Doc.TCDV;
  self.edtModal.Text := FIDE_MDFE_Doc.TModal;
  self.edtDhEmi.Text := FIDE_MDFE_Doc.TDhEmi;
  self.edtTpEmis.Text := FIDE_MDFE_Doc.TTpEmis;
  self.edtProcEmi.Text := FIDE_MDFE_Doc.TProcEmi;
  self.edtVerProc.Text := FIDE_MDFE_Doc.TVerProc;
  self.edtUFIni.Text := FIDE_MDFE_Doc.TUFIni;
  self.edtUFFim.Text := FIDE_MDFE_Doc.TUFFim;

  nodeInfMdfe_ide := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('ide').ChildNodes.FindNode('infPercurso');

  FIDE_MDFE_Doc.NodeIde := nodeInfMdfe_ide;
  FIDE_MDFE_Doc.PreencherIDE;

  self.edtUFPer.Text := FIDE_MDFE_Doc.TUFPer;
end;

procedure TfrmMdfeDocumento.ide_inf_mdfe_doc;
var nodeInfMdfe_ideInf : IXMLNode;
begin
  nodeInfMdfe_ideInf := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('ide').ChildNodes.FindNode('infMunCarrega');

  FIDE_INF_MDFE_Doc.NodeIdeInf := nodeInfMdfe_ideInf;
  FIDE_INF_MDFE_Doc.PreencheIdeInf;

  self.edtCMunCarrega.Text := FIDE_INF_MDFE_Doc.TcMunCarrega;
  self.edtXMunCarrega.Text := FIDE_INF_MDFE_Doc.TxMunCarrega;
end;

procedure TfrmMdfeDocumento.emit_mdfe_doc;
var nodeInfMdfe_emit : IXMLNode;
begin
  nodeInfMdfe_emit := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('emit');

  FEMIT_MDFE_Doc.NodeEmit := nodeInfMdfe_emit;
  FEMIT_MDFE_Doc.PreencheEmit;

  self.edtECnpj.Text := FEMIT_MDFE_Doc.TCNPJ;
  self.edtEIE.Text := FEMIT_MDFE_Doc.TIE;
  self.edtEXNome.Text := FEMIT_MDFE_Doc.TXNome;
  self.edtEXFant.Text := FEMIT_MDFE_Doc.TXFant;
  self.edtEIEST.Text := FEMIT_MDFE_Doc.TIEST;
end;

procedure TfrmMdfeDocumento.ender_emit_mdfe_doc;
var nodeInfMdfe_EnderEmit : IXMLNode;
begin
  nodeInfMdfe_EnderEmit := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit');

  FENDEREMIT_MDFE_Doc.NodeEnderEmit := nodeInfMdfe_EnderEmit;
  FENDEREMIT_MDFE_Doc.PreencherEnderEmit;

  self.edtXLgr.Text := FENDEREMIT_MDFE_Doc.TXLgr;
  self.edtNro.Text := FENDEREMIT_MDFE_Doc.TNro;
  self.edtXBairro.Text := FENDEREMIT_MDFE_Doc.TXBairro;
  self.edtCMun.Text := FENDEREMIT_MDFE_Doc.TCMun;
  self.edtXMun.Text := FENDEREMIT_MDFE_Doc.TXMun;
  self.edtCEP.Text := FENDEREMIT_MDFE_Doc.TCEP;
  self.edtEUF.Text := FENDEREMIT_MDFE_Doc.TEUF;
  self.edtFone.Text := FENDEREMIT_MDFE_Doc.TFone;
  self.edtEEmail.Text := FENDEREMIT_MDFE_Doc.TEmail;
end;

procedure TfrmMdfeDocumento.rodo_inf_mdfe_doc;
var nodeInfNfe_rodo_inf : IXMLNode;
begin
  nodeInfNfe_rodo_inf := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('infModal').ChildNodes.FindNode('rodo').ChildNodes.FindNode('infANTT');

  FRODO_INF_MDFE_Doc.NodeRodoInf :=  nodeInfNfe_rodo_inf;
  FRODO_INF_MDFE_Doc.PreencheRodoInf;

  self.edtRNTRC.Text := FRODO_INF_MDFE_Doc.TRNTRC; //infANTT

  nodeInfNfe_rodo_inf := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('infModal').ChildNodes.FindNode('rodo').ChildNodes.FindNode('infANTT').ChildNodes.FindNode('infCIOT');

  FRODO_INF_MDFE_Doc.NodeRodoInf :=  nodeInfNfe_rodo_inf;
  FRODO_INF_MDFE_Doc.PreencheRodoInf;

  self.edtCIOT.Text := FRODO_INF_MDFE_Doc.TCIOT; // infCIOT
  self.edtCPF.Text := FRODO_INF_MDFE_Doc.TCPF;
end;

procedure TfrmMdfeDocumento.infDoc_mdfe_doc;
var nodeInfNfe_infDoc : IXMLNode;
begin
  nodeInfNfe_infDoc := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('infDoc').ChildNodes.FindNode('infMunDescarga');

  FINFDOC_MDFE_Doc.NodeInfDoc := nodeInfNfe_infDoc;
  FINFDOC_MDFE_Doc.PreencheInfDoc;

  self.edtIcMunDescarga.Text := FINFDOC_MDFE_Doc.TCMunDescarga;  //infMunDescarga
  self.edtIxMunDescarga.Text := FINFDOC_MDFE_Doc.TXMunDescarga;

  nodeInfNfe_infDoc := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('infDoc').ChildNodes.FindNode('infMunDescarga').ChildNodes.FindNode('infNFe');

  FINFDOC_MDFE_Doc.NodeInfDoc := nodeInfNfe_infDoc;
  FINFDOC_MDFE_Doc.PreencheInfDoc;

  self.edtchNFe.Text := FINFDOC_MDFE_Doc.TChNFe;   //infNFe
end;

procedure TfrmMdfeDocumento.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
