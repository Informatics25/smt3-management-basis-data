# Pertemuan 1: Review Basis Data

## 1. DDL (Data Definition Language) & DML (Data Manipulation Language)
Materi ini mereview kembali penggunaan perintah dasar SQL:
* **DDL:** `CREATE`, `USE`, `ALTER`, `DROP` (Membuat, mengubah, dan menghapus database atau tabel).
* **Constraint:** `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`.
* **DML Dasar:** `INSERT`, `UPDATE`, `DELETE`, `SELECT` (beserta `DISTINCT`, `WHERE`, `LIKE`).
* **DML Lanjutan:** `ORDER BY`, `GROUP BY`, `HAVING`, Fungsi Agregat (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`), serta penggunaan Alias, `IN`, dan `BETWEEN ... AND`.

## 2. Penggabungan Tabel (JOIN)
Operasi untuk menggabungkan dua tabel atau lebih guna menghindari pengulangan data dengan menghubungkan kunci (Primary/Foreign Key).
* **INNER JOIN:** Menampilkan irisan data yang memiliki pasangan di kedua tabel.
* **LEFT JOIN:** Menampilkan semua data dari tabel kiri beserta pasangannya di tabel kanan (jika tidak ada pasangan, bernilai `NULL`).
* **RIGHT JOIN:** Kebalikan dari Left Join (menampilkan semua data dari tabel kanan).
* **NATURAL JOIN:** Sama dengan outer join namun otomatis menghilangkan redudansi kolom yang sama.
* **CROSS JOIN:** Penggabungan paling sederhana (kartesian) tanpa kondisi.
* **STRAIGHT JOIN:** Identik dengan inner join tetapi diikuti dengan kondisi tertentu.

## 3. Subquery & Set Operator
* **ANY:** Digunakan dalam subquery, bernilai TRUE jika minimal salah satu perbandingan dengan hasil subquery bernilai TRUE.
* **ALL:** Bernilai TRUE jika perbandingan bernilai TRUE untuk *setiap* nilai hasil subquery.
* **UNION:** Menggabungkan hasil dua query (jumlah, nama, dan tipe kolom harus sama).
* **INTERSECT / IN:** Memperoleh irisan data yang memenuhi kedua query. (Di MySQL umumnya menggunakan klausa `IN`).
* **EXCEPT / NOT IN:** Memperoleh data yang ada di query pertama tetapi tidak ada di query kedua. (Di MySQL menggunakan klausa `NOT IN`).
