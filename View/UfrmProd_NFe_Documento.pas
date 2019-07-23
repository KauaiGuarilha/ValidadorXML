unit UfrmProd_NFe_Documento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmProd_NFe_Documento = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProd_NFe_Documento: TfrmProd_NFe_Documento;

implementation

{$R *.dfm}

end.
