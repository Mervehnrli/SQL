--select sorgular�
select * from tkullanicilar
order by -- s�ralama
order by asc -- A'dan Z'ye g�re s�rala
order by Adi asc, Soyadi desc -- �simleri A'dan Z'ye s�rala,isimleri ayn� olanlar� tersten Z'den A'ya g�re s�rala

order by len(Adi) desc --Ad� s�tununu karakter say�s�na g�re s�rala
                    --Adlar� ayn� olanlar� g�sterme, ka� farkl� isim var?(tekrar eden say�lar� silersem bulurum = distinct)
					
cast --bir dee�eri yeni veri t�r�ne d�n��t�rmek i�in
Select cast (TcKimlikNo as bigint) from tKullanicilar
select cast('1.5' as float) set dateformat dmy
select cast ('14.11.2022' as date)
select cast (15.2344 as varchar(10)) --tarihten metne �evir

selct dateformat dmy
select cast (IslemTarihi as varchar (10))
from tYazOkuluUcrertleri

--Tari formatlamak , format metodu i�ine istersek t�r belirtebiliriz. D�n��t�rm�yor sadece istedi�in �ekilde sana g�steriyor.
select format(IslemTarihi, 'dd.MM.yyyy HH:mm')
from tYazOkuluUcrertleri


select format(IslemTarihi, 'dd dddd MMMM yyyy' , 'tr-Tr') --T�rk�e tarihli yazmaak istersek)
from tYazOkuluUcrertleri




