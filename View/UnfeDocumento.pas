unit UnfeDocumento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.ExtCtrls,
  Xml.XMLDoc, Vcl.ComCtrls, Vcl.StdCtrls,UfrmProd_NFe_Documento, IDE_NFE_Doc, EMIT_NFE_Doc, ENDEREMIT_NFE_Doc,
  DEST_NFE_Doc, ENDERDEST_NFE_Doc;

type
  TfrmNFe_Documento = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    ed: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    lbnDCpf: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    lbnDCpl: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    btnOk: TButton;
    edtUF: TEdit;
    edtCnfe: TEdit;
    edtNatOp: TEdit;
    edtMod: TEdit;
    edtSerie: TEdit;
    edtNNF: TEdit;
    edtDhEmi: TEdit;
    edtDhSaiEnt: TEdit;
    edtTpNF: TEdit;
    edtIdDest: TEdit;
    edtCMunFG: TEdit;
    edtTpImp: TEdit;
    edtTpEmis: TEdit;
    edtCDV: TEdit;
    edtTpAmb: TEdit;
    edtFinNFe: TEdit;
    edtIndFinal: TEdit;
    edtIndPres: TEdit;
    edtProcEmi: TEdit;
    edtVerProc: TEdit;
    edtCnpj: TEdit;
    edtXNome: TEdit;
    edtXFant: TEdit;
    edtIE: TEdit;
    edtIEST: TEdit;
    edtCRT: TEdit;
    edtXLgr: TEdit;
    edtXBairro: TEdit;
    edtCMun: TEdit;
    edtXMun: TEdit;
    edtNro: TEdit;
    edtCPais: TEdit;
    edtXPais: TEdit;
    edtFone: TEdit;
    edtCEP: TEdit;
    edtEUF: TEdit;
    edtDXNome: TEdit;
    edtCPF: TEdit;
    edtIndIEDest: TEdit;
    edtDxLgr: TEdit;
    edtDnro: TEdit;
    edtDxBairro: TEdit;
    edtDxCpl: TEdit;
    edtDcMun: TEdit;
    edtDxMun: TEdit;
    edtDcPais: TEdit;
    edtDxPais: TEdit;
    edtDfone: TEdit;
    edtDCEP: TEdit;
    edtDUF: TEdit;
    StatusBar1: TStatusBar;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    XMLDocument1: TXMLDocument;
    Timer1: TTimer;
    edtXCpl: TEdit;
    lbnECpl: TLabel;
    Label58: TLabel;
    edtDIE: TEdit;
    lbnDCnpj: TLabel;
    edtDCNPJ: TEdit;
    lbnDEmail: TLabel;
    edtDEmail: TEdit;
    Label1: TLabel;
    Label34: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    nodeInfNfe_ide, nodeInfNfe_emit, nodeInfNfe_enderEmit, nodeInfNfe_dest, nodeInfNfe_enderDest: IXMLNode;

    FIDE_NFE_Doc : TIDE_NFE_Doc;
    FEMIT_NFE_Doc : TEMIT_NFE_Doc;
    FENDEREMIT_NFE_Doc : TENDEREMIT_NFE_Doc;
    FDEST_NFE_Doc : TDEST_NFE_Doc;
    FENDERDEST_NFE_Doc : TENDERDEST_NFE_Doc;

  public

  end;

var
  frmNFe_Documento: TfrmNFe_Documento;
  umfrmProd_NFe_Documento : TfrmProd_NFe_Documento;

implementation

{$R *.dfm}

procedure TfrmNFe_Documento.btnOkClick(Sender: TObject);

begin
     try
       OpenDialog1.Execute;

       XMLDocument1.LoadFromFile(OpenDialog1.FileName);

       nodeInfNfe_ide := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('ide');
       nodeInfNfe_emit := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('emit');
       nodeInfNfe_enderEmit := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('emit').ChildNodes.FindNode('enderEmit');
       nodeInfNfe_dest := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('dest');
       nodeInfNfe_enderDest := XMLDocument1.ChildNodes.FindNode('NFe').ChildNodes.FindNode('infNFe').ChildNodes.FindNode('dest').ChildNodes.FindNode('enderDest');

       {ide}

       FIDE_NFE_Doc.NodeIde := nodeInfNfe_ide;
       FIDE_NFE_Doc.PreencherIDE;

       self.edtUF.Text := FIDE_NFE_Doc.TcUf;
       self.edtCnfe.Text := FIDE_NFE_Doc.TcNF;
       self.edtNatOp.Text := FIDE_NFE_Doc.TNatOp;
       self.edtMod.Text := FIDE_NFE_Doc.TMood;
       self.edtSerie.Text := FIDE_NFE_Doc.TSerie;
       self.edtNNF.Text := FIDE_NFE_Doc.TNNF;
       self.edtDhEmi.Text := FIDE_NFE_Doc.TDhEmi;
       self.edtDhSaiEnt.Text := FIDE_NFE_Doc.TDhSaiEnt;
       self.edtTpNF.Text := FIDE_NFE_Doc.TTpNF;
       self.edtIdDest.Text := FIDE_NFE_Doc.TIdDest;
       self.edtCMunFG.Text := FIDE_NFE_Doc.TCMunFG;
       self.edtTpImp.Text := FIDE_NFE_Doc.TTpImp;
       self.edtTpEmis.Text := FIDE_NFE_Doc.TTpEmis;
       self.edtCDV.Text := FIDE_NFE_Doc.TCDV;
       self.edtTpAmb.Text := FIDE_NFE_Doc.TTpAmb;
       self.edtFinNFe.Text := FIDE_NFE_Doc.TFinNFe;
       self.edtIndFinal.Text := FIDE_NFE_Doc.TIndFinal;
       self.edtIndPres.Text := FIDE_NFE_Doc.TIndPres;
       self.edtProcEmi.Text := FIDE_NFE_Doc.TProcEmi;


       if nodeInfNfe_ide.ChildValues['verProc'] = null then
       begin
           self.edtVerProc.Text := '';
       end else
       begin
           FIDE_NFE_Doc.TVerProc := nodeInfNfe_ide.ChildValues['verProc'];
           self.edtVerProc.Text := FIDE_NFE_Doc.TVerProc;
       end;

       {emit}

       if nodeInfNfe_emit.ChildValues['CNPJ'] = null then
       begin
           self.edtCnpj.Text := '';
       end else
       begin
           FEMIT_NFE_Doc.TCNPJ := nodeInfNfe_emit.ChildValues['CNPJ'];
           self.edtCnpj.Text := FEMIT_NFE_Doc.TCNPJ;
       end;

       if nodeInfNfe_emit.ChildValues['xNome'] = null then
       begin
          self.edtXNome.Text := '';
       end else
       begin
           FEMIT_NFE_Doc.TXNome := nodeInfNfe_emit.ChildValues['xNome'];
           self.edtXNome.Text := FEMIT_NFE_Doc.TXNome;
       end;

       if nodeInfNfe_emit.ChildValues['xFant'] = null then
       begin
          self.edtXFant.Text := '';
       end else
       begin
           FEMIT_NFE_Doc.TXFant := nodeInfNfe_emit.ChildValues['xFant'];
           self.edtXFant.Text := FEMIT_NFE_Doc.TXFant;
       end;

       if nodeInfNfe_emit.ChildValues['IE'] = null then
       begin
           self.edtIE.Text := '';
       end else
       begin
           FEMIT_NFE_Doc.TIE := nodeInfNfe_emit.ChildValues['IE'];
           self.edtIE.Text := FEMIT_NFE_Doc.TIE;
       end;

       if nodeInfNfe_emit.ChildValues['IEST'] = null then
       begin
           self.edtIEST.Text := '';
       end else
       begin
          FEMIT_NFE_Doc.TIEST := nodeInfNfe_emit.ChildValues['IEST'];
          self.edtIEST.Text := FEMIT_NFE_Doc.TIEST;
       end;

       if nodeInfNfe_emit.ChildValues['CRT'] = null then
       begin
           self.edtCRT.Text := '';
       end else
       begin
          FEMIT_NFE_Doc.TCRT := nodeInfNfe_emit.ChildValues['CRT'];
          self.edtCRT.Text := FEMIT_NFE_Doc.TCRT;
       end;

       {enderEmit}

        if nodeInfNfe_enderEmit.ChildValues['xLgr'] = null then
        begin
           self.edtXLgr.Text := '';
        end else
        begin
           FENDEREMIT_NFE_Doc.TXLgr := nodeInfNfe_enderEmit.ChildValues['xLgr'];
           self.edtXLgr.Text := FENDEREMIT_NFE_Doc.TXLgr;
        end;

        if nodeInfNfe_enderEmit.ChildValues['nro'] = null then
        begin
           self.edtNro.Text := '';
        end else
        begin
           FENDEREMIT_NFE_Doc.TNro := nodeInfNfe_enderEmit.ChildValues['nro'];
           self.edtNro.Text := FENDEREMIT_NFE_Doc.TNro;
        end;

        if nodeInfNfe_enderEmit.ChildValues['xCpl'] = null then
        begin
           self.edtXCpl.Text := '';
           self.edtXCpl.Visible :=  false;
           self.lbnECpl.Visible := false;
        end else
        begin
          FENDEREMIT_NFE_Doc.TXCpl := nodeInfNfe_enderEmit.ChildValues['xCpl'];
          self.edtXCpl.Text := FENDEREMIT_NFE_Doc.TXCpl;
        end;

        if nodeInfNfe_enderEmit.ChildValues['xBairro'] = null then
        begin
           self.edtXBairro.Text := '';
        end else
        begin
          FENDEREMIT_NFE_Doc.TXBairro := nodeInfNfe_enderEmit.ChildValues['xBairro'];
          self.edtXBairro.Text := FENDEREMIT_NFE_Doc.TXBairro;
        end;

        if nodeInfNfe_enderEmit.ChildValues['cMun'] = null then
        begin
           self.edtCMun.Text := '';
        end else
        begin
          FENDEREMIT_NFE_Doc.TCMun := nodeInfNfe_enderEmit.ChildValues['cMun'];
          self.edtCMun.Text := FENDEREMIT_NFE_Doc.TCMun;
        end;

        if nodeInfNfe_enderEmit.ChildValues['xMun'] = null then
        begin
           self.edtXMun.Text := '';
        end else
        begin
          FENDEREMIT_NFE_Doc.TXMun :=  nodeInfNfe_enderEmit.ChildValues['xMun'];
          self.edtXMun.Text := FENDEREMIT_NFE_Doc.TXMun;
        end;

        if nodeInfNfe_enderEmit.ChildValues['UF'] = null then
        begin
           self.edtEUF.Text := '';
        end else
        begin
           FENDEREMIT_NFE_Doc.TEUF := nodeInfNfe_enderEmit.ChildValues['UF'];
           self.edtEUF.Text := FENDEREMIT_NFE_Doc.TEUF;
        end;

        if nodeInfNfe_enderEmit.ChildValues['CEP'] = null then
        begin
           self.edtCEP.Text := '';
        end else
        begin
           FENDEREMIT_NFE_Doc.TCEP := nodeInfNfe_enderEmit.ChildValues['CEP'];
           self.edtCEP.Text := FENDEREMIT_NFE_Doc.TCEP;
        end;

        if nodeInfNfe_enderEmit.ChildValues['cPais'] = null then
        begin
           self.edtCPais.Text := '';
        end else
        begin
           FENDEREMIT_NFE_Doc.TCPais := nodeInfNfe_enderEmit.ChildValues['cPais'];
           self.edtCPais.Text := FENDEREMIT_NFE_Doc.TCPais;
        end;

        if nodeInfNfe_enderEmit.ChildValues['xPais'] = null then
        begin
           self.edtXPais.Text := '';
        end else
        begin
           FENDEREMIT_NFE_Doc.TXPais := nodeInfNfe_enderEmit.ChildValues['xPais'];
           self.edtXPais.Text := FENDEREMIT_NFE_Doc.TXPais;
        end;

        if nodeInfNfe_enderEmit.ChildValues['fone'] = null then
        begin
          self.edtFone.Text := '';
        end else
        begin
          FENDEREMIT_NFE_Doc.TFone := nodeInfNfe_enderEmit.ChildValues['fone'];
          self.edtFone.Text := FENDEREMIT_NFE_Doc.TFone;
        end;

        {dest}

        if nodeInfNfe_dest.ChildValues['CPF'] = null then
        begin
           self.edtCPF.Text := '';
           self.edtCPF.Visible := false;
           self.lbnDCpf.Visible := false;
        end else
        begin
          FDEST_NFE_Doc.TCPF := nodeInfNfe_dest.ChildValues['CPF'];
          self.edtCPF.Text := FDEST_NFE_Doc.TCPF;
        end;

        if nodeInfNfe_dest.ChildValues['CNPJ'] = null then
        begin
           self.edtDCNPJ.Text := '';
           self.edtDCNPJ.Visible := false;
           self.lbnDCnpj.Visible := false;
        end else
        begin
           FDEST_NFE_Doc.TDCNPJ := nodeInfNfe_dest.ChildValues['CNPJ'];
           self.edtDCNPJ.Text := FDEST_NFE_Doc.TDCNPJ;
        end;

        if nodeInfNfe_dest.ChildValues['xNome'] = null then
        begin
           self.edtDXNome.Text := '';
        end else
        begin
           FDEST_NFE_Doc.TDxNome := nodeInfNfe_dest.ChildValues['xNome'];
           self.edtDXNome.Text := FDEST_NFE_Doc.TDxNome;
        end;

        if nodeInfNfe_dest.ChildValues['indIEDest'] = null then
        begin
           self.edtIndIEDest.Text := '';
        end else
        begin
           FDEST_NFE_Doc.TIndIEDest := nodeInfNfe_dest.ChildValues['indIEDest'];
           self.edtIndIEDest.Text := FDEST_NFE_Doc.TIndIEDest;
        end;

        if nodeInfNfe_dest.ChildValues['IE'] = null then
        begin
           self.edtDIE.Text := '';
        end else
        begin
           FDEST_NFE_Doc.TDIE := nodeInfNfe_dest.ChildValues['IE'];
           self.edtDIE.Text := FDEST_NFE_Doc.TDIE;
        end;

        if nodeInfNfe_dest.ChildValues['email'] = null then
        begin
           self.edtDEmail.Text := '';
           self.edtDEmail.Visible := false;
           self.lbnDEmail.Visible := false;
        end else
        begin
           FDEST_NFE_Doc.TDEmail := nodeInfNfe_dest.ChildValues['email'];
           self.edtDEmail.Text := FDEST_NFE_Doc.TDEmail;
        end;

        {enderDest}

        if nodeInfNfe_enderDest.ChildValues['xLgr'] = null then
        begin
           self.edtDxLgr.Text := '';
        end else
        begin
          FENDERDEST_NFE_Doc.TDxLgr := nodeInfNfe_enderDest.ChildValues['xLgr'];
          self.edtDxLgr.Text := FENDERDEST_NFE_Doc.TDxLgr;
        end;

        if nodeInfNfe_enderDest.ChildValues['nro'] = null then
        begin
           self.edtDnro.Text := '';
        end else
        begin
          FENDERDEST_NFE_Doc.TDnro := nodeInfNfe_enderDest.ChildValues['nro'];
          self.edtDnro.Text := FENDERDEST_NFE_Doc.TDnro;
        end;

        if nodeInfNfe_enderDest.ChildValues['xCpl'] = null then
        begin
           self.edtDxCpl.Text := '';
           self.edtDxCpl.Visible := false;
           self.lbnDCpl.Visible := false;
        end else
        begin
          FENDERDEST_NFE_Doc.TDxCpl := nodeInfNfe_enderDest.ChildValues['xCpl'];
          self.edtDxCpl.Text := FENDERDEST_NFE_Doc.TDxCpl;
        end;

        if nodeInfNfe_enderDest.ChildValues['xBairro'] = null then
        begin
           self.edtDxBairro.Text := '';
        end else
        begin
           FENDERDEST_NFE_Doc.TDxBairro := nodeInfNfe_enderDest.ChildValues['xBairro'];
           self.edtDxBairro.Text := FENDERDEST_NFE_Doc.TDxBairro;
        end;

        if nodeInfNfe_enderDest.ChildValues['cMun'] = null then
        begin
           self.edtDcMun.Text := '';
        end else
        begin
           FENDERDEST_NFE_Doc.TDcMun := nodeInfNfe_enderDest.ChildValues['cMun'];
           self.edtDcMun.Text := FENDERDEST_NFE_Doc.TDcMun;
        end;

        if nodeInfNfe_enderDest.ChildValues['xMun'] = null then
        begin
           self.edtDxMun.Text := '';
        end else
        begin
           FENDERDEST_NFE_Doc.TDxMun := nodeInfNfe_enderDest.ChildValues['xMun'];
           self.edtDxMun.Text := FENDERDEST_NFE_Doc.TDxMun;
        end;

        if nodeInfNfe_enderDest.ChildValues['UF'] = null then
        begin
           self.edtDUF.Text := '';
        end else
        begin
           FENDERDEST_NFE_Doc.TDUF := nodeInfNfe_enderDest.ChildValues['UF'];
           self.edtDUF.Text := FENDERDEST_NFE_Doc.TDUF;
        end;

        if nodeInfNfe_enderDest.ChildValues['CEP'] = null then
        begin
           self.edtDCEP.Text := '';
        end else
        begin
           FENDERDEST_NFE_Doc.TDCEP := nodeInfNfe_enderDest.ChildValues['CEP'];
           self.edtDCEP.Text := FENDERDEST_NFE_Doc.TDCEP;
        end;

        if nodeInfNfe_enderDest.ChildValues['cPais'] = null then
        begin
           self.edtDcPais.Text := '';
        end else
        begin
           FENDERDEST_NFE_Doc.TDcPais := nodeInfNfe_enderDest.ChildValues['cPais'];
           self.edtDcPais.Text := FENDERDEST_NFE_Doc.TDcPais;
        end;

        if nodeInfNfe_enderDest.ChildValues['xPais'] = null then
        begin
           self.edtDxPais.Text := '';
        end else
        begin
           FENDERDEST_NFE_Doc.TDxPais := nodeInfNfe_enderDest.ChildValues['xPais'];
           self.edtDxPais.Text := FENDERDEST_NFE_Doc.TDxPais;
        end;

        if nodeInfNfe_enderDest.ChildValues['fone'] = null then
        begin
           self.edtDfone.Text := '';
        end else
        begin
           FENDERDEST_NFE_Doc.TDfone := nodeInfNfe_enderDest.ChildValues['fone'];
           self.edtDfone.Text := FENDERDEST_NFE_Doc.TDfone;
        end;

     except on E: Exception do

     end;
end;

procedure TfrmNFe_Documento.Button1Click(Sender: TObject);
begin
    umfrmProd_NFe_Documento := TfrmProd_NFe_Documento.Create(nil);
    try
      umfrmProd_NFe_Documento.ShowModal;
    finally
      FreeAndNil(umfrmProd_NFe_Documento);
    end;
end;

procedure TfrmNFe_Documento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FIDE_NFE_Doc.Destroy_TIDE_NFE_Doc;
    FEMIT_NFE_Doc.Destroy_TEMIT_NFE_Doc;
    FENDEREMIT_NFE_Doc.Destroy_TENDEREMIT_NFE_Doc;
    FDEST_NFE_Doc.Destroy_TDEST_NFE_Doc;
    FENDERDEST_NFE_Doc.Destroy_TENDERDEST_NFE_Doc;
end;

procedure TfrmNFe_Documento.FormCreate(Sender: TObject);
begin
   FIDE_NFE_Doc := TIDE_NFE_Doc.Create_TIDE_NFE_Doc;
   FEMIT_NFE_Doc := TEMIT_NFE_Doc.Create_TEMIT_NFE_Doc;
   FENDEREMIT_NFE_Doc := TENDEREMIT_NFE_Doc.Create_TENDEREMIT_NFE_Doc;
   FDEST_NFE_Doc := TDEST_NFE_Doc.Create_TDEST_NFE_Doc;
   FENDERDEST_NFE_Doc := TENDERDEST_NFE_Doc.Create_TENDERDEST_NFE_Doc;
end;

procedure TfrmNFe_Documento.Timer1Timer(Sender: TObject);
begin
   StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
