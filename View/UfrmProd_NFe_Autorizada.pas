unit UfrmProd_NFe_Autorizada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TfrmProd_NFe_Autorizada = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmProd_NFe_Autorizada: TfrmProd_NFe_Autorizada;

implementation

{$R *.dfm}

procedure TfrmProd_NFe_Autorizada.Button1Click(Sender: TObject);
var nodeInfNfe, nodeIde : IXMLNode;
    i : Integer;
begin
     try
         OpenDialog1.Execute;

          XMLDocument1.LoadFromFile(OpenDialog1.FileName);

          //nodeInfNfe := XMLDocument1.ChildNodes.FindNode('nfeProc').ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe');
          nodeInfNfe := XMLDocument1.ChildNodes[2].ChildNodes[0];
          nodeIde := nodeInfNfe.ChildNodes.FindNode('infNFe');

          for I := 0 to nodeIde.ChildNodes.Count-1 do
            Memo1.Lines.Add(nodeIde.ChildNodes[i].NodeName);
            //Memo1.Lines.Add(nodeIde.ChildNodes[i].NodeName + ' = ' + nodeIde.ChildNodes[i].Text);



     except on E: Exception do
     end;
end;

end.
