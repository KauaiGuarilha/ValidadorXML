unit UfrmProd_NFe_Autorizada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,
  TOTAL_ICMSTOT_Doc;

type
  TfrmProd_NFe_Autorizada = class(TForm)
    dsProduto: TDataSource;
    cdsProduto: TClientDataSet;
    cdsProdutocProd: TStringField;
    cdsProdutoEAN: TStringField;
    cdsProdutoxProd: TStringField;
    cdsProdutoNCM: TStringField;
    cdsProdutoCFOP: TStringField;
    cdsProdutouCom: TStringField;
    cdsProdutoqCom: TStringField;
    cdsProdutoTagICMS: TMemoField;
    cdsProdutovUnCom: TStringField;
    cdsProdutovProd: TStringField;
    cdsProdutocEANTrib: TStringField;
    cdsProdutouTrib: TStringField;
    cdsProdutoqTrib: TStringField;
    cdsProdutovUnTrib: TStringField;
    cdsProdutoindTot: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
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
    DBGProduto: TDBGrid;
    MemoXmlProd: TMemo;
    edtvBC: TEdit;
    edtvICMS: TEdit;
    edtvICMSDeson: TEdit;
    edtvFCP: TEdit;
    edtvBCST: TEdit;
    edtvST: TEdit;
    edtvFCPST: TEdit;
    edtvFCPSTRet: TEdit;
    edtvPIS: TEdit;
    edtvCOFINS: TEdit;
    edtvProd: TEdit;
    edtvFrete: TEdit;
    edtvSeg: TEdit;
    edtvOutro: TEdit;
    edtvIPIDevol: TEdit;
    edtvDesc: TEdit;
    edtvIPI: TEdit;
    edtvII: TEdit;
    edtVFCPUFDest: TEdit;
    edtvNF: TEdit;
    Label25: TLabel;
    edtVICMSUFDest: TEdit;
    procedure DBGProdutoCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    FNodeInfProd: IXMLNode;
    FNodeTotICMS: IXMLNode;
  public
    procedure PreencherTotICMS;
    property NodeInfProd: IXMLNode read FNodeInfProd write FNodeInfProd;
    property NodeTotICMS : IXMLNode read FNodeTotICMS write FNodeTotICMS;
  end;

var
  frmProd_NFe_Autorizada: TfrmProd_NFe_Autorizada;

implementation

{$R *.dfm}

procedure TfrmProd_NFe_Autorizada.DBGProdutoCellClick(Column: TColumn);
begin
  MemoXmlProd.Lines.Clear;
  MemoXmlProd.Lines.Text := cdsProdutoTagICMS.AsString;
end;

procedure TfrmProd_NFe_Autorizada.FormShow(Sender: TObject);
var lNodeDet: IXMLNode;
    lNodeProd: IXMLNode;
    lNodeImp : IXMLNode;
begin
  cdsProduto.CreateDataSet;
  lNodeDet := FNodeInfProd.ChildNodes.FindNode('det');
  while Assigned(lNodeDet) and (lNodeDet.NodeName = 'det') do
  begin
    lNodeProd := lNodeDet.ChildNodes.FindNode('prod');
    cdsProduto.Append;

    cdsProdutocProd.AsString    := lNodeProd.ChildNodes.FindNode('cProd').Text;
    cdsProdutoEAN.AsString      := lNodeProd.ChildNodes.FindNode('cEAN').Text;
    cdsProdutoxProd.AsString    := lNodeProd.ChildNodes.FindNode('xProd').Text;
    cdsProdutoNCM.AsString      := lNodeProd.ChildNodes.FindNode('NCM').Text;
    cdsProdutoCFOP.AsString     := lNodeProd.ChildNodes.FindNode('CFOP').Text;
    cdsProdutouCom.AsString     := lNodeProd.ChildNodes.FindNode('uCom').Text;
    cdsProdutoqCom.AsString     := lNodeProd.ChildNodes.FindNode('qCom').Text;
    cdsProdutovUnCom.AsString   := lNodeProd.ChildNodes.FindNode('vUnCom').Text;
    cdsProdutovProd.AsString    := lNodeProd.ChildNodes.FindNode('vProd').Text;
    cdsProdutocEANTrib.AsString := lNodeProd.ChildNodes.FindNode('cEANTrib').Text;
    cdsProdutouTrib.AsString    := lNodeProd.ChildNodes.FindNode('uTrib').Text;
    cdsProdutoqTrib.AsString    := lNodeProd.ChildNodes.FindNode('qTrib').Text;
    cdsProdutovUnTrib.AsString  := lNodeProd.ChildNodes.FindNode('vUnTrib').Text;
    cdsProdutoindTot.AsString   := lNodeProd.ChildNodes.FindNode('indTot').Text;
    cdsProdutoTagICMS.AsString  := lNodeDet.ChildNodes.FindNode('imposto').XML;

    {cdsProduto.FieldByName('NmProduto').AsString := lNodeProd.ChildNodes.FindNode('xProd').Text;

    lNodeProd := lNodeDet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMSSN101');
    cdsProdutoCSOSN.AsString    := lNodeProd.ChildNodes.FindNode('CSOSN').Text;

    lNodeProd := lNodeDet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('PIS').ChildNodes.FindNode('PISOutr');
    cdsProdutoPIS_CST.AsString  := lNodeProd.ChildNodes.FindNode('CST').Text;

    lNodeProd := lNodeDet.ChildNodes.FindNode('imposto').ChildNodes.FindNode('COFINS').ChildNodes.FindNode('COFINSOutr');
    cdsProdutoCOFINS_CST.AsString := lNodeProd.ChildNodes.FindNode('CST').Text;}

    cdsProduto.Post;
    lNodeDet := lNodeDet.NextSibling;
  end;
  PreencherTotICMS;
end;

procedure TfrmProd_NFe_Autorizada.PreencherTotICMS;
var  FTOTAL_ICMSTOT_Doc : TTOTAL_ICMSTOT_Doc;
begin
  FTOTAL_ICMSTOT_Doc := TTOTAL_ICMSTOT_Doc.Create_TTOTAL_ICMSTOT_Doc;
  try
    FTOTAL_ICMSTOT_Doc.NodeInfTot := NodeTotICMS.ChildNodes.FindNode('total').ChildNodes.FindNode('ICMSTot');
    FTOTAL_ICMSTOT_Doc.PreencheTot;

    self.edtvBC.Text := FTOTAL_ICMSTOT_Doc.TVBC;
    self.edtvICMS.Text := FTOTAL_ICMSTOT_Doc.TVICMS;
    self.edtvICMSDeson.Text := FTOTAL_ICMSTOT_Doc.TVICMSDeson;
    self.edtvFCP.Text := FTOTAL_ICMSTOT_Doc.TVFCP;
    self.edtvBCST.Text := FTOTAL_ICMSTOT_Doc.TVBCST;
    self.edtvST.Text := FTOTAL_ICMSTOT_Doc.TVST;
    self.edtvFCPST.Text := FTOTAL_ICMSTOT_Doc.TVFCPST;
    self.edtvFCPSTRet.Text := FTOTAL_ICMSTOT_Doc.TVFCPSTRet;
    self.edtvProd.Text := FTOTAL_ICMSTOT_Doc.TVProd;
    self.edtvFrete.Text := FTOTAL_ICMSTOT_Doc.TVFrete;
    self.edtvSeg.Text := FTOTAL_ICMSTOT_Doc.TVSeg;
    self.edtvDesc.Text := FTOTAL_ICMSTOT_Doc.TVDesc;
    self.edtvII.Text := FTOTAL_ICMSTOT_Doc.TVII;
    self.edtvIPI.Text := FTOTAL_ICMSTOT_Doc.TVIPI;
    self.edtvIPIDevol.Text := FTOTAL_ICMSTOT_Doc.TVIPIDevol;
    self.edtvPIS.Text := FTOTAL_ICMSTOT_Doc.TVPIS;
    self.edtvCOFINS.Text := FTOTAL_ICMSTOT_Doc.TVCOFINS;
    self.edtvOutro.Text := FTOTAL_ICMSTOT_Doc.TVOutro;
    self.edtvNF.Text := FTOTAL_ICMSTOT_Doc.TVNF;

    self.edtVFCPUFDest.Text := FTOTAL_ICMSTOT_Doc.TVFCPUFDest;
    self.edtVICMSUFDest.Text := FTOTAL_ICMSTOT_Doc.TVICMSUFDest;
  finally
    FTOTAL_ICMSTOT_Doc.Free;
  end;
end;

end.
