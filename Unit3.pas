unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, ADODB, Menus;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit10: TEdit;
    Edit12: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Edit7: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    PopupMenu1: TPopupMenu;
    demeYap1: TMenuItem;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
        procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);


    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
aylik,total,combo,onay,anaonay:integer;   //gerekli olan integer ve strindleri yazýyoruz
 medeni:string;

implementation

{$R *.dfm}
uses unit1,unit2,unit4,unit5;   //kullanýlabilecek tüm formlarýmýzý ekliyoruz

procedure TForm3.CheckBox1Click(Sender: TObject); //checkbox1 a bastýðýmýzda medeni deðiþkenini evli yapýyoruz
begin
if (CheckBox1.Checked) then begin
medeni:='Evli';
CheckBox2.Checked:=false;
end;

  end;


procedure TForm3.CheckBox2Click(Sender: TObject);//checkbox2 a bastýðýmýzda medeni deðiþkenini bekar yapýyoruz
begin
if (CheckBox1.Checked) then begin
medeni:='Bekar';
CheckBox1.Checked:=false; //ikiside aktif olmamasý için öbür box u kapatýyoruz
end;
  end;

  procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then begin        //edit1 de enter e bastýðýmýzda edit2 ye gemek için
edit2.SetFocus;
end;
end;

procedure TForm3.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if (key=#13) then begin   //edit2 de enter e bastýðýmýzda edit3 ye gemek için
edit3.SetFocus;
end;
end;

procedure TForm3.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then begin
edit4.SetFocus;             //edit3 de enter e bastýðýmýzda edit4 ye gemek için
end;
end;

procedure TForm3.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13) then begin
edit5.SetFocus;               //edit4 de enter e bastýðýmýzda edit5 ye gemek için
end;
end;

procedure TForm3.BitBtn1Click(Sender: TObject); //kayýt butonu

begin

if length(edit1.text)<>11 then        //tc no 11 den küçük ya da büyükse uyarý verir
showmessage('TC yi kontrol ediniz')
 else

case MessageDlg(edit1.text+' nolu '+edit2.text+' '+edit3.text+
' isimli kiþi kaydedilsin mi?',mtConfirmation,[mbYes,mbNo],0) of   //isim soyisim yazarak kayýt onayý ister
mrYes: begin  //eðer onay verilirse yap
if length(edit1.text)=11 then begin //tc 11 haneliyse baþla
ADOQuery1.Close;
ADOQuery1.SQL.Clear;      //adoquery 1 den çektiðimiz bilgileri sql kodlarý ile kaydýný saðlýyoruz
ADOQuery1.SQL.Add('insert into tablo1(TCKN,Müþteri_Adý,Müþteri_Soyadý,Memleket,Satýlan_Ürün_Adý,Taksit_Sayýsý,Aylýk_Ödemeler,Borc,Ýlcesi,Ana_Adý,Baba_Adý,Medeni_Durum,Satýs_fiyatý) values');
ADOQuery1.SQL.Add('("'+trim(Edit1.text)+'","'+Trim(Edit2.text)+'","'+Trim(Edit3.text)+'","'+combobox1.text+'","'+combobox3.text+'","'+combobox4.text+'","'+Trim(Edit12.text)+'","'+Trim(Edit12.text)+'","'+(combobox2.text)+'","'+Trim(edit5.text)+'","'+Trim(Edit4.text)+'","'+medeni+'","'+Trim(Edit10.text)+'")');
ADOQuery1.ExecSQL;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from tablo1');
ADOQuery1.Open;
ShowMessage('BÝLGÝLER KAYIT EDÝLDÝ.'); //onay mesajý veriyor
edit1.Clear;
edit2.Clear;
edit3.Clear;           //kayýt yapýldýktan sonra edit ve boxlarý temizliyoruz
Edit4.clear;
Edit5.Clear;
Edit10.Clear;
Edit12.Clear;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
ComboBox1.ItemIndex:=-1;
ComboBox2.ItemIndex:=-1;
ComboBox3.ItemIndex:=-1;
ComboBox4.ItemIndex:=-1;
end;
  end;
 end;
end;

procedure TForm3.FormCreate(Sender: TObject);
var

taksit:integer;  //for ile combobox a taksit eklemek için integer tanýmlýyotuz

begin
Caption:= 'Müþteri Kayýt Paneli' +' ' + DateToStr(date)+ ' ' + TimeToStr(time);  //form caption i ve tarih saat ekliyoruz formun üstüne
combobox3.Items.LoadFromFile('.\proje\urun.txt'); //combobox3 e item çektiriyoruz urun.txt den
for taksit:=3 to 10 do begin //taksitler için for iþlemiyle combo ya ekletiyoruz
combobox4.Items.add(floattostr(taksit));
  if edit1.text='' then begin //baþlangýçta butonlarýn kapalý olmasý için kod
BitBtn1.enabled:=false;
BitBtn2.enabled:=false;
end;

while NOT ADOQuery2.Eof do begin    //adoquery2 den combobox1 e þehirleri çekiyoruz
   ComboBox1.Items.Add(ADOQuery2['iller']);
   ADOQuery2.Next;

   end;
end;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin

ADOQuery5.close;
ADOQuery5.SQL.Clear;            //tckn göre filtreleme yapmak için adoquery5 i kullanýyoruz
ADOQuery5.SQL.Add('select * from tablo1 where');   //sql tckn ile arama sorgusunu ekliyoruz
ADOQuery5.SQL.Add('TCKN="'+Trim(Edit7.text)+'"');
ADOQuery5.Open;

if (ADOQuery5.RecordCount <1) then ShowMessage('SÝSTEMDE BÖYLE BÝR KAYIT YOKTUR.') //query 5 te sorguyu bulamaz ise kayýt yoktur diyerek uyarýyor
else begin
ShowMessage('ARANAN KAYITLI BÝLGÝ LÝSTELENECEKTÝR.'+#13+'LÜTFEN TAMAM TUÞUNA BASINIZ.'); //bilgi mesajý

tform5.create(self) ; //form 5 te filtrenen kiþilerin bilgileri için form 5 i açtýrýyoruz

end;
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
   begin
if (edit8.text='') or (edit9.text='') then begin   //edit 8,9 boþ olursa uyarý ver
showmessage('Adý Ve Soyadý eksiksiz giriniz');
   end
   else begin //eðer doluysa
     ADOQuery4.close;
ADOQuery4.SQL.Clear;  //müþteri adý ve soyadý ile filtreleme için sql kodu yazýyorum
ADOQuery4.SQL.Add('select * from tablo1 where');
ADOQuery4.SQL.Add('Müþteri_Adý="'+Trim(Edit8.text)+'" and Müþteri_Soyadý="'+trim(edit9.text)+'"');
ADOQuery4.Open;

if (ADOQuery4.RecordCount <1) then ShowMessage('SÝSTEMDE BÖYLE BÝR KAYIT YOKTUR.')//eðer sorgu bulunamazsa uyarý ver
else begin
onay:=Application.MessageBox('kayýt silinsin mi?','silme',4+48); //eðer sql sorgusu bulunursa onaylý olarak silme iþlemi yapýlýyor

if(onay=6)  then begin
ADOQuery4.close;
ADOQuery4.SQL.Clear;               //onaydan sonra silmek için sql sorgu kodlarýmýz çalýþýyor
ADOQuery4.SQL.Add('delete from tablo1 where Müþteri_Adý="'+trim(edit8.Text)+'" and Müþteri_Soyadý="'+trim(edit9.text)+'"');
ADOQuery4.ExecSQL;
ShowMessage('ÝLGÝLÝ KAYIT BAÞARI ÝLE SÝLÝNMÝÞTÝR.');   //silinme onay mesajý


  end;
  end;
  end;
end;


procedure TForm3.Edit1Change(Sender: TObject);
begin
BitBtn1.Enabled:=true ;
if edit1.text='' then      //edit boþkan buton deaktif etme
BitBtn1.Enabled:=false
end;

procedure TForm3.Edit7Change(Sender: TObject);
begin
BitBtn2.Enabled:=true ;
if edit7.text='' then           //edit boþkan buton deaktif etme
BitBtn2.Enabled:=false ;

end;

procedure TForm3.ComboBox4Change(Sender: TObject);
begin
total:=strtoint(edit10.Text);
combo:=strtoint(combobox4.text);     //edit 10 daki texti combo daki text e bölerek aylýk ödemeyi buluyoruz
aylik:=total div combo;
edit12.Text:=inttostr(aylik);
end;

procedure TForm3.ComboBox1Click(Sender: TObject);
begin
ComboBox2.Clear;    //combo2 temizleme komutu
ADOQuery3.first;
   if combobox1.itemindex=0 then     //combo1 itemindex0 ise ilgili þehrin ileçeleri çekiliyor
while NOT ADOQuery3.Eof do begin
   ComboBox2.Items.Add(ADOQuery3['ankara']);
   ADOQuery3.Next;
end ;

if combobox1.itemindex=1 then
while NOT ADOQuery3.Eof do begin        //combo1 itemindex1 ise ilgili þehrin ileçeleri çekiliyor
   ComboBox2.Items.Add(ADOQuery3['istanbul']);
   ADOQuery3.Next;
end   ;

if combobox1.itemindex=2 then
while NOT ADOQuery3.Eof do begin   //combo1 itemindex2 ise ilgili þehrin ileçeleri çekiliyor
   ComboBox2.Items.Add(ADOQuery3['antalya']);
   ADOQuery3.Next;
end ;

if combobox1.itemindex=3 then
while NOT ADOQuery3.Eof do begin     //combo1 itemindex3 ise ilgili þehrin ileçeleri çekiliyor
   ComboBox2.Items.Add(ADOQuery3['izmir']);
   ADOQuery3.Next;
end    ;

if combobox1.itemindex=4 then
while NOT ADOQuery3.Eof do begin      //combo1 itemindex4 ise ilgili þehrin ileçeleri çekiliyor
   ComboBox2.Items.Add(ADOQuery3['konya']);
   ADOQuery3.Next;
end     ;

if combobox1.itemindex=5 then
while NOT ADOQuery3.Eof do begin    //combo1 itemindex5 ise ilgili þehrin ileçeleri çekiliyor
   ComboBox2.Items.Add(ADOQuery3['adana']);
   ADOQuery3.Next;
end    ;

if combobox1.itemindex=6 then
while NOT ADOQuery3.Eof do begin    //combo1 itemindex6 ise ilgili þehrin ileçeleri çekiliyor
   ComboBox2.Items.Add(ADOQuery3['sivas']);
   ADOQuery3.Next;
end    ;

if combobox1.itemindex=7 then
while NOT ADOQuery3.Eof do begin    //combo1 itemindex7 ise ilgili þehrin ileçeleri çekiliyor
   ComboBox2.Items.Add(ADOQuery3['mardin']);
   ADOQuery3.Next;
end   ;

if combobox1.itemindex=8 then
while NOT ADOQuery3.Eof do begin     //combo1 itemindex8 ise ilgili þehrin ileçeleri çekiliyor
   ComboBox2.Items.Add(ADOQuery3['yalova']);
   ADOQuery3.Next;
end  ;

if combobox1.itemindex=9 then
while NOT ADOQuery3.Eof do begin     //combo1 itemindex9 ise ilgili þehrin ileçeleri çekiliyor
   ComboBox2.Items.Add(ADOQuery3['mersin']);
   ADOQuery3.Next;
end ;
end;




procedure TForm3.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton; //grid de mouse týklamasý
  Shift: TShiftState; X, Y: Integer);
begin
     if Button=mbright then
     PopupMenu1.Popup(DBGrid1.ClientOrigin.X+x,DBGrid1.ClientOrigin.y+y); //grid de mouse sað týklanýrsa popup menu açýlýr
end;


procedure TForm3.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #8)then begin      //satýþ fiyatý silinince tasit ve aylýk ödeme silinir
ComboBox4.ItemIndex:=-1;
Edit12.Clear;
end;
end;




procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;   //formu tam kapatma komutu
end;



end.
