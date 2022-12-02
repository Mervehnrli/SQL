create table tMusteriler
(
id int identity(1,1) primary key,
Adi varchar(150), 
KayitZamani smalldatetime,
Eposta varchar(150),
Ceptel varchar(10)not null,
constraint tekillikEposta_tMusteriler unique (Eposta),
consttraint tekillikCeptel_tMusterþler unique (Ceptel)
)


--kodlarla iliþkiyi nasýl kuruyoruz:
create table tKiyafetlr
(
id int identity(1,1) primary key,
KiyafetTuru_tKiyafetTurleriID tinyint
          foreign key (KiyafetTuru_tKiyafetTurleriID)
		       references tKiyafetTurleri(id)


create table tKiyafetler 
(
id int identity (1,1) primary key,
Beden_tBedenlerID tinyint
    foreign key (Beden_tBedenlerID), 
Renk_tRenklerID tinyint
   Foreign key (Renk_tRenklerID)
       references tRenkler(ýd)


