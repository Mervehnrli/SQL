select* from tDersiAlanOgrenciler
select vize* (40/100)+final*(60/100)

select vize,final
--vize*(40.0/100)+final*(60.0/100)
from tDersiAlanOgrenciler

update tDersiAlanOgrenciler vize=vize+5
select vize,final
--,vize*(40.0/100)+final*(60.0/100) -- virgülden sonraki basamaklar dikkate alýnsýn diye.
from tDersiAlanOgrenciler
where final*0.6>50 --her bir satýrý 0.6 ile çarparak 50 den büyükse göster.

--vizeye girenlerden finali 50'den büyük olanlarý göster
Select count(vize)
from tDersiAlanOgreniciler
where final>50

Select count(*)
from tDersiAlanOgrenciler
where final>50

Select sum(vize), --sum sayýsal deðerleri toplar. 
avg(vize),        -- avg ortalama alýr.
max(vize), min(vize)
from tDersiAlanOgrenciler
 
 --Sýnavda sorabileceði tarz bir soru: Öðrencilerin hem vizesi hem de finali 50'nin üstünde olanlarýn vize ile final ortalamalarý arasýndaki farký gösteriniz.

 select avg(vize)-avg(final)
 from tDersiAlanlOgrenciler
 where vize>50 and final>50

 --vizenin %40'ý ile finalin %60'ý alýnarak hesaplanan geçme notu 70'in üzerinde olan kiþi sayýsýný bulunuz?
 select count(*)
 from tDersiAlanOgrenciler
 where vize*0.4+final*0.6>70

 --Yaz okulunda 2001 ile 2008 arasýnda yatýrýlan paralarýn aritmetik ortalamasýný hesaplayýnýz.
 select avg(ucret) from tYazokuluucretleri
 where islemTarihi between '2001.01.01' and '2008.01.01'
 
 
