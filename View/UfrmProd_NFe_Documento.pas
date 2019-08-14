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
    procedure FormShow(Sender: TObject);
    procedure DBGProdutoCellClick(Column: TColumn);
  private
    FNodeInfProd : IXMLNode;
  public
    property NodeInfProd: IXMLNode read FNodeInfProd write FNodeInfProd;
  end;

var
  frmProd_NFe_Documento: TfrmProd_NFe_Documento;

implementation

{$R *.dfm}

procedure TfrmProd_NFe_Documento.DBGProdutoCellClick(Column: TColumn);
begin
  MemoXmlProd.Lines.Clear;
  MemoXmlProd.Lines.Text := cdsProdutoTagICMS.AsString;
end;

procedure TfrmProd_NFe_Documento.FormShow(Sender: TObject);
var lNodeDet: IXMLNode;
    lNodeProd: IXMLNode;
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

end;

end.
