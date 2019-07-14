unit UfrmProd_NFe_Documento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmProd_NFe_Documento = class(TForm)
    MemoProd: TMemo;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    Panel1: TPanel;
    Label1: TLabel;
    MemoTrib: TMemo;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProd_NFe_Documento: TfrmProd_NFe_Documento;

implementation

{$R *.dfm}

procedure TfrmProd_NFe_Documento.Button1Click(Sender: TObject);
var nodeDet, nodeProd, nodeTrib, nodeTribICMS : IXMLNode;
    i, j, k, l, m : Integer;
begin
     try
         OpenDialog1.Execute;

          XMLDocument1.LoadFromFile(OpenDialog1.FileName);

          nodeDet := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('det');
          nodeProd := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('det').ChildNodes.FindNode('prod');
          nodeTrib := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('det').ChildNodes.FindNode('imposto');
          nodeTribICMS := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('det').ChildNodes.FindNode('imposto').ChildNodes.FindNode('ICMS').ChildNodes.FindNode('ICMSSN101');

          for i := 0 to nodeDet.ChildNodes.Count-1 do
          begin
             for j := 0 to nodeProd.ChildNodes.Count-1 do
             begin
                 MemoProd.Lines.Add(nodeDet.ChildNodes[i].NodeName + ' | ' + nodeProd.ChildNodes[j].NodeName + ' = ' + nodeProd.ChildNodes[j].Text);

             end;
          end;

          for k := 0 to nodeDet.ChildNodes.Count-1 do
          begin
             for l := 0 to nodeTrib.ChildNodes.Count-1 do
             begin
                 for m := 0 to nodeTribICMS.ChildNodes.Count-1 do
                 begin
                   MemoTrib.Lines.Add( ' | ' + nodeTribICMS.ChildNodes[m].NodeName + ' = ' + nodeTribICMS.ChildNodes[m].Text);
                  //MemoTrib.Lines.Add(nodeDet.ChildNodes[k].NodeName + ' | ' + nodeTrib.ChildNodes[l].NodeName + ' = ' + nodeTrib.ChildNodes[l].Text);
                 end
             end;
          end

     except on E: Exception do
     end;
end;

end.
