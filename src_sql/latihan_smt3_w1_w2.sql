-- KUMPULAN SKEMA LATIHAN BASIS DATA SMT 3 (MINGGU 1 & 2)

CREATE DATABASE IF NOT EXISTS basis_data_smt3;
USE basis_data_smt3;

-- 1. PRAKTIKUM W1: JOIN, UNION, SUBQUERY (BUKU, PENERBIT, TOKO)

-- Tabel Penerbit
CREATE TABLE penerbit (
    kodePenerbit VARCHAR(10) PRIMARY KEY,
    nama VARCHAR(30),
    lokasi VARCHAR(30)
);

INSERT INTO penerbit VALUES 
('PEN01', 'Abadi', 'Surabaya'),
('PEN02', 'Jaya', 'Malang'),
('PEN03', 'Bintang', 'Kediri'),
('PEN04', 'Puspa', 'Surabaya'),
('PEN05', 'Sinar', 'Kediri');

-- Tabel Buku
CREATE TABLE buku (
    nisdn VARCHAR(5) PRIMARY KEY,
    judul VARCHAR(50),
    harga INT,
    tglCetak DATE,
    kodePenerbit VARCHAR(10),
    pengarang VARCHAR(30),
    email VARCHAR(30),
    halaman INT
);

INSERT INTO buku VALUES 
('01', 'Bintang', 50000, '2015-01-01', 'PEN01', 'didi', 'didi@gmail.com', 100),
('02', 'Matahari', 100000, '2015-03-01', 'PEN02', 'dona', 'dona@yahoo.com', 200),
('03', 'Bintang', 50000, '2011-01-01', 'PEN03', 'doni', 'doni@yahoo.com', 250);

-- Tabel Toko
CREATE TABLE toko (
    idtoko VARCHAR(5) PRIMARY KEY,
    nama VARCHAR(30),
    pemilik VARCHAR(30),
    lokasi VARCHAR(30),
    jumlcabang INT,
    nisdn VARCHAR(5),
    jumlAset INT
);

INSERT INTO toko VALUES 
('tk01', 'toko abadi', 'Anton', 'Malang', 3, '01', 30000000),
('tk02', 'toko barok', 'Ani', 'Jember', 4, '02', 50000000),
('tk03', 'toko Remaj', 'Doni', 'Malang', 6, '03', 70000000),
('tk04', 'toko abadi', 'Anton', 'Malang', 10, '01', 80000000),
('tk05', 'toko aman', 'Dodi', 'Jember', 5, '02', 20000000);


-- 2. PRAKTIKUM W2: LATIHAN NORMALISASI (PEMINJAMAN BUKU)

CREATE TABLE peminjam (
    id_peminjam VARCHAR(10) PRIMARY KEY,
    nama_peminjam VARCHAR(50),
    alamat_peminjam VARCHAR(50)
);

CREATE TABLE kategori_buku (
    kategori VARCHAR(30) PRIMARY KEY,
    tarif INT
);

CREATE TABLE buku_perpus (
    kode_buku VARCHAR(10) PRIMARY KEY,
    judul_buku VARCHAR(50),
    kategori VARCHAR(30),
    FOREIGN KEY (kategori) REFERENCES kategori_buku(kategori)
);

CREATE TABLE transaksi_pinjam (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    id_peminjam VARCHAR(10),
    kode_buku VARCHAR(10),
    tgl_pinjam DATE,
    tgl_kembali DATE,
    FOREIGN KEY (id_peminjam) REFERENCES peminjam(id_peminjam),
    FOREIGN KEY (kode_buku) REFERENCES buku_perpus(kode_buku)
);

INSERT INTO peminjam VALUES 
('PJ 001', 'Dora', 'Nongsa'),
('PJ 002', 'Nana', 'Nongsa'),
('PJ 003', 'Nana', 'Batu Aji');

INSERT INTO kategori_buku VALUES 
('Accounting', 1000),
('Novel', 2000),
('Kewarganegaraan', 1000);

INSERT INTO buku_perpus VALUES 
('PJK01', 'Belajar Pajak', 'Accounting'),
('NV01', 'Merah Putih', 'Novel'),
('NV02', 'Bendera', 'Novel'),
('KW01', 'Merah Putih', 'Kewarganegaraan');

INSERT INTO transaksi_pinjam (id_peminjam, kode_buku, tgl_pinjam, tgl_kembali) VALUES 
('PJ 001', 'PJK01', '2026-07-01', '2026-07-03'),
('PJ 001', 'NV01', '2026-07-12', '2026-07-13'),
('PJ 002', 'PJK01', '2026-07-04', '2026-07-05'),
('PJ 003', 'NV01', '2026-07-01', '2026-07-02'),
('PJ 003', 'NV02', '2026-07-01', '2026-07-05'),
('PJ 003', 'KW01', '2026-07-02', '2026-07-04');

-- END OF SCRIPT
