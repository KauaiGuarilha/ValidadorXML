unit UnfeDocumento;
{**
 *
 * @author Kauai Guarilha
 */}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.ExtCtrls,
  Xml.XMLDoc, Vcl.ComCtrls, Vcl.StdCtrls,UfrmProd_NFe_Documento, IDE_NFE_Doc, EMIT_NFE_Doc, ENDEREMIT_NFE_Doc,
  DEST_NFE_Doc, ENDERDEST_NFE_Doc;

type
  TfrmNFe_Documento = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    ed: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    lbnDCpf: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    lbnDCpl: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    btnOk: TButton;
    edtUF: TEdit;
    edtCnfe: TEdit;
    edtNatOp: TEdit;
    edtMod: TEdit;
    edtSerie: TEdit;
    edtNNF: TEdit;
    edtDhEmi: TEdit;
    edtDhSaiEnt: TEdit;
    edtTpNF: TEdit;
    edtIdDest: TEdit;
    edtCMunFG: TEdit;
    edtTpImp: TEdit;
    edtTpEmis: TEdit;
    edtCDV: TEdit;
    edtTpAmb: TEdit;
    edtFinNFe: TEdit;
    edtIndFinal: TEdit;
    edtIndPres: TEdit;
    edtProcEmi: TEdit;
    edtVerProc: TEdit;
    edtCnpj: TEdit;
    edtXNome: TEdit;
    edtXFant: TEdit;
    edtIE: TEdit;
    edtIEST: TEdit;
    edtCRT: TEdit;
    edtXLgr: TEdit;
    edtXBairro: TEdit;
    edtCMun: TEdit;
    edtXMun: TEdit;
    edtNro: TEdit;
    edtCPais: TEdit;
    edtXPais: TEdit;
    edtFone: TEdit;
    edtCEP: TEdit;
    edtEUF: TEdit;
    edtDXNome: TEdit;
    edtCPF: TEdit;
    edtIndIEDest: TEdit;
    edtDxLgr: TEdit;
    edtDnro: TEdit;
    edtDxBairro: TEdit;
    edtDxCpl: TEdit;
    edtDcMun: TEdit;
    edtDxMun: TEdit;
    edtDcPais: TEdit;
    edtDxPais: TEdit;
    edtDfone: TEdit;
    edtDCEP: TEdit;
    edtDUF: TEdit;
    StatusBar1: TStatusBar;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    Timer1: TTimer;
    edtXCpl: TEdit;
    lbnECpl: TLabel;
    Label58: TLabel;
    edtDIE: TEdit;
    lbnDCnpj: TLabel;
    edtDCNPJ: TEdit;
    lbnDEmail: TLabel;
    edtDEmail: TEdit;
    Label1: TLabel;
    Label34: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    FIDE_NFE_Doc : TIDE_NFE_Doc;
    FEMIT_NFE_Doc : TEMIT_NFE_Doc;
    FENDEREMIT_NFE_Doc : TENDEREMIT_NFE_Doc;
    FDEST_NFE_Doc : TDEST_NFE_Doc;
    FENDERDEST_NFE_Doc : TENDERDEST_NFE_Doc;

    procedure ide_nfe_doc;
    procedure emit_nfe_doc;
    procedure enderEmit_nfe_doc;
    procedure dest_nfe_doc;
    procedure enderDest_nfe_doc;
  public

  end;

var
  frmNFe_Documento: TfrmNFe_Documento;
  umfrmProd_NFe_Documento : TfrmProd_NFe_Documento;

implementation

{$R *.dfm}

procedure TfrmNFe_Documento.btnOkClick(Sender: TObject);
begin
  try
    OpenDialog1.Execute;
    XMLDocument1.LoadFromFile(OpenDialog1.FileName);

    ide_nfe_doc;
    emit_nfe_doc;
    enderEmit_nfe_doc;
    dest_nfe_doc;
    enderDest_nfe_doc;
  except on E: Exception do

  end;
end;

procedure TfrmNFe_Documento.Button1Click(Sender: TObject);
begin
    umfrmProd_NFe_Documento := TfrmProd_NFe_Documento.Create(nil);
    try
      umfrmProd_NFe_Documento.ShowModal;
    finally
      FreeAndNil(umfrmProd_NFe_Documento);
    end;
end;

procedure TfrmNFe_Documento.FormCreate(Sender: TObject);
begin
  FIDE_NFE_Doc := TIDE_NFE_Doc.Create_TIDE_NFE_Doc;
  FEMIT_NFE_Doc := TEMIT_NFE_Doc.Create_TEMIT_NFE_Doc;
  FENDEREMIT_NFE_Doc := TENDEREMIT_NFE_Doc.Create_TENDEREMIT_NFE_Doc;
  FDEST_NFE_Doc := TDEST_NFE_Doc.Create_TDEST_NFE_Doc;
  FENDERDEST_NFE_Doc := TENDERDEST_NFE_Doc.Create_TENDERDEST_NFE_Doc;
end;

procedure TfrmNFe_Documento.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  FIDE_NFE_Doc.Free;
  FEMIT_NFE_Doc.Free;
  FENDEREMIT_NFE_Doc.Free;
  FDEST_NFE_Doc.Free;
  FENDERDEST_NFE_Doc.Free;
end;

procedure TfrmNFe_Documento.ide_nfe_doc;
var nodeInfNfe_ide : IXMLNode;
begin
  nodeInfNfe_ide := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('ide');

  FIDE_NFE_Doc.NodeIde := nodeInfNfe_ide;
  FIDE_NFE_Doc.PreencherIDE;

  self.edtUF.Text := FIDE_NFE_Doc.TcUf;
  self.edtCnfe.Text := FIDE_NFE_Doc.TcNF;
  self.edtNatOp.Text := FIDE_NFE_Doc.TNatOp;
  self.edtMod.Text := FIDE_NFE_Doc.TMood;
  self.edtSerie.Text := FIDE_NFE_Doc.TSerie;
  self.edtNNF.Text := FIDE_NFE_Doc.TNNF;
  self.edtDhEmi.Text := FIDE_NFE_Doc.TDhEmi;
  self.edtDhSaiEnt.Text := FIDE_NFE_Doc.TDhSaiEnt;
  self.edtTpNF.Text := FIDE_NFE_Doc.TTpNF;
  self.edtIdDest.Text := FIDE_NFE_Doc.TIdDest;
  self.edtCMunFG.Text := FIDE_NFE_Doc.TCMunFG;
  self.edtTpImp.Text := FIDE_NFE_Doc.TTpImp;
  self.edtTpEmis.Text := FIDE_NFE_Doc.TTpEmis;
  self.edtCDV.Text := FIDE_NFE_Doc.TCDV;
  self.edtTpAmb.Text := FIDE_NFE_Doc.TTpAmb;
  self.edtFinNFe.Text := FIDE_NFE_Doc.TFinNFe;
  self.edtIndFinal.Text := FIDE_NFE_Doc.TIndFinal;
  self.edtIndPres.Text := FIDE_NFE_Doc.TIndPres;
  self.edtProcEmi.Text := FIDE_NFE_Doc.TProcEmi;
  self.edtVerProc.Text := FIDE_NFE_Doc.TVerProc;
end;

procedure TfrmNFe_Documento.emit_nfe_doc;
var nodeInfNfe_emit : IXMLNode;
begin
  nodeInfNfe_emit := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('emit');

  FEMIT_NFE_Doc.NodeEmit := nodeInfNfe_emit;
  FEMIT_NFE_Doc.PreencheEmit;

  self.edtCnpj.Text := FEMIT_NFE_Doc.TCNPJ;
  self.edtXNome.Text := FEMIT_NFE_Doc.TXNome;
  self.edtXFant.Text := FEMIT_NFE_Doc.TXFant;
  self.edtIE.Text := FEMIT_NFE_Doc.TIE;
  self.edtIEST.Text := FEMIT_NFE_Doc.TIEST;
  self.edtCRT.Text := FEMIT_NFE_Doc.TCRT;

end;

procedure TfrmNFe_Documento.enderEmit_nfe_doc;
var nodeInfNfe_enderEmit : IXMLNode;
begin
  nodeInfNfe_enderEmit := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit');

  FENDEREMIT_NFE_Doc.NodeEnderEmit := nodeInfNfe_enderEmit;
  FENDEREMIT_NFE_Doc.PreencherEnderEmit;

  self.edtXLgr.Text := FENDEREMIT_NFE_Doc.TXLgr;
  self.edtNro.Text := FENDEREMIT_NFE_Doc.TNro;
  self.edtXCpl.Text := FENDEREMIT_NFE_Doc.TXCpl; //Opcional
  self.edtXBairro.Text := FENDEREMIT_NFE_Doc.TXBairro;
  self.edtCMun.Text := FENDEREMIT_NFE_Doc.TCMun;
  self.edtXMun.Text := FENDEREMIT_NFE_Doc.TXMun;
  self.edtEUF.Text := FENDEREMIT_NFE_Doc.TEUF;
  self.edtCEP.Text := FENDEREMIT_NFE_Doc.TCEP;
  self.edtCPais.Text := FENDEREMIT_NFE_Doc.TCPais;
  self.edtXPais.Text := FENDEREMIT_NFE_Doc.TXPais;
  self.edtFone.Text := FENDEREMIT_NFE_Doc.TFone;
end;

procedure TfrmNFe_Documento.dest_nfe_doc;
var nodeInfNfe_dest : IXMLNode;
begin
  nodeInfNfe_dest := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('dest');

  FDEST_NFE_Doc.NodeDest := nodeInfNfe_dest;
  FDEST_NFE_Doc.PreencherDest;

  self.edtCPF.Text := FDEST_NFE_Doc.TCPF; //Opcional
  self.edtDCNPJ.Text := FDEST_NFE_Doc.TDCNPJ; //Opcional
  self.edtDXNome.Text := FDEST_NFE_Doc.TDxNome;
  self.edtIndIEDest.Text := FDEST_NFE_Doc.TIndIEDest;
  self.edtDIE.Text := FDEST_NFE_Doc.TDIE; //Opcional
  self.edtDEmail.Text := FDEST_NFE_Doc.TDEmail;
end;

procedure TfrmNFe_Documento.enderDest_nfe_doc;
var nodeInfNfe_enderDest : IXMLNode;
begin
  nodeInfNfe_enderDest := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('dest').ChildNodes.FindNode('enderDest');

  FENDERDEST_NFE_Doc.NodeEnderDest := nodeInfNfe_enderDest;
  FENDERDEST_NFE_Doc.PreencherEnderDest;

  self.edtDxLgr.Text := FENDERDEST_NFE_Doc.TDxLgr;
  self.edtDnro.Text := FENDERDEST_NFE_Doc.TDnro;
  self.edtDxCpl.Text := FENDERDEST_NFE_Doc.TDxCpl; //Opcional
  self.edtDxBairro.Text := FENDERDEST_NFE_Doc.TDxBairro;
  self.edtDcMun.Text := FENDERDEST_NFE_Doc.TDcMun;
  self.edtDxMun.Text := FENDERDEST_NFE_Doc.TDxMun;
  self.edtDUF.Text := FENDERDEST_NFE_Doc.TDUF;
  self.edtDCEP.Text := FENDERDEST_NFE_Doc.TDCEP;
  self.edtDcPais.Text := FENDERDEST_NFE_Doc.TDcPais;
  self.edtDxPais.Text := FENDERDEST_NFE_Doc.TDxPais;
  self.edtDfone.Text := FENDERDEST_NFE_Doc.TDfone;
end;

procedure TfrmNFe_Documento.Timer1Timer(Sender: TObject);
begin
   StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
