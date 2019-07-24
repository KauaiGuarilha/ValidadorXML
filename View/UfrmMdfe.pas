unit UfrmMdfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, UmdfeDocumento,
  Vcl.ExtCtrls;

type
  TfrmMDFe = class(TForm)
    Panel1: TPanel;
    NFe_R: TImage;
    Label2: TLabel;
    NFe_A: TImage;
    Label3: TLabel;
    procedure NFe_RClick(Sender: TObject);
    procedure NFe_AClick(Sender: TObject);
  private

  public
    umfrmMdfeDocumento : TfrmMdfeDocumento;


  end;

var
  frmMDFe: TfrmMDFe;

implementation

{$R *.dfm}

procedure TfrmMDFe.NFe_AClick(Sender: TObject);
begin
    begin
    ShowMessage('Módulo MDF-e Autorizado em contrução!');
end;
end;

procedure TfrmMDFe.NFe_RClick(Sender: TObject);
begin
  umfrmMdfeDocumento := TfrmMdfeDocumento.Create(nil);
  try
    umfrmMdfeDocumento.ShowModal;
  finally
    FreeAndNil(umfrmMdfeDocumento);
  end;
end;

end.
