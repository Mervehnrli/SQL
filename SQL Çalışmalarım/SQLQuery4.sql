Select k.Adi,k.Soyadi,i.adi IlAdi, ilc.Adi IlceAdÝ
from tKullanicilar k
left join tIlceler ilc on k.DogumYeri_tIlcelerID=ilc.ID
left join tIller i on ilc.Il_tIllerID=i.ID


Select k.Adi, k.Soyadi,y.IlAdi


select IlAdi,count(*)from vKullanicilar group by IlAdi


--select Adi from tKullanicilar 

create unique index Ind_KullanicilarAd2 on tKullanicilar(Adi.Soyadi, TcKimlikNo)

Select Adi,Soyadi from tKullanicilar where Adi='emrah'

execute kayitEkleIller 85, 'Adap'

CREATE PROCEDURE kayitEkleIller
@IlID int,@IlAdi varchar(255)
AS
BEGIN
insert into tIller (ID, Adi) values (@IlID,@IlAdi)
Declare @KayitSayisi int;
set @KayitSayisi=(Select count(*)from tIller)
Select 'Kayýt iþlemi baþarýyla gerçekleþti...
Toplam Kayýt Sayýsý' +convert(varchar(20),@KayitSayisi)+'oldu.'
END
GO

CREATE PROCEDURE kayitEkleIller
@IlID int,@IlAdi varchar(255)
AS
BEGIN
insert into tIller (ID, Adi) values (@IlID,@IlAdi)
Declare @KayitSayisi int;
set @KayitSayisi=(Select count(*)from tIller)
if (@KayitSayisi<80)
Begin
    Select'Toplam Kayýt Sayýsý: ' +convert(varchar(20),@KayitSayisi)
end
else 
Begin
    Select '80 ili geçtiniz'
END
GO


CREATE PROCEDURE kayitEkleIller
@IlID int,@IlAdi varchar(255)
AS
BEGIN
insert into tIller (ID, Adi) values (@IlID,@IlAdi)
Declare @KayitSayisi int;
set @KayitSayisi=(Select count(*) from tIller)
Declare @i int=0;
while (@i<=4)
Begin
    Select'Toplam Kayýt Sayýsý: '+convert(varchar(20),@KayitSayisi)
	set @i=@i+1
 end
END
GO

CREATE PROCEDURE kayitEkleIller
@IlID int,@IlAdi varchar(255), (@KayitSayisi int output
AS
BEGIN
insert into tIller (ID, Adi) values (@IlID,@IlAdi)
Declare @KayitSayisi int;
set @KayitSayisi=(Select count(*) from tIller)
    Select'Toplam Kayýt Sayýsý: '+convert(varchar(20),@KayitSayisi)
	
 end
END
GO



Declare @IlSayisi int;
execute kayitEkleIller 93, 'Adap3', @IlSayisi output
Select @IlSayisi



