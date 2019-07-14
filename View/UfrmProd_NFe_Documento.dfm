object frmProd_NFe_Documento: TfrmProd_NFe_Documento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'frmProd_NFe_Documento'
  ClientHeight = 591
  ClientWidth = 1109
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 593
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 34
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
      Left = 328
      Top = 34
      Width = 136
      Height = 17
      Caption = 'Informa'#231#227'o Tributa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 919
      Top = 536
      Width = 162
      Height = 41
      Caption = 'Localizar XML'
      TabOrder = 0
      OnClick = Button1Click
    end
    object MemoProd: TMemo
      Left = 16
      Top = 57
      Width = 297
      Height = 520
      Color = clBtnFace
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object MemoTrib: TMemo
      Left = 328
      Top = 57
      Width = 289
      Height = 520
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object DBGrid1: TDBGrid
      Left = 623
      Top = 57
      Width = 458
      Height = 208
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end>
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 560
    Top = 8
  end
  object XMLDocument1: TXMLDocument
    Left = 632
    Top = 8
  end
end
