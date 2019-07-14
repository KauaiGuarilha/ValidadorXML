unit UfrmNfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, UnfeDocumento, UnfeAutorizada,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TfrmNFe = class(TForm)
    Panel1: TPanel;
    NFe_R: TImage;
    Label2: TLabel;
    NFe_A: TImage;
    Label3: TLabel;
    procedure NFe_RClick(Sender: TObject);
    procedure NFe_AClick(Sender: TObject);
  private
    { Private declarations }
    umfrmNFe_Autorizada : TfrmNFe_Autorizada;
    umfrmNFe_Documento : TfrmNFe_Documento;
  public
    { Public declarations }
  end;

var
  frmNFe: TfrmNFe;

implementation

{$R *.dfm}

procedure TfrmNFe.NFe_AClick(Sender: TObject);
begin
       umfrmNFe_Autorizada := TfrmNFe_Autorizada.Create(nil);
     try
       ShowMessage('Atenção ! Este módulo é somente para Leitura de XML Autorizadas na SEFAZ !');
       umfrmNFe_Autorizada.ShowModal;
     finally
       FreeAndNil(umfrmNFe_Autorizada);
     end;
end;

procedure TfrmNFe.NFe_RClick(Sender: TObject);
begin
       umfrmNFe_Documento := TfrmNFe_Documento.Create(nil);
     try
       ShowMessage('Atenção ! Este módulo é somente para Leitura de Documentos XML. Não autorizados !');
       umfrmNFe_Documento.ShowModal;
     finally
       FreeAndNil(umfrmNFe_Documento);
     end;
end;

end.
