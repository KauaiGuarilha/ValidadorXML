unit UfrmNfse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, UnfseDocumento, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmNFSe = class(TForm)
    Panel1: TPanel;
    NFe_R: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    procedure NFe_RClick(Sender: TObject);
  private
    { Private declarations }
    umfrmfseDocumento : TfrmNFSe_Documento;
  public
    { Public declarations }
  end;

var
  frmNFSe: TfrmNFSe;

implementation

{$R *.dfm}

procedure TfrmNFSe.NFe_RClick(Sender: TObject);
begin
    umfrmfseDocumento := TfrmNFSe_Documento.Create(nil);
    try
       ShowMessage('Atenção ! Este módulo é somente para Leitura de Documentos ISS. Não autorizados !');
       umfrmfseDocumento.ShowModal;
    finally
       FreeAndNil(umfrmfseDocumento);
    end;
end;

end.
