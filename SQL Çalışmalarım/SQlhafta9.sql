--hem �cretin hem dersin toplam�:
--Select Ders_tDerslerID, sum(Ucret) from tYazOkuluUcretleri
--group by Ders_tDerslerID
Select Cinsiyet,count(*) from  tKullanicilar
group by Cinsiyet

/*Select Cinsiyet,count(*) from  tKullanicilar
where KanFrubu_tKanGruplariID=1
group by Cinsiyet
*/

--ders bazl� �demelerin �creti 1000 tl nin �st�nde olanlar� s�rala:
Select Ders_tDerslerID sum(Ucret) from tYazOkuluUcretleri
where Ucret>500
group by Ders_tDerslerID
having sum(Ucret)>1000

--groupu'tan sonra �art vermek istiyosan where de�il having vermek zorundas�n.
--her bir kalemde en az 500 tl �deyip ders baz�nda top �denen �creti 1000 tl yi a�anlar� getir?


--20 ya� �st�nde olanlar� kan gruplar�na g�re s�ralayarak listeleyin.
Select KanGrubu_tKanGruplariID,count(*) from 
tKullanicilar
where year(getdate()) - year(dogumTarihi)>20
group by KanGrubu_tKanGruplariID

 --Kullan�c�lar� kay�tlar�na g�re son 10 ki�iyi getir:
 Select top 10 * from tKullanicilar
 order by 10 desc


 --Derslere g�re en y�ksek �cret �demesi olan dersin ID de�erinin g�steriniz:
 Select Ders_tDerslerID sum(Ucret)
 from tYazOkuluUcretleri
 group by Ders_tDerslerID
 order by sum(Ucret) desc


 select concat(Adi, ' ' ,Soyadi, ' ',DogumTarihi) from tKullanicilar                            -- concat parametre olarak verdi�iniz �eyleri birle�tiriyor.

 Select ltrim(' Sakarya ') rtrim ('Sakarya')  trim ('Sakarya') --rtrim sa�� siliyor ltrim solu siliyor trim hepsini siliyor.
 Select upper(Adi), lower(soyadi) from t Kullanicilar  -- lower hepsini k���k yaz�yor, upper hepsini b�y�k yaz�yor.
 
 
 
 --en uzun e posta adresine sahip ki�iyi getir (s�navda sorabilir)
 Select  eposta,charindex('gmail' , eposta) from tKullanicilar
 
 
 
Select eposta substring(eposta,2,3) from tKullanicilar

select eposta,left (eposta,3),right(eposta,5) from tKullanicilar  --soldan �� karakter al sa�dan 5 karakter al
select eposta,left (eposta,3),right(eposta,5), len(eposta) from tKullanicilar  --len uzunluk
select eposta,left (eposta,3),right(eposta,5), reverse(eposta) from tKullanicilar --reverse tersten


select eposta,replace(eposta,'gmail', 'hotmail') from tKullanicilar

--Ki�ilerin adlar�n�n ilk harfini b�y�k ve soyadlar�n�n t�m� b�y�k olacak �ekilde g�ncellenmesini sa�lay�n�z.
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
from tYazOkuluUcretleri  --abs mu�lak de�er sqrt karek�k�n� g�sterir power �st�n� al�r. round yuvarla.
select round (sum(ucret)/count(*) from tYazOkuluUcretleri
select round (sum(ucret)/count(*),2) from tYazOkuluUcretleri

--veritaban� olu�turup prosedur trigger olu�turmam�z� �dev olarak isteyebilir hoca.










select top 1 ID from tYaz