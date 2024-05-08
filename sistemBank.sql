show DATABASEs;
#database sistembank
CREATE DATABASE sistemBank;
use sistemBank;
CREATE table nasabah(
    num int,
    no_rek char(6) PRIMARY key,
    nama varchar(50),
    alamat text,
    saldo float(52),
    kontak_email_telp varchar(50)
);
#tabel nasabah
INSERT into nasabah value(
    1,
    "BN123",
    "Farrel",
    "Jakarta Barat",
    10000000,
    "hahaha@gmail.com"
);
INSERT into nasabah value(
    2,
    "TN354",
    "Iqbal",
    "Kota Bekasi",
    21311131234,
    "tuankubusai@gmail.com"
);
INSERT into nasabah value(
    3,
    "PN331",
    "Ocha",
    "Medan",
    31234123472,
    "imampok@gmail.com"
);
INSERT into nasabah value(
    4, 
    "JM313",
    "Adam",
    "Karawang",
    21351232135,
    "daerahkrwg@gmail.com"
);
#tabel rekBank
CREATE table rekBank(
    num int,
    no_rek char(6) PRIMARY key,
    nama_bank varchar(50),
    expired DATE,
    tunggakkan int(99),
    Foreign Key (no_rek) REFERENCES nasabah(no_rek)
);
INSERT into rekBank value(
    1,
    "BN123",
    "BNI",
    "2026-05-07",
    7000000
);
INSERT into rekBank value(
    2,
    "TN354",
    "BCA",
    "2025-06-01",
    300000
);
INSERT into rekBank value(
    3,
    "PN331",
    "BNI",
    "2026-08-12",
    120000
);
INSERT into rekBank value(
    4,
    "JM313",
    "BCA",
    "2024-02-09",
    420000
);
#tabel catatan
CREATE table catatan(
    num int PRIMARY key AUTO_INCREMENT,
    no_rek char(6),
    debet_keluar int (99),
    kredit_masuk int (99),
    tanggal date,
    lokasi_transaksi varchar(50),
    Foreign Key (no_rek) REFERENCES nasabah(no_rek)
);
INSERT into catatan value(
    "",
    "BN123",
    3000000,
    0,
    "2024-06-03",
    "magelang"
);
INSERT INTO catatan value(
    "",
    "TN354",
    0,
    45000000,
    "2024-06-04",
    "Kota Bekasi"
);
INSERT into catatan value(
    "",
    "PN331",
    250000,
    0,
    "2024-06-05",
    "medan"
);
insert into catatan value (
    "",
    "JM313",
    0,
    50000000,
    "2024-06-06",
    "karawang"
);
#tabel pinjaman_kredit
CREATE table pinjaman_kredit(
    num int PRIMARY key AUTO_INCREMENT,
    no_rek char(6),
    nama varchar(50),
    pinjaman_kredit int(99),
    nama_bank varchar(50),
    tanggal_pinjam date,
    tempo DATE,
    bunga_riba char(6),
    Foreign Key (no_rek) REFERENCES nasabah(no_rek)
);
inSERT into pinjaman_kredit value(
    "",
    "BN123",
    "Farrel",
    10000000,
    "BNI",
    CURRENT_TIMESTAMP,
    "2024-09-29",
    "5%"
);
INSERT into pinjaman_kredit value(
    "",
    "PN331",
    "Ocha",
    150000,
    "BNI",
    "2023-04-20",
    CURRENT_TIMESTAMP,
    "15%"
);
INSERT into pinjaman_kredit value(
    "",
    "JM313",
    "Ocha",
    500000,
    "BCA",
    "2024-02-15",
    "2030-03-20",
    "2%"
);
#query display output-control
show tables;
SELECT * from rekBank;
SELECT * from pinjaman_kredit;
SELECT * from nasabah;
SELECT * from catatan;
delete from pinjaman_kredit where num=1;
update pinjaman_kredit set num;
alter table pinjaman_kredit add COLUMN num int PRIMARY key AUTO_INCREMENT;
UPDATE pinjaman_kredit set num=3 where no_rek="JM313"; ;