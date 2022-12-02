select * from tkisiler
where Adi like 'a%'   -- a ile baþlasýn
and DogumYeri_tIllerID!=34    --34 olmasýn
order by Soyadi


select* from tkisiler
order by Adi, Soyadi   --sýralama order by


select * from tkisiler
where DogumYeri_tIllerID in (34,6)   --34 veya 6 doðumlulardan biri
order by Adi, Soyadi


select *  from tkisiler
where Cinsiyet_tCinsiyetlerID=0
order by Adi, Soyadi


select count (ID) ToplamSayi
from tkisiler
where DogumYeri_tIllerID!=34
group by DogumYeri_tIllerID
having count(ID)>15


select * from tkisiler
where (DogumYeri_tIllerID=34 or DogumYeri_tIllerID=6) and Adi='Berkay'


select top 10* from tkisiler


select top 1* from tkisiler
order by Adi desc  -- desc sondan 


select* from tkisiler
where DogumYeri_tIllerID between 34 and 40

select* from tkisiler
where DogumYeri_tIllerID not in (34,6)


select * from tkisiler
where Adi not like '%a%' -- adýnda a içermeyenler


where Soyadi is null
where Soyadi is  not null

insert into tkisiler (......) values (...) -- veri kaydetmek için

delete from tkisiler where Adi= '..' and Soyadi '..'  -- kaydý silmek için

update tkisiler set Adi= '..' where Adi='..' and Soyadi='..' -- kaydý deðiþtirmek için












