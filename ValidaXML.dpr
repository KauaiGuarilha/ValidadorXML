program ValidaXML;

uses
  Vcl.Forms,
  ValidadorXML in 'ValidadorXML.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  UnfeAutorizada in 'View\UnfeAutorizada.pas' {frmNFe_Autorizada},
  UfrmProd_NFe_Autorizada in 'View\UfrmProd_NFe_Autorizada.pas' {frmProd_NFe_Autorizada},
  UnfeDocumento in 'View\UnfeDocumento.pas' {frmNFe_Documento},
  UnfseDocumento in 'View\UnfseDocumento.pas' {frmNFSe_Documento},
  UnfceAutorizado in 'View\UnfceAutorizado.pas' {frmNFCe_Autorizado},
  UfrmNfe in 'View\UfrmNfe.pas' {frmNFe},
  UfrmNfCe in 'View\UfrmNfCe.pas' {frmNFCe},
  UfrmNfse in 'View\UfrmNfse.pas' {frmNFSe},
  UfrmMdfe in 'View\UfrmMdfe.pas' {frmMDFe},
  UfrmProd_NFe_Documento in 'View\UfrmProd_NFe_Documento.pas' {frmProd_NFe_Documento},
  IDE_NFE_Doc in 'Model\IDE_NFE_Doc.pas',
  EMIT_NFE_Doc in 'Model\EMIT_NFE_Doc.pas',
  ENDEREMIT_NFE_Doc in 'Model\ENDEREMIT_NFE_Doc.pas',
  DEST_NFE_Doc in 'Model\DEST_NFE_Doc.pas',
  ENDERDEST_NFE_Doc in 'Model\ENDERDEST_NFE_Doc.pas',
  IDE_NFCE_Doc in 'Model\IDE_NFCE_Doc.pas',
  LOTERPS_NFSE_Doc in 'Model\LOTERPS_NFSE_Doc.pas',
  LOTERPS_IDENT_NFSE_Doc in 'Model\LOTERPS_IDENT_NFSE_Doc.pas',
  LISTARPS_NFSE_Doc in 'Model\LISTARPS_NFSE_Doc.pas',
  PRESTADOR_NFSE_Doc in 'Model\PRESTADOR_NFSE_Doc.pas',
  PRESTADORENDER_NFSE_Doc in 'Model\PRESTADORENDER_NFSE_Doc.pas',
  TOMADORIDENT_NFSE_Doc in 'Model\TOMADORIDENT_NFSE_Doc.pas',
  TOMADORENDER_NFSE_Doc in 'Model\TOMADORENDER_NFSE_Doc.pas',
  UmdfeDocumento in 'View\UmdfeDocumento.pas' {frmMdfeDocumento},
  IDE_MDFE_Doc in 'Model\IDE_MDFE_Doc.pas',
  EMIT_MDFE_Doc in 'Model\EMIT_MDFE_Doc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmNFe_Autorizada, frmNFe_Autorizada);
  Application.CreateForm(TfrmProd_NFe_Autorizada, frmProd_NFe_Autorizada);
  Application.CreateForm(TfrmNFe_Documento, frmNFe_Documento);
  Application.CreateForm(TfrmNFSe_Documento, frmNFSe_Documento);
  Application.CreateForm(TfrmNFCe_Autorizado, frmNFCe_Autorizado);
  Application.CreateForm(TfrmNFe, frmNFe);
  Application.CreateForm(TfrmNFCe, frmNFCe);
  Application.CreateForm(TfrmNFSe, frmNFSe);
  Application.CreateForm(TfrmMDFe, frmMDFe);
  Application.CreateForm(TfrmProd_NFe_Documento, frmProd_NFe_Documento);
  Application.CreateForm(TfrmMdfeDocumento, frmMdfeDocumento);
  Application.Run;
end.
