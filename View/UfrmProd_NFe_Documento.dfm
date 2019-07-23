object frmProd_NFe_Documento: TfrmProd_NFe_Documento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'frmProd_NFe_Documento'
  ClientHeight = 463
  ClientWidth = 823
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
    Width = 825
    Height = 465
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 66
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
    object Button1: TButton
      Left = 647
      Top = 400
      Width = 162
      Height = 41
      Caption = 'Localizar XML'
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 97
      Width = 803
      Height = 288
      TabOrder = 1
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
    Left = 520
    Top = 24
  end
  object XMLDocument1: TXMLDocument
    Left = 576
    Top = 32
  end
end
