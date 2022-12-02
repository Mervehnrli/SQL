create table tSatislar
(
id int identity(1,1) primary key,
Musteri_tMusterilerID int, 
Kiyafet_tKiyafetler int,
Zaman smalldatetime 
);

create table tKiyafetler
(id int identity(1,1) primary key,
Tur_tKiyafetTurleriID tinyint,
Beden_tBedenlerID tinyint,
Renk_tRenklerID tinyint
);

create table tKiyafetTurleri
(id tinyint idendity(1,1) primary key,
Adi varchar(150)
);

create table tBedenler 
(id tinyint identity(1,1) primary key,
Adi varchar(150)
);

create table tRenkler
(id tinyint identity(1,1) primary key,
Adi varchar(150)
);

create table tMusteriler
(id int identity(1,1) primary key,
Adi varchar(20) not null
Soyadi varchar(20)
);
