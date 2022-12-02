--hem ücretin hem dersin toplamý:
--Select Ders_tDerslerID, sum(Ucret) from tYazOkuluUcretleri
--group by Ders_tDerslerID
Select Cinsiyet,count(*) from  tKullanicilar
group by Cinsiyet

/*Select Cinsiyet,count(*) from  tKullanicilar
where KanFrubu_tKanGruplariID=1
group by Cinsiyet
*/

--ders bazlý ödemelerin ücreti 1000 tl nin üstünde olanlarý sýrala:
Select Ders_tDerslerID sum(Ucret) from tYazOkuluUcretleri
where Ucret>500
group by Ders_tDerslerID
having sum(Ucret)>1000

--groupu'tan sonra þart vermek istiyosan where deðil having vermek zorundasýn.
--her bir kalemde en az 500 tl ödeyip ders bazýnda top ödenen ücreti 1000 tl yi aþanlarý getir?


--20 yaþ üstünde olanlarý kan gruplarýna göre sýralayarak listeleyin.
Select KanGrubu_tKanGruplariID,count(*) from 
tKullanicilar
where year(getdate()) - year(dogumTarihi)>20
group by KanGrubu_tKanGruplariID

 --Kullanýcýlarý kayýtlarýna göre son 10 kiþiyi getir:
 Select top 10 * from tKullanicilar
 order by 10 desc


 --Derslere göre en yüksek ücret ödemesi olan dersin ID deðerinin gösteriniz:
 Select Ders_tDerslerID sum(Ucret)
 from tYazOkuluUcretleri
 group by Ders_tDerslerID
 order by sum(Ucret) desc


 select concat(Adi, ' ' ,Soyadi, ' ',DogumTarihi) from tKullanicilar                            -- concat parametre olarak verdiðiniz þeyleri birleþtiriyor.

 Select ltrim(' Sakarya ') rtrim ('Sakarya')  trim ('Sakarya') --rtrim saðý siliyor ltrim solu siliyor trim hepsini siliyor.
 Select upper(Adi), lower(soyadi) from t Kullanicilar  -- lower hepsini küçük yazýyor, upper hepsini büyük yazýyor.
 
 
 
 --en uzun e posta adresine sahip kiþiyi getir (sýnavda sorabilir)
 Select  eposta,charindex('gmail' , eposta) from tKullanicilar
 
 
 
Select eposta substring(eposta,2,3) from tKullanicilar

select eposta,left (eposta,3),right(eposta,5) from tKullanicilar  --soldan üç karakter al saðdan 5 karakter al
select eposta,left (eposta,3),right(eposta,5), len(eposta) from tKullanicilar  --len uzunluk
select eposta,left (eposta,3),right(eposta,5), reverse(eposta) from tKullanicilar --reverse tersten


select eposta,replace(eposta,'gmail', 'hotmail') from tKullanicilar

--Kiþilerin adlarýnýn ilk harfini büyük ve soyadlarýnýn tümü büyük olacak þekilde güncellenmesini saðlayýnýz.
update tKullanicilar set Adi=concat(left(upper(Adi),1),
substring(lower(Adi),2,len(Adi )))
upper(soyadi)
,soyadi=upper(soyadi)
select * from tKullanicilar


select abs(ucret),sqrt(ucret), power(ucret,5),
calling(ucret),
floor(ucret),
round(ucret,1), --1 basamak yuvarla
round(ucret,0) -- 0 basamak yuvarla
from tYazOkuluUcretleri  --abs muðlak deðer sqrt karekökünü gösterir power üstünü alýr. round yuvarla.
select round (sum(ucret)/count(*) from tYazOkuluUcretleri
select round (sum(ucret)/count(*),2) from tYazOkuluUcretleri

--veritabaný oluþturup prosedur trigger oluþturmamýzý ödev olarak isteyebilir hoca.










select top 1 ID from tYaz