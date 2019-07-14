unit UnfceAutorizado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.ExtCtrls,
  Xml.XMLDoc, Vcl.ComCtrls, Vcl.StdCtrls, IDE_NFE_Doc, IDE_NFCE_Doc, EMIT_NFE_Doc, ENDEREMIT_NFE_Doc,
  DEST_NFE_Doc, ENDERDEST_NFE_Doc;

type
  TfrmNFCe_Autorizado = class(TForm)
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
    lbnEIEST: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    lbnExcpl: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    ed: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    lbnDcpl: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    lbnDFone: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label1: TLabel;
    Label58: TLabel;
    btnOk: TButton;
    edtUF: TEdit;
    edtCnfe: TEdit;
    edtNatOp: TEdit;
    edtMod: TEdit;
    edtSerie: TEdit;
    edtNNF: TEdit;
    edtDhEmi: TEdit;
    edtDhCont: TEdit;
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
    edtXCpl: TEdit;
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
    XMLDocument1: TXMLDocument;
    OpenDialog1: TOpenDialog;
    Timer1: TTimer;
    Label59: TLabel;
    edtxJust: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    nodeInfNfe_ide, nodeInfNfe_emit, nodeInfNfe_enderEmit, nodeInfNfe_dest, nodeInfNfe_enderDest: IXMLNode;

    FIDE_NFE_Doc : TIDE_NFE_Doc;
    FIDE_NFCE_Doc : TIDE_NFCE_Doc;
    FEMIT_NFE_Doc : TEMIT_NFE_Doc;
    FENDEREMIT_NFE_Doc : TENDEREMIT_NFE_Doc;
    FDEST_NFE_Doc : TDEST_NFE_Doc;
    FENDERDEST_NFE_Doc : TENDERDEST_NFE_Doc;

  public

  end;

var
  frmNFCe_Autorizado: TfrmNFCe_Autorizado;

implementation

{$R *.dfm}

procedure TfrmNFCe_Autorizado.btnOkClick(Sender: TObject);
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

       FIDE_NFCE_Doc.TcUf :=  nodeInfNfe_ide.ChildValues['cUF'];
       self.edtUF.Text := FIDE_NFCE_Doc.TcUf;

       FIDE_NFCE_Doc.TcNF :=  nodeInfNfe_ide.ChildValues['cNF'];
       self.edtCnfe.Text := FIDE_NFCE_Doc.TcNF;

       FIDE_NFCE_Doc.TNatOp := nodeInfNfe_ide.ChildValues['natOp'];
       self.edtNatOp.Text := FIDE_NFCE_Doc.TNatOp;

       FIDE_NFCE_Doc.TMood := nodeInfNfe_ide.ChildValues['mod'];
       self.edtMod.Text := FIDE_NFCE_Doc.TMood;

       FIDE_NFCE_Doc.TSerie := nodeInfNfe_ide.ChildValues['serie'];
       self.edtSerie.Text := FIDE_NFCE_Doc.TSerie;

       FIDE_NFCE_Doc.TNNF := nodeInfNfe_ide.ChildValues['nNF'];
       self.edtNNF.Text := FIDE_NFCE_Doc.TNNF;

       FIDE_NFCE_Doc.TDhEmi := nodeInfNfe_ide.ChildValues['dhEmi'];
       self.edtDhEmi.Text := FIDE_NFCE_Doc.TDhEmi;

       FIDE_NFCE_Doc.TDhCont := nodeInfNfe_ide.ChildValues['dhCont'];
       self.edtDhCont.Text := FIDE_NFCE_Doc.TDhCont;

       FIDE_NFCE_Doc.TTpNF := nodeInfNfe_ide.ChildValues['tpNF'];
       self.edtTpNF.Text := FIDE_NFCE_Doc.TTpNF;

       FIDE_NFCE_Doc.TIdDest := nodeInfNfe_ide.ChildValues['idDest'];
       self.edtIdDest.Text := FIDE_NFCE_Doc.TIdDest;

       FIDE_NFCE_Doc.TCMunFG := nodeInfNfe_ide.ChildValues['cMunFG'];
       self.edtCMunFG.Text := FIDE_NFCE_Doc.TCMunFG;

       FIDE_NFCE_Doc.TTpImp := nodeInfNfe_ide.ChildValues['tpImp'];
       self.edtTpImp.Text := FIDE_NFCE_Doc.TTpImp;

       FIDE_NFCE_Doc.TTpEmis := nodeInfNfe_ide.ChildValues['tpEmis'];
       self.edtTpEmis.Text := FIDE_NFCE_Doc.TTpEmis;

       FIDE_NFCE_Doc.TCDV := nodeInfNfe_ide.ChildValues['cDV'];
       self.edtCDV.Text := FIDE_NFCE_Doc.TCDV;

       FIDE_NFCE_Doc.TTpAmb := nodeInfNfe_ide.ChildValues['tpAmb'];
       self.edtTpAmb.Text := FIDE_NFCE_Doc.TTpAmb;

       FIDE_NFCE_Doc.TFinNFe := nodeInfNfe_ide.ChildValues['finNFe'];
       self.edtFinNFe.Text := FIDE_NFCE_Doc.TFinNFe;

       FIDE_NFCE_Doc.TIndFinal := nodeInfNfe_ide.ChildValues['indFinal'];
       self.edtIndFinal.Text := FIDE_NFCE_Doc.TIndFinal;

       FIDE_NFCE_Doc.TIndPres := nodeInfNfe_ide.ChildValues['indPres'];
       self.edtIndPres.Text := FIDE_NFCE_Doc.TIndPres;

       FIDE_NFCE_Doc.TProcEmi := nodeInfNfe_ide.ChildValues['procEmi'];
       self.edtProcEmi.Text := FIDE_NFCE_Doc.TProcEmi;

       FIDE_NFCE_Doc.TVerProc := nodeInfNfe_ide.ChildValues['verProc'];
       self.edtVerProc.Text := FIDE_NFCE_Doc.TVerProc;

       if nodeInfNfe_ide.ChildValues['xJust'] = null then
       begin
           self.edtxJust.Text := '';
       end else
       begin
          FIDE_NFCE_Doc.TXJust := nodeInfNfe_ide.ChildValues['xJust'];
          self.edtxJust.Text := FIDE_NFCE_Doc.TXJust;
       end;

       {emit}

       FEMIT_NFE_Doc.TCNPJ := nodeInfNfe_emit.ChildValues['CNPJ'];
       self.edtCnpj.Text := FEMIT_NFE_Doc.TCNPJ;

       FEMIT_NFE_Doc.TXNome := nodeInfNfe_emit.ChildValues['xNome'];
       self.edtXNome.Text := FEMIT_NFE_Doc.TXNome;

       FEMIT_NFE_Doc.TXFant := nodeInfNfe_emit.ChildValues['xFant'];
       self.edtXFant.Text := FEMIT_NFE_Doc.TXFant;

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
           self.edtIEST.Visible := false;
           self.lbnEIEST.Visible := false;
       end else
       begin
           FEMIT_NFE_Doc.TIEST := nodeInfNfe_emit.ChildValues['IEST'];
           self.edtIEST.Text := FEMIT_NFE_Doc.TIEST;
       end;

       FEMIT_NFE_Doc.TCRT := nodeInfNfe_emit.ChildValues['CRT'];
       self.edtCRT.Text := FEMIT_NFE_Doc.TCRT;

       {enderEmit}

        FENDEREMIT_NFE_Doc.TXLgr := nodeInfNfe_enderEmit.ChildValues['xLgr'];
        self.edtXLgr.Text := FENDEREMIT_NFE_Doc.TXLgr;

        FENDEREMIT_NFE_Doc.TNro := nodeInfNfe_enderEmit.ChildValues['nro'];
        self.edtNro.Text := FENDEREMIT_NFE_Doc.TNro;

        if nodeInfNfe_enderEmit.ChildValues['xCpl'] = null then
        begin
            self.edtXCpl.Text := '';
            self.edtXCpl.Visible := false;
            self.lbnExcpl.Visible := false;
        end else
        begin
            FENDEREMIT_NFE_Doc.TXCpl := nodeInfNfe_enderEmit.ChildValues['xCpl'];
            self.edtXCpl.Text := FENDEREMIT_NFE_Doc.TXCpl;
        end;

        FENDEREMIT_NFE_Doc.TXBairro := nodeInfNfe_enderEmit.ChildValues['xBairro'];
        self.edtXBairro.Text := FENDEREMIT_NFE_Doc.TXBairro;

        FENDEREMIT_NFE_Doc.TCMun := nodeInfNfe_enderEmit.ChildValues['cMun'];
        self.edtCMun.Text := FENDEREMIT_NFE_Doc.TCMun;

        FENDEREMIT_NFE_Doc.TXMun :=  nodeInfNfe_enderEmit.ChildValues['xMun'];
        self.edtXMun.Text := FENDEREMIT_NFE_Doc.TXMun;

        FENDEREMIT_NFE_Doc.TEUF := nodeInfNfe_enderEmit.ChildValues['UF'];
        self.edtEUF.Text := FENDEREMIT_NFE_Doc.TEUF;

        FENDEREMIT_NFE_Doc.TCEP := nodeInfNfe_enderEmit.ChildValues['CEP'];
        self.edtCEP.Text := FENDEREMIT_NFE_Doc.TCEP;

        FENDEREMIT_NFE_Doc.TCPais := nodeInfNfe_enderEmit.ChildValues['cPais'];
        self.edtCPais.Text := FENDEREMIT_NFE_Doc.TCPais;

        FENDEREMIT_NFE_Doc.TXPais := nodeInfNfe_enderEmit.ChildValues['xPais'];
        self.edtXPais.Text := FENDEREMIT_NFE_Doc.TXPais;

        FENDEREMIT_NFE_Doc.TFone := nodeInfNfe_enderEmit.ChildValues['fone'];
        self.edtFone.Text := FENDEREMIT_NFE_Doc.TFone;


        {dest}

        FDEST_NFE_Doc.TCPF := nodeInfNfe_dest.ChildValues['CPF'];
        self.edtCPF.Text := FDEST_NFE_Doc.TCPF;

        FDEST_NFE_Doc.TDxNome := nodeInfNfe_dest.ChildValues['xNome'];
        self.edtDXNome.Text := FDEST_NFE_Doc.TDxNome;

        FDEST_NFE_Doc.TIndIEDest := nodeInfNfe_dest.ChildValues['indIEDest'];
        self.edtIndIEDest.Text := FDEST_NFE_Doc.TIndIEDest;

        {enderDest}

        FENDERDEST_NFE_Doc.TDxLgr := nodeInfNfe_enderDest.ChildValues['xLgr'];
        self.edtDxLgr.Text := FENDERDEST_NFE_Doc.TDxLgr;

        FENDERDEST_NFE_Doc.TDnro := nodeInfNfe_enderDest.ChildValues['nro'];
        self.edtDnro.Text := FENDERDEST_NFE_Doc.TDnro;

        if nodeInfNfe_enderDest.ChildValues['xCpl'] = null then
        begin
            self.edtDxCpl.Text := '';
            self.edtDxCpl.Visible := false;
            self.lbnDcpl.Visible := false;
        end else
        begin
            FENDERDEST_NFE_Doc.TDxCpl := nodeInfNfe_enderDest.ChildValues['xCpl'];
            self.edtDxCpl.Text := FENDERDEST_NFE_Doc.TDxCpl;
        end;

        FENDERDEST_NFE_Doc.TDxBairro := nodeInfNfe_enderDest.ChildValues['xBairro'];
        self.edtDxBairro.Text := FENDERDEST_NFE_Doc.TDxBairro;

        FENDERDEST_NFE_Doc.TDcMun := nodeInfNfe_enderDest.ChildValues['cMun'];
        self.edtDcMun.Text := FENDERDEST_NFE_Doc.TDcMun;

        FENDERDEST_NFE_Doc.TDxMun := nodeInfNfe_enderDest.ChildValues['xMun'];
        self.edtDxMun.Text := FENDERDEST_NFE_Doc.TDxMun;

        FENDERDEST_NFE_Doc.TDUF := nodeInfNfe_enderDest.ChildValues['UF'];
        self.edtDUF.Text := FENDERDEST_NFE_Doc.TDUF;

        FENDERDEST_NFE_Doc.TDCEP := nodeInfNfe_enderDest.ChildValues['CEP'];
        self.edtDCEP.Text := FENDERDEST_NFE_Doc.TDCEP;

        FENDERDEST_NFE_Doc.TDcPais := nodeInfNfe_enderDest.ChildValues['cPais'];
        self.edtDcPais.Text := FENDERDEST_NFE_Doc.TDcPais;

        FENDERDEST_NFE_Doc.TDxPais := nodeInfNfe_enderDest.ChildValues['xPais'];
        self.edtDxPais.Text := FENDERDEST_NFE_Doc.TDxPais;

        if nodeInfNfe_enderDest.ChildValues['fone'] = null then
        begin
           self.edtDfone.Text := '';
           self.edtDfone.Visible := false;
           self.lbnDFone.Visible := false;
        end else
        begin
           FENDERDEST_NFE_Doc.TDfone := nodeInfNfe_enderDest.ChildValues['fone'];
           self.edtDfone.Text := FENDERDEST_NFE_Doc.TDfone;
        end;

     except on E: Exception do
     end;
end;

procedure TfrmNFCe_Autorizado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FIDE_NFE_Doc.Destroy_TIDE_NFE_Doc;
    FIDE_NFCE_Doc.Destroy_TIDE_NFCE_Doc;
    FEMIT_NFE_Doc.Destroy_TEMIT_NFE_Doc;
    FENDEREMIT_NFE_Doc.Destroy_TENDEREMIT_NFE_Doc;
    FDEST_NFE_Doc.Destroy_TDEST_NFE_Doc;
    FENDERDEST_NFE_Doc.Destroy_TENDERDEST_NFE_Doc;
end;

procedure TfrmNFCe_Autorizado.FormCreate(Sender: TObject);
begin
    FIDE_NFE_Doc := TIDE_NFE_Doc.Create_TIDE_NFE_Doc;
    FIDE_NFCE_Doc := TIDE_NFCE_Doc.Create_TIDE_NFCE_Doc;
    FEMIT_NFE_Doc := TEMIT_NFE_Doc.Create_TEMIT_NFE_Doc;
    FENDEREMIT_NFE_Doc := TENDEREMIT_NFE_Doc.Create_TENDEREMIT_NFE_Doc;
    FDEST_NFE_Doc := TDEST_NFE_Doc.Create_TDEST_NFE_Doc;
    FENDERDEST_NFE_Doc := TENDERDEST_NFE_Doc.Create_TENDERDEST_NFE_Doc;
end;

procedure TfrmNFCe_Autorizado.Timer1Timer(Sender: TObject);
begin
    StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
