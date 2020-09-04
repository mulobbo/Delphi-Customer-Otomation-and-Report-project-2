{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus;

type
  TForm5 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    KaytDzenle1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Edit1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Edit1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure KaytDzenle1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  

     
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
uses unit1,unit2,unit3,unit4; //kullad��m�z formlar� ekliyoruz

procedure TForm5.FormCreate(Sender: TObject);
begin

edit1.Text:=form3.Adoquery5 ['TCKN'];           //form3 te tc ye filtreledi�imiz k�inin bilgilerini column g�re �ekiyoruz
edit2.Text:=form3.ADOQuery5['M��teri_Ad�'];//form3 te tc ye filtreledi�imiz k�inin bilgilerini column g�re �ekiyoruz
edit3.Text:=form3.ADOQuery5['M��teri_soyad�']; //form3 te tc ye filtreledi�imiz k�inin bilgilerini column g�re �ekiyoruz
edit4.Text:=form3.ADOQuery5['memleket']; //form3 te tc ye filtreledi�imiz k�inin bilgilerini column g�re �ekiyoruz
edit5.Text:=form3.ADOQuery5['Sat�lan_�r�n_Ad�'];//form3 te tc ye filtreledi�imiz k�inin bilgilerini column g�re �ekiyoruz
edit6.Text:=form3.ADOQuery5['Taksit_Say�s�'];//form3 te tc ye filtreledi�imiz k�inin bilgilerini column g�re �ekiyoruz
edit7.Text:=form3.ADOQuery5['Ayl�k_�demeler']; //form3 te tc ye filtreledi�imiz k�inin bilgilerini column g�re �ekiyoruz

end;



procedure TForm5.Edit1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

    Handled := True;    //Varsay�lan context popup kullan�lmaz duruma getir
end;

procedure TForm5.Edit1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbright then    //tckn editine sa� t�k yapt���m�zda popup1 a��lacak
     PopupMenu1.Popup(Edit1.ClientOrigin.X+x,Edit1.ClientOrigin.y+y);
end;

procedure TForm5.KaytDzenle1Click(Sender: TObject);
begin
form3.ADOQuery5.close;
form3.ADOQuery5.SQL.Clear;     //popup1 de kay�t duzenle dedi�imizde edit ve edit3 te bulunan bilgilerle ad soyad g�ncellenir
form3.ADOQuery5.SQL.Add('update tablo1 set M��teri_Ad�="'+edit2.text+'",M��teri_Soyad�="'+edit3.text+'"');
form3.ADOQuery5.SQL.Add('where TCKN="'+trim(edit1.Text)+'"');
form3.ADOQuery5.ExecSQL;
ShowMessage('B�LG�LER BA�ARI �LE G�NCELLEND�');
edit1.Clear;
edit2.Clear;
edit3.Clear; //editleri temizliyoruz
edit4.Clear;
edit5.Clear;
edit6.Clear;
edit7.Clear;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree; // formu tam kapatma kodu
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
Close;  //geri ye t�klad���m�zda form kapan�r
end;

end.
