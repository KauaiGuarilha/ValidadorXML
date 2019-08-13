object frmProd_NFe_Documento: TfrmProd_NFe_Documento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Informa'#231#227'o Produto'
  ClientHeight = 604
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 609
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 10
      Width = 123
      Height = 17
      Caption = 'Informa'#231#227'o Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 327
      Width = 134
      Height = 17
      Caption = 'Informa'#231#227'o Detalhada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGProduto: TDBGrid
      Left = 6
      Top = 33
      Width = 827
      Height = 288
      DataSource = dsProduto
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGProdutoCellClick
    end
    object MemoXmlProd: TMemo
      Left = 0
      Top = 350
      Width = 827
      Height = 81
      ReadOnly = True
      TabOrder = 1
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 608
    Top = 264
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 260
    object cdsProdutocProd: TStringField
      FieldName = 'cProd'
      Size = 10
    end
    object cdsProdutoEAN: TStringField
      FieldName = 'EAN'
      Size = 13
    end
    object cdsProdutoxProd: TStringField
      FieldName = 'xProd'
      Size = 50
    end
    object cdsProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object cdsProdutoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsProdutoCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
    object cdsProdutoPIS_CST: TStringField
      FieldName = 'PIS_CST'
      Size = 2
    end
    object cdsProdutoCOFINS_CST: TStringField
      FieldName = 'COFINS_CST'
      Size = 2
    end
    object cdsProdutouCom: TStringField
      FieldName = 'uCom'
      Size = 2
    end
    object cdsProdutoqCom: TStringField
      FieldName = 'qCom'
      Size = 10
    end
    object cdsProdutoTagICMS: TMemoField
      FieldName = 'TagICMS'
      BlobType = ftMemo
    end
    object cdsProdutovUnCom: TStringField
      FieldName = 'vUnCom'
      Size = 7
    end
    object cdsProdutovProd: TStringField
      FieldName = 'vProd'
      Size = 7
    end
    object cdsProdutocEANTrib: TStringField
      FieldName = 'cEANTrib'
      Size = 13
    end
    object cdsProdutouTrib: TStringField
      FieldName = 'uTrib'
      Size = 2
    end
    object cdsProdutoqTrib: TStringField
      FieldName = 'qTrib'
      Size = 9
    end
    object cdsProdutovUnTrib: TStringField
      FieldName = 'vUnTrib'
      Size = 4
    end
    object cdsProdutoindTot: TStringField
      FieldName = 'indTot'
      Size = 2
    end
  end
end
