--select sorgularý
select * from tkullanicilar
order by -- sýralama
order by asc -- A'dan Z'ye göre sýrala
order by Adi asc, Soyadi desc -- Ýsimleri A'dan Z'ye sýrala,isimleri ayný olanlarý tersten Z'den A'ya göre sýrala

order by len(Adi) desc --Adý sütununu karakter sayýsýna göre sýrala
                    --Adlarý ayný olanlarý gösterme, kaç farklý isim var?(tekrar eden sayýlarý silersem bulurum = distinct)
					
cast --bir deeðeri yeni veri türüne dönüþtürmek için
Select cast (TcKimlikNo as bigint) from tKullanicilar
select cast('1.5' as float) set dateformat dmy
select cast ('14.11.2022' as date)
select cast (15.2344 as varchar(10)) --tarihten metne çevir

selct dateformat dmy
select cast (IslemTarihi as varchar (10))
from tYazOkuluUcrertleri

--Tari formatlamak , format metodu içine istersek tür belirtebiliriz. Dönüþtürmüyor sadece istediðin þekilde sana gösteriyor.
select format(IslemTarihi, 'dd.MM.yyyy HH:mm')
from tYazOkuluUcrertleri


select format(IslemTarihi, 'dd dddd MMMM yyyy' , 'tr-Tr') --Türkçe tarihli yazmaak istersek)
from tYazOkuluUcrertleri




