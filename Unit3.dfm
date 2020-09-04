object Form3: TForm3
  Left = 149
  Top = 43
  Width = 1071
  Height = 596
  Caption = '2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  WindowMenu = demeYap1
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 16
    Width = 1025
    Height = 521
    Caption = 's'
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 32
      Width = 97
      Height = 20
      Caption = 'M'#252#351'teri T.C.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 110
      Top = 56
      Width = 91
      Height = 20
      Caption = 'M'#252#351'teri Ad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 82
      Top = 80
      Width = 119
      Height = 20
      Caption = 'M'#252#351'teri Soyad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 127
      Top = 104
      Width = 74
      Height = 20
      Caption = 'Baba Ad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 137
      Top = 128
      Width = 64
      Height = 20
      Caption = 'Ana Ad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 84
      Top = 152
      Width = 117
      Height = 20
      Caption = 'Medeni Durum'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 544
      Top = 32
      Width = 82
      Height = 20
      Caption = 'Memleketi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 583
      Top = 56
      Width = 43
      Height = 20
      Caption = #304'l'#231'esi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 555
      Top = 80
      Width = 71
      Height = 20
      Caption = #220'r'#252'n Ad'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 536
      Top = 104
      Width = 90
      Height = 20
      Caption = 'Sat'#305#351' Fiyat'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 525
      Top = 128
      Width = 101
      Height = 20
      Caption = 'Taksit Say'#305's'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 557
      Top = 152
      Width = 69
      Height = 20
      Caption = 'Taksitler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 216
      Top = 32
      Width = 169
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 216
      Top = 56
      Width = 169
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 216
      Top = 80
      Width = 169
      Height = 21
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 216
      Top = 104
      Width = 169
      Height = 21
      TabOrder = 3
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 216
      Top = 128
      Width = 169
      Height = 21
      TabOrder = 4
    end
    object Edit10: TEdit
      Left = 656
      Top = 104
      Width = 169
      Height = 21
      TabOrder = 5
      OnKeyPress = Edit10KeyPress
    end
    object Edit12: TEdit
      Left = 656
      Top = 152
      Width = 169
      Height = 21
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 848
      Top = 72
      Width = 161
      Height = 65
      Caption = 'S'#304'STEME KAYDET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object ComboBox1: TComboBox
      Left = 656
      Top = 32
      Width = 169
      Height = 21
      ItemHeight = 13
      TabOrder = 8
      OnClick = ComboBox1Click
    end
    object ComboBox2: TComboBox
      Left = 656
      Top = 56
      Width = 169
      Height = 21
      ItemHeight = 13
      TabOrder = 9
    end
    object ComboBox3: TComboBox
      Left = 656
      Top = 80
      Width = 169
      Height = 21
      ItemHeight = 13
      TabOrder = 10
    end
    object ComboBox4: TComboBox
      Left = 656
      Top = 128
      Width = 65
      Height = 21
      ItemHeight = 13
      TabOrder = 11
      OnChange = ComboBox4Change
    end
    object GroupBox1: TGroupBox
      Left = 632
      Top = 400
      Width = 385
      Height = 105
      Caption = 'AD ve SOYAD Bilgisine G'#246're M'#252#351'teri Sil'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      object Label14: TLabel
        Left = 16
        Top = 32
        Width = 68
        Height = 13
        Caption = 'M'#252#351'teri Ad'#305':'
      end
      object Label15: TLabel
        Left = 8
        Top = 64
        Width = 84
        Height = 13
        Caption = 'M'#252#351'teri Soyad'#305
      end
      object Edit8: TEdit
        Left = 104
        Top = 24
        Width = 185
        Height = 21
        TabOrder = 0
      end
      object Edit9: TEdit
        Left = 104
        Top = 56
        Width = 185
        Height = 21
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 296
        Top = 16
        Width = 81
        Height = 73
        Caption = 'KAYIT S'#304'L'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 408
      Width = 353
      Height = 97
      Caption = 'TCKN ya M'#252#351'teri Ara'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      object Label13: TLabel
        Left = 16
        Top = 40
        Width = 78
        Height = 13
        Caption = 'L'#252'tfen TCKN:'
      end
      object Edit7: TEdit
        Left = 104
        Top = 40
        Width = 153
        Height = 21
        TabOrder = 0
        OnChange = Edit7Change
      end
      object BitBtn2: TBitBtn
        Left = 264
        Top = 24
        Width = 73
        Height = 57
        Caption = 'ARA'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
    object CheckBox1: TCheckBox
      Left = 216
      Top = 152
      Width = 73
      Height = 17
      Caption = 'EVL'#304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 312
      Top = 152
      Width = 73
      Height = 17
      Caption = 'BEKAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = CheckBox2Click
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 176
      Width = 1009
      Height = 217
      DataSource = DataSource1
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnMouseUp = DBGrid1MouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'TCKN'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M'#252#351'teri_Ad'#305
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M'#252#351'teri_Soyad'#305
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Memleket'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sat'#305'lan_'#220'r'#252'n_Ad'#305
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Taksit_Say'#305's'#305
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ayl'#305'k_'#214'demeler'
          Width = 80
          Visible = True
        end>
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\kayit.mdb;Persist' +
      ' Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tablo1')
    Left = 992
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 992
    Top = 304
  end
  object ADOQuery2: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\kayit.mdb;Persist' +
      ' Security Info=False'
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'select*from tablo3')
    Left = 672
    Top = 40
  end
  object ADOQuery3: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\kayit.mdb;Persist' +
      ' Security Info=False'
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'select*from tablo4')
    Left = 672
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 992
    Top = 256
    object demeYap1: TMenuItem
      Caption = #214'deme Yap'
    end
  end
  object ADOQuery4: TADOQuery
    Active = True
    AutoCalcFields = False
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\kayit.mdb;Persist' +
      ' Security Info=False'
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'select*from tablo1')
    Left = 648
    Top = 416
  end
  object ADOQuery5: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\kayit.mdb;Persist' +
      ' Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from tablo1')
    Left = 24
    Top = 432
  end
end
