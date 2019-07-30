object frmMdfeDocumento: TfrmMdfeDocumento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Leitor de XML P/V.: 3.00 | Documento MDF-e'
  ClientHeight = 739
  ClientWidth = 1040
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object frmMdfeDocumento: TPanel
    Left = -2
    Top = -5
    Width = 1043
    Height = 745
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 392
      Height = 15
      Caption = 
        'Leitor de Documento XML , com base na Vers'#227'o 3.00 | Data  :  01/' +
        '06/2019'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 52
      Width = 24
      Height = 21
      Caption = 'IDE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 41
      Top = 76
      Width = 36
      Height = 15
      Caption = '<cUF>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 41
      Top = 124
      Width = 49
      Height = 15
      Caption = '<nMDF>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 225
      Top = 76
      Width = 41
      Height = 15
      Caption = '<mod>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 283
      Top = 76
      Width = 40
      Height = 15
      Caption = '<serie>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 40
      Top = 172
      Width = 50
      Height = 15
      Caption = '<dhEmi>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 169
      Top = 220
      Width = 44
      Height = 15
      Caption = '<UFIni>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 225
      Top = 172
      Width = 52
      Height = 15
      Caption = '<tpEmis>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 225
      Top = 124
      Width = 39
      Height = 15
      Caption = '<cDV>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 100
      Top = 76
      Width = 53
      Height = 15
      Caption = '<tpAmb>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 282
      Top = 172
      Width = 60
      Height = 15
      Caption = '<procEmi>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 41
      Top = 220
      Width = 56
      Height = 15
      Caption = '<verProc>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 376
      Top = 52
      Width = 65
      Height = 21
      Caption = 'Emitente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 712
      Top = 79
      Width = 53
      Height = 15
      Caption = '<RNTRC>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 376
      Top = 124
      Width = 55
      Height = 15
      Caption = '<xNome>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 376
      Top = 172
      Width = 45
      Height = 15
      Caption = '<xFant>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 376
      Top = 220
      Width = 26
      Height = 15
      Caption = '<IE>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 503
      Top = 220
      Width = 40
      Height = 15
      Caption = '<IEST>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 376
      Top = 268
      Width = 65
      Height = 21
      Caption = 'Emitente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 376
      Top = 295
      Width = 39
      Height = 15
      Caption = '<xLgr>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 567
      Top = 291
      Width = 34
      Height = 15
      Caption = '<nro>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label35: TLabel
      Left = 376
      Top = 343
      Width = 53
      Height = 15
      Caption = '<xBairro>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label36: TLabel
      Left = 376
      Top = 391
      Width = 47
      Height = 15
      Caption = '<cMun>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label37: TLabel
      Left = 455
      Top = 391
      Width = 47
      Height = 15
      Caption = '<xMun>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ed: TLabel
      Left = 376
      Top = 439
      Width = 40
      Height = 15
      Caption = '<fone>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label40: TLabel
      Left = 472
      Top = 439
      Width = 36
      Height = 15
      Caption = '<CEP>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label41: TLabel
      Left = 624
      Top = 439
      Width = 30
      Height = 15
      Caption = '<UF>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 451
      Top = 271
      Width = 56
      Height = 17
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 166
      Top = 76
      Width = 51
      Height = 15
      Caption = '<tpEmit>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label43: TLabel
      Left = 96
      Top = 124
      Width = 48
      Height = 15
      Caption = '<cMDF>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label50: TLabel
      Left = 283
      Top = 123
      Width = 50
      Height = 15
      Caption = '<modal>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 225
      Top = 220
      Width = 50
      Height = 15
      Caption = '<UFFim>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 40
      Top = 271
      Width = 24
      Height = 21
      Caption = 'IDE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 70
      Top = 274
      Width = 171
      Height = 17
      Caption = 'Informa'#231#227'o Munic'#237'pio Carga'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 41
      Top = 298
      Width = 87
      Height = 15
      Caption = '<cMunCarrega>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 40
      Top = 346
      Width = 87
      Height = 15
      Caption = '<xMunCarrega>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 283
      Top = 220
      Width = 47
      Height = 15
      Caption = '<UFPer>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 712
      Top = 25
      Width = 71
      Height = 21
      Caption = 'InfModal '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 712
      Top = 52
      Width = 100
      Height = 21
      Caption = 'rodo infANTT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label30: TLabel
      Left = 376
      Top = 79
      Width = 43
      Height = 15
      Caption = '<CNPJ>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label34: TLabel
      Left = 712
      Top = 124
      Width = 94
      Height = 21
      Caption = 'rodo infCIOT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label38: TLabel
      Left = 712
      Top = 151
      Width = 42
      Height = 15
      Caption = '<CIOT>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label39: TLabel
      Left = 854
      Top = 151
      Width = 36
      Height = 15
      Caption = '<CPF>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label42: TLabel
      Left = 712
      Top = 199
      Width = 116
      Height = 21
      Caption = 'rodo veicTracao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label44: TLabel
      Left = 712
      Top = 226
      Width = 37
      Height = 15
      Caption = '<cInt>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label45: TLabel
      Left = 799
      Top = 226
      Width = 44
      Height = 15
      Caption = '<placa>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label46: TLabel
      Left = 896
      Top = 226
      Width = 71
      Height = 15
      Caption = '<RENAVAM>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnOk: TButton
      Left = 791
      Top = 657
      Width = 217
      Height = 33
      Cursor = crHandPoint
      Caption = 'Localizar Documento XML'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnOkClick
    end
    object edtcUF: TEdit
      Left = 41
      Top = 97
      Width = 49
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object edtNMDF: TEdit
      Left = 41
      Top = 145
      Width = 49
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object edtMod: TEdit
      Left = 225
      Top = 97
      Width = 50
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object edtSerie: TEdit
      Left = 283
      Top = 97
      Width = 54
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object edtDhEmi: TEdit
      Left = 41
      Top = 193
      Width = 178
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object edtTpEmis: TEdit
      Left = 225
      Top = 193
      Width = 50
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object edtCDV: TEdit
      Left = 225
      Top = 145
      Width = 49
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
    object edtTpAmb: TEdit
      Left = 100
      Top = 97
      Width = 53
      Height = 21
      ReadOnly = True
      TabOrder = 8
    end
    object edtProcEmi: TEdit
      Left = 283
      Top = 193
      Width = 54
      Height = 21
      ReadOnly = True
      TabOrder = 9
    end
    object edtVerProc: TEdit
      Left = 41
      Top = 241
      Width = 120
      Height = 21
      ReadOnly = True
      TabOrder = 10
    end
    object edtECnpj: TEdit
      Left = 376
      Top = 97
      Width = 296
      Height = 21
      ReadOnly = True
      TabOrder = 11
    end
    object edtEXNome: TEdit
      Left = 376
      Top = 145
      Width = 296
      Height = 21
      ReadOnly = True
      TabOrder = 12
    end
    object edtEXFant: TEdit
      Left = 376
      Top = 193
      Width = 296
      Height = 21
      ReadOnly = True
      TabOrder = 13
    end
    object edtEIE: TEdit
      Left = 376
      Top = 241
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 14
    end
    object edtEIEST: TEdit
      Left = 503
      Top = 241
      Width = 169
      Height = 21
      ReadOnly = True
      TabOrder = 15
    end
    object edtXLgr: TEdit
      Left = 376
      Top = 316
      Width = 296
      Height = 21
      ReadOnly = True
      TabOrder = 16
    end
    object edtXBairro: TEdit
      Left = 376
      Top = 364
      Width = 296
      Height = 21
      ReadOnly = True
      TabOrder = 17
    end
    object edtCMun: TEdit
      Left = 376
      Top = 412
      Width = 73
      Height = 21
      ReadOnly = True
      TabOrder = 18
    end
    object edtXMun: TEdit
      Left = 455
      Top = 412
      Width = 217
      Height = 21
      ReadOnly = True
      TabOrder = 19
    end
    object edtNro: TEdit
      Left = 607
      Top = 289
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 20
    end
    object edtFone: TEdit
      Left = 376
      Top = 460
      Width = 90
      Height = 21
      ReadOnly = True
      TabOrder = 21
    end
    object edtCEP: TEdit
      Left = 472
      Top = 460
      Width = 146
      Height = 21
      ReadOnly = True
      TabOrder = 22
    end
    object edtEUF: TEdit
      Left = 624
      Top = 460
      Width = 48
      Height = 21
      ReadOnly = True
      TabOrder = 23
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 712
      Width = 1041
      Height = 32
      Panels = <
        item
          Width = 50
        end>
    end
    object Button1: TButton
      Left = 548
      Top = 657
      Width = 217
      Height = 33
      Cursor = crHandPoint
      Caption = 'Produto | Tributa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
    end
    object edtTpEmit: TEdit
      Left = 166
      Top = 97
      Width = 53
      Height = 21
      ReadOnly = True
      TabOrder = 26
    end
    object edtCMDF: TEdit
      Left = 96
      Top = 145
      Width = 123
      Height = 21
      TabOrder = 27
    end
    object edtModal: TEdit
      Left = 283
      Top = 144
      Width = 54
      Height = 21
      ReadOnly = True
      TabOrder = 28
    end
    object edtUFIni: TEdit
      Left = 169
      Top = 241
      Width = 50
      Height = 21
      TabOrder = 29
    end
    object edtUFFim: TEdit
      Left = 225
      Top = 241
      Width = 50
      Height = 21
      TabOrder = 30
    end
    object edtCMunCarrega: TEdit
      Left = 41
      Top = 319
      Width = 178
      Height = 21
      TabOrder = 31
    end
    object edtXMunCarrega: TEdit
      Left = 41
      Top = 367
      Width = 178
      Height = 21
      TabOrder = 32
    end
    object edtUFPer: TEdit
      Left = 283
      Top = 241
      Width = 54
      Height = 21
      TabOrder = 33
    end
    object edtRNTRC: TEdit
      Left = 712
      Top = 97
      Width = 153
      Height = 21
      ReadOnly = True
      TabOrder = 34
    end
    object edtCIOT: TEdit
      Left = 712
      Top = 172
      Width = 136
      Height = 21
      ReadOnly = True
      TabOrder = 35
    end
    object edtCPF: TEdit
      Left = 854
      Top = 172
      Width = 154
      Height = 21
      ReadOnly = True
      TabOrder = 36
    end
    object edtCInt: TEdit
      Left = 712
      Top = 247
      Width = 81
      Height = 21
      ReadOnly = True
      TabOrder = 37
    end
    object edtPlaca: TEdit
      Left = 799
      Top = 247
      Width = 91
      Height = 21
      ReadOnly = True
      TabOrder = 38
    end
    object edtRENAVAM: TEdit
      Left = 896
      Top = 247
      Width = 112
      Height = 21
      ReadOnly = True
      TabOrder = 39
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 552
    Top = 8
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 494
    Top = 11
  end
  object OpenDialog1: TOpenDialog
    Left = 614
    Top = 11
  end
end
