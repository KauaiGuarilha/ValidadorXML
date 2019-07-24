unit UmdfeDocumento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.ExtCtrls,
  Xml.XMLDoc, Vcl.ComCtrls, Vcl.StdCtrls, IDE_MDFE_Doc;

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
    edtCnpj: TEdit;
    edtXNome: TEdit;
    edtXFant: TEdit;
    edtIE: TEdit;
    edtIEST: TEdit;
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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    FIDE_MDFE_Doc : TIDE_MDFE_Doc;

  public
    procedure ide_mfde_doc;

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
  except on E: Exception do

  end;
end;

procedure TfrmMdfeDocumento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FIDE_MDFE_Doc.Destroy_TIDE_MDFE_Doc;
end;

procedure TfrmMdfeDocumento.FormCreate(Sender: TObject);
begin
  FIDE_MDFE_Doc := TIDE_MDFE_Doc.Create_TIDE_MDFE_Doc;
end;

procedure TfrmMdfeDocumento.ide_mfde_doc;
var nodeInfNfe_ide : IXMLNode;
begin
  nodeInfNfe_ide := XMLDocument1.ChildNodes.FindNode('MDFe').ChildNodes.FindNode('infMDFe').ChildNodes.FindNode('ide');

  FIDE_MDFE_Doc.NodeIde := nodeInfNfe_ide;
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
  self.edtUFIni.Text := FIDE_MDFE_Doc.TUFIni;
  self.edtUFFim.Text := FIDE_MDFE_Doc.TUFFim;
  self.edtUFPer.Text := FIDE_MDFE_Doc.TUFPer;

end;

procedure TfrmMdfeDocumento.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
