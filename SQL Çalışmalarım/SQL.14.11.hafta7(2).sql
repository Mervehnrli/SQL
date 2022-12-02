select* from tDersiAlanOgrenciler
select vize* (40/100)+final*(60/100)

select vize,final
--vize*(40.0/100)+final*(60.0/100)
from tDersiAlanOgrenciler

update tDersiAlanOgrenciler vize=vize+5
select vize,final
--,vize*(40.0/100)+final*(60.0/100) -- virg�lden sonraki basamaklar dikkate al�ns�n diye.
from tDersiAlanOgrenciler
where final*0.6>50 --her bir sat�r� 0.6 ile �arparak 50 den b�y�kse g�ster.

--vizeye girenlerden finali 50'den b�y�k olanlar� g�ster
Select count(vize)
from tDersiAlanOgreniciler
where final>50

Select count(*)
from tDersiAlanOgrenciler
where final>50

Select sum(vize), --sum say�sal de�erleri toplar. 
avg(vize),        -- avg ortalama al�r.
max(vize), min(vize)
from tDersiAlanOgrenciler
 
 --S�navda sorabilece�i tarz bir soru: ��rencilerin hem vizesi hem de finali 50'nin �st�nde olanlar�n vize ile final ortalamalar� aras�ndaki fark� g�steriniz.

 select avg(vize)-avg(final)
 from tDersiAlanlOgrenciler
 where vize>50 and final>50

 --vizenin %40'� ile finalin %60'� al�narak hesaplanan ge�me notu 70'in �zerinde olan ki�i say�s�n� bulunuz?
 select count(*)
 from tDersiAlanOgrenciler
 where vize*0.4+final*0.6>70

 --Yaz okulunda 2001 ile 2008 aras�nda yat�r�lan paralar�n aritmetik ortalamas�n� hesaplay�n�z.
 select avg(ucret) from tYazokuluucretleri
 where islemTarihi between '2001.01.01' and '2008.01.01'
 
 
