object frmProd_NFe_Autorizada: TfrmProd_NFe_Autorizada
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'frmProd_NFe_Autorizada'
  ClientHeight = 387
  ClientWidth = 759
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
    Top = -4
    Width = 761
    Height = 389
    TabOrder = 0
    object Memo1: TMemo
      Left = 16
      Top = 64
      Width = 521
      Height = 236
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
    object Button1: TButton
      Left = 559
      Top = 54
      Width = 154
      Height = 41
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 559
      Top = 119
      Width = 154
      Height = 37
      Caption = 'Button2'
      TabOrder = 2
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 400
    Top = 4
  end
  object XMLDocument1: TXMLDocument
    Left = 448
    Top = 4
  end
end
