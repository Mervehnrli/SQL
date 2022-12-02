create table tMusteriler
(
id int identity(1,1) primary key,
Adi varchar(150),
Soyadi varchar(150) not null
)

create table tUrunler
(
id int identity(1,1) primary key,
Adi varchar(150),
Grup_tUrunGruplariID tinyint
    foreign key (Grup_tUrunGruplariID)
         references tUrunGruplari(id)
		 )


create table tUrunGruplari
(
id tinyint identity(1,1) primary key,
Adi varchar(150),
constraint tekillik_tUrunGruplari unique (Adi)
)

create table tCalisanlar
(
id int identity(1,1) primary key,
Adi varchar(150),
Soyadi varchar(150),
Departman_tDepartmanlarID tinyint
        foreign key(Departman_tDepartmanlarID)
             references tDepartmanlar(id)
			 )

create table tDepartmanlar
(
id tinyint identity(1,1) primary key,
Adi varchar(150)
)

create table tSatislar
(
id int identity(1,1) primary key,
Musteri_tMusterilerID int
      foreign key (Musteri_tMusterilerID)
	       references tMusteriler(id),
		  Urun_tUrunlerID int
    foreign key (Urun_tUrunlerID)
         references tUrunler(id),
Calisan_CalisanlarID int
       foreign key(Calisan_CalisanlarID) 
	         references tCalisanlar(id)
)

create table tTedarikciler
(
id tinyint identity(1,1) primary key,
Adi varchar(150),
)

create table tStoklar
(
id int identity(1,1) primary key,
Tedarikci_tTedarikcilerID tinyint
         foreign key (Tedarikci_tTedarikcilerID)
		      references tTedarikciler(id),
Urun_tUrunlerID int
      foreign key(Urun_tUrunlerID)
	       references tUrunler(id)
)

create table tKuryeler
(
id int identity(1,1) primary key,
Arac_tKuryeAraclariID int
   foreign key (Arac_tKuryeAraclariID) 
		 references tKuryeAraclari(id),
		 Calisan_tCalisanlarID int
      foreign key(Calisan_tCalisanlarID) 
	        references tCalisanlar(id)
)

create table tKuryeAraclari
(
id int identity(1,1) primary key,
Plaka varchar(150)
)
