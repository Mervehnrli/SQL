create table tEtTurleri
(
id tinyint identity(1,1) primary key,
Ad ivarchar(50) not null,
constraint tekillik_tEtTürleri uniqe (Adi)
)

create table tSatisTurleri
(
id tinyint identity(1,1) primary key,
Ad ivarchar(50) not null,
constraint tekillik_tDSatisTurleri uniqe (Adi)
)

create table tSatislar
(
id tinyint identity(1,1) primary key,
Zaman smalldatetime, default getdate(),
gram float not null,
fiyat float not null,
ETturu tinyint foreign key (EtTru) references tEtTurleri (id)
SatisTuru tinyint foreign key (SatisTuru) references tSatisTurleri (id)
)




