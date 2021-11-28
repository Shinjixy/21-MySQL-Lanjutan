-- Membuat Database
create database skilvulbookstore;

-- using database
use skilvulbookstore;

-- Membuat table penerbit
create table penerbit
(
    id int not null auto_increment primary key,
    nama varchar(50) null,
    kota varchar(50) null
);

-- Membuat table penulis
create table penulis
(
    id int(10) not null auto_increment primary key,
    nama varchar(50) null,
    kota varchar(50) null
);

-- Membuat table buku
create table buku
(
    id INT(10) not null auto_increment primary key,
    ISBN varchar(50) null,
    judul varchar(50) null,
    penulis varchar(50) null,
    penerbit varchar(50) null,
    harga int(10) null,
    stock int(10) null,
    CONSTRAINT fk_buku_penulis_id
    FOREIGN KEY(id)
    REFERENCES penulis(id),
    CONSTRAINT fk_buku_penerbit_penerbit
    FOREIGN KEY(penerbit)
    REFERENCES penerbit(id)
);

-- Select Inner Join
select * from buku inner join penerbit on buku.penerbit = penerbit.id;

-- Select Left Join
select * from buku left join penerbit on buku.penerbit = penerbit.id;

-- Select Right join
select * from buku right join penerbit on buku.penerbit = penerbit.id;

-- Select Max
select max(harga) from buku where stock < 10;

-- Select Min
select min(harga) from buku;

-- select Count
select count(id) from buku where harga < 100000;

