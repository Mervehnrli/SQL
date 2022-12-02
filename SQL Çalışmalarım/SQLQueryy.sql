create table tRenkler(id tinyint identity(1,1) primary key,Adi varchar(50))
create table tBoylar(id tinyint identity(1,1) primary key,Adi varchar(50))
create table tAracTurleri(id tinyint identity(1,1) primary key,Adi varchar(50))
create table tUrunler(id smallint identity(1,1) primary key,Adi varchar(50),
            renk_tRenklerID tinyint foreign key (renk_tRenklerID) references tRenkler(id),
			boy_tBoylarID tinyint foreign key (boy_tBoylarID) references tBoylar(id),
			Arac tinyint foreign key (Arac) references tAracTurleri(id),
			fiyat float
			 )
create table tMutsteriler(id int identity(1,1) primary key,Adi varchar(50))
create table tSatþlar(id int identity(1,1) primary key, 
       Urun smallint foreign key (Urun) references tUrunler(id),
	   Musteri int foreign key (Musteri) references tMusteriler(id),
	   zaman smalldatetime default getdate()  )

