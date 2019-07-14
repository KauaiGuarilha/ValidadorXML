unit UfrmNfCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, UnfceAutorizado;

type
  TfrmNFCe = class(TForm)
    Panel1: TPanel;
    NFe_R: TImage;
    Label2: TLabel;
    NFe_A: TImage;
    Label3: TLabel;
    procedure NFe_AClick(Sender: TObject);
    procedure NFe_RClick(Sender: TObject);
  private
    { Private declarations }
    umfrmNFCe_Autorizado: TfrmNFCe_Autorizado;
  public
    { Public declarations }
  end;

var
  frmNFCe: TfrmNFCe;

implementation

{$R *.dfm}

procedure TfrmNFCe.NFe_AClick(Sender: TObject);
begin
     umfrmNFCe_Autorizado := TfrmNFCe_Autorizado.Create(nil);
     try
       ShowMessage('Atenção ! Este módulo é somente para Leitura de XML Autorizadas na SEFAZ !');
       umfrmNFCe_Autorizado.ShowModal;
     finally
       FreeAndNil(umfrmNFCe_Autorizado);
     end;
end;

procedure TfrmNFCe.NFe_RClick(Sender: TObject);
begin
    ShowMessage('Módulo em contrução!');
end;

end.
