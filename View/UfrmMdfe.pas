unit UfrmMdfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMDFe: TfrmMDFe;

implementation

{$R *.dfm}

procedure TfrmMDFe.NFe_AClick(Sender: TObject);
begin
    begin
    ShowMessage('M�dulo MDF-e Autorizado em contru��o!');
end;
end;

procedure TfrmMDFe.NFe_RClick(Sender: TObject);
begin
    begin
    ShowMessage('M�dulo MDF-e Documento em contru��o!');
end;
end;

end.
