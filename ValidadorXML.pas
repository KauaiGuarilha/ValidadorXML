unit ValidadorXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, UfrmNfe, UfrmNfCe, UfrmNfse, UfrmMdfe, ShellAPI;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    NFe_R: TImage;
    Label2: TLabel;
    NFCe_R: TImage;
    Label4: TLabel;
    Label6: TLabel;
    Image1: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label3: TLabel;
    Image4: TImage;
    Label5: TLabel;
    Image5: TImage;
    Label9: TLabel;
    ECAC: TLabel;
    Image6: TImage;
    Image7: TImage;
    Label10: TLabel;
    procedure NFCe_RClick(Sender: TObject);
    procedure NFe_RClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
  private
    { Private declarations }
    umfrmNFe : TfrmNFe;
    umfrmNFCe : TfrmNFCe;
    umfrmNFSe : TfrmNFSe;
    umfrmMDFe : TfrmMDFe;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Image1Click(Sender: TObject);
begin
  umfrmNFSe := TfrmNFSe.Create(nil);
  try
    umfrmNFSe.ShowModal;
  finally
    FreeAndNil(umfrmNFSe);
  end;
end;

procedure TfrmMain.Image2Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://www.nfe.fazenda.gov.br/portal/principal.aspx', '', nil,0);
end;

procedure TfrmMain.Image3Click(Sender: TObject);
begin
  umfrmMDFe := TfrmMDFe.Create(nil);
  try
    umfrmMDFe.ShowModal;
  finally
    FreeAndNil(umfrmMDFe);
  end;
end;

procedure TfrmMain.Image4Click(Sender: TObject);
begin
  ShowMessage('Módulo MF-e em contrução!');
end;

procedure TfrmMain.Image5Click(Sender: TObject);
begin
  ShowMessage('Módulo CT-e em contrução!');
end;

procedure TfrmMain.Image6Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://cav.receita.fazenda.gov.br/autenticacao/login', '', nil,0);
end;

procedure TfrmMain.Image7Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://www.sefaz.rs.gov.br/NFE/NFE-VAL.aspx', '', nil,0)
end;

procedure TfrmMain.NFCe_RClick(Sender: TObject);
begin
  umfrmNFCe := TfrmNFCe.Create(nil);
  try
    umfrmNFCe.ShowModal;
  finally
    FreeAndNil(umfrmNFCe);
  end;
end;

procedure TfrmMain.NFe_RClick(Sender: TObject);
begin
  umfrmNFe := TfrmNFe.Create(nil);
  try
    umfrmNFe.ShowModal;
  finally
    FreeAndNil(umfrmNFe);
  end;
end;

end.
