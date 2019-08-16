unit UfrmProd_NFe_Documento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient;

type
  TfrmProd_NFe_Documento = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGProduto: TDBGrid;
    dsProduto: TDataSource;
    MemoXmlProd: TMemo;
    Label2: TLabel;
    cdsProduto: TClientDataSet;
    cdsProdutocProd: TStringField;
    cdsProdutoxProd: TStringField;
    cdsProdutoTagICMS: TMemoField;
    cdsProdutoEAN: TStringField;
    cdsProdutoNCM: TStringField;
    cdsProdutoCFOP: TStringField;
    cdsProdutoqCom: TStringField;
    cdsProdutouCom: TStringField;
    cdsProdutovUnCom: TStringField;
    cdsProdutovProd: TStringField;
    cdsProdutocEANTrib: TStringField;
    cdsProdutouTrib: TStringField;
    cdsProdutoqTrib: TStringField;
    cdsProdutovUnTrib: TStringField;
    cdsProdutoindTot: TStringField;
    blbvTotTrib: TLabel;
    edtvTotTrib: TEdit;
    cdsProdutovTotTrib: TStringField;
    btnCalcularTrib: TButton;
    Label4: TLabel;
    Label3: TLabel;
    edtvBC: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtvICMS: TEdit;
    Label7: TLabel;
    edtvICMSDeson: TEdit;
    Label8: TLabel;
    edtvFCP: TEdit;
    Label9: TLabel;
    edtvBCST: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtvST: TEdit;
    edtvFCPST: TEdit;
    edtvFCPSTRet: TEdit;
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
    edtvTotTribF: TEdit;
    edtvNF: TEdit;
    procedure FormShow(Sender: TObject);
    procedure DBGProdutoCellClick(Column: TColumn);
    procedure btnCalcularTribClick(Sender: TObject);
  private
    FNodeInfProd : IXMLNode;
    tvTotTrib : Double;
    tvTotTrib2 : Double;
  public
    property NodeInfProd: IXMLNode read FNodeInfProd write FNodeInfProd;
  end;

var
  frmProd_NFe_Documento: TfrmProd_NFe_Documento;

implementation

{$R *.dfm}

procedure TfrmProd_NFe_Documento.btnCalcularTribClick(Sender: TObject);
var somar : Double;
begin
inherited;
  somar := 0;
  with cdsProduto do
  begin
    cdsProduto.DisableControls;
    cdsProduto.First;

    while not cdsProduto.Eof do
    begin
      somar := (somar + cdsProduto.FieldByName('vTotTrib').AsFloat);
      cdsProduto.Next;
    end;
    cdsProduto.EnableControls;
    self.edtvTotTrib.Text := FloatToStr(somar);
  end;

end;

procedure TfrmProd_NFe_Documento.DBGProdutoCellClick(Column: TColumn);
begin
  MemoXmlProd.Lines.Clear;
  MemoXmlProd.Lines.Text := cdsProdutoTagICMS.AsString;
end;

procedure TfrmProd_NFe_Documento.FormShow(Sender: TObject);
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

    lNodeImp := lNodeDet.ChildNodes.FindNode('imposto');
    cdsProdutovTotTrib.AsFloat := lNodeImp.ChildNodes.FindNode('vTotTrib').NodeValue/100;

    cdsProduto.Post;
    lNodeDet := lNodeDet.NextSibling;
  end;
end;

end.
