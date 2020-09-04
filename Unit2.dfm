object Form2: TForm2
  Left = 270
  Top = 176
  Width = 928
  Height = 480
  Caption = 'Se'#231'im Paneli'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    object m1: TMenuItem
      Caption = 'Dosya'
      object MsteriBilgisini1: TMenuItem
        Caption = 'M'#252'steri Bilgisini Sisteme Y'#252'kle'
        OnClick = MsteriBilgisini1Click
      end
      object Raporlamalemleri1: TMenuItem
        Caption = 'Raporlama '#304#351'lemleri'
        OnClick = Raporlamalemleri1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object k1: TMenuItem
        Caption = #199#305'k'#305#351
        OnClick = k1Click
      end
    end
  end
end
