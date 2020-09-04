object Form4: TForm4
  Left = 297
  Top = 181
  BorderStyle = bsToolWindow
  Caption = 'RAPOR PANEL'#304
  ClientHeight = 227
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 0
    Top = 120
    Width = 321
    Height = 105
    Caption = 'T'#220'M M'#220#350'TER'#304'LER'#304'N '#220'R'#220'N AYLIK '#214'DEME RAPORU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 320
    Top = 120
    Width = 337
    Height = 105
    Caption = 'T'#220'M BOR'#199'LU M'#220#350'TER'#304'LER'#304'N RAPORU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 0
    Top = 48
    Width = 657
    Height = 73
    Caption = 'TC K'#304'ML'#304#286#304' G'#304'R'#304'LEN K'#304#350#304'N'#304'N T'#220'M B'#304'LG'#304'LER'#304'N'#304' RAPORLA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object Edit1: TEdit
    Left = 0
    Top = 24
    Width = 657
    Height = 21
    TabOrder = 3
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 0
    Top = 0
    Width = 657
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = 
      '                                     TCKN G'#214'RE SOGULAMA YAPMAK '#304 +
      #199#304'N A'#350'A'#286'IYA G'#304'R'#304'N'#304'Z'
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\kayit.mdb;Persist' +
      ' Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select* from tablo1')
    Left = 248
    Top = 120
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery1
    Left = 272
    Top = 120
  end
  object RvProject1: TRvProject
    ProjectFile = '.\raporlama\Project1.rav'
    Left = 8
    Top = 192
  end
  object RvProject2: TRvProject
    ProjectFile = '.\raporlama\borc.rav'
    Left = 624
    Top = 192
  end
  object RvProject3: TRvProject
    ProjectFile = '.\raporlama\detay.rav'
    Left = 576
    Top = 48
  end
  object RvDataSetConnection2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery2
    Left = 624
    Top = 48
  end
  object ADOQuery2: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\kayit.mdb;Persist' +
      ' Security Info=False'
    Parameters = <>
    SQL.Strings = (
      'select*from tablo1')
    Left = 600
    Top = 48
  end
end
