unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpRave, RpDefine, RpCon, RpConDS, DB, ADODB, StdCtrls, Buttons;

type
  TForm4 = class(TForm)
    ADOQuery1: TADOQuery;
    RvDataSetConnection1: TRvDataSetConnection;
    RvProject1: TRvProject;
    BitBtn1: TBitBtn;
    RvProject2: TRvProject;
    RvProject3: TRvProject;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    RvDataSetConnection2: TRvDataSetConnection;
    ADOQuery2: TADOQuery;
    Edit2: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
uses unit1,unit3,unit2; //kullandýðýmýz formlarý ekliyoruz

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
RvProject1.Execute;       //bitbtn1 rvproje 1 ekledik
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
rvproject2.Execute;          //bitbtn1 rvproje 2 ekledik
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
rvproject3.Execute;              //bitbtn1 rvproje 3 ekledik
end;

procedure TForm4.Edit1Change(Sender: TObject); //filtre için tc no giriyoruz
begin

with ADOQuery2 do  //diðerlerinin filtreden etkilenmemesi için adoquery2 den çekiyoruz filtreli kayýtlarý
begin

close;
sql.Text:='select*from tablo1 where TCKN like'+QuotedStr(edit1.Text+'%');   //tc no ya göre kayýtlarý filtreliyoruz
open;
end;

end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;  //formu tam kapatma kodu
end;

end.
 