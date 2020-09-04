unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    m1: TMenuItem;
    MsteriBilgisini1: TMenuItem;
    Raporlamalemleri1: TMenuItem;
    N1: TMenuItem;
    k1: TMenuItem;
    procedure MsteriBilgisini1Click(Sender: TObject);
    procedure Raporlamalemleri1Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses unit1,unit3,unit4,unit5;  //kullan�lacak formlar� ekliyoruz

procedure TForm2.MsteriBilgisini1Click(Sender: TObject);
begin
  tform3.create(self) ; //m��teri bilgisi y�kleye bast���m�zda form3 te y�kleme ekran� a��l�yor
end;

procedure TForm2.Raporlamalemleri1Click(Sender: TObject);
begin
tform4.create(self) ;  //raporlamaya bas�ld���nda form4 te raporlama a��l�yor
end;

procedure TForm2.k1Click(Sender: TObject);   //��k�� butonu
begin
 if MessageDlg(' Sistemden ��k�� yap�ls�n m�? ',
mtConfirmation, [mbYes, mbNo], 0) = mrYes then    //sorgulu olarak program� kapatmak i�in onay istiyor
begin
close;  //kapatma komutu
end;
  end;
procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree; //pencereyi tam kapatma kodu
end;



end.
