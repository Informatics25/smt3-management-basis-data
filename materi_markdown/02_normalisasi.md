# Pertemuan 2: Normalisasi

## 1. Pengertian dan Tujuan
* **Normalisasi** adalah teknik analisis data yang mengorganisasikan atribut-atribut data dengan cara mengelompokkannya sehingga membentuk entitas yang *non-redundant*, stabil, dan fleksibel.
* **Tujuan:** Menghilangkan kerangkapan (reduplikasi) data, mengurangi kompleksitas, dan mempermudah pemodifikasian data.

## 2. Ketergantungan (Dependency)
* **Ketergantungan Fungsional:** Atribut Y bergantung pada X jika setiap nilai X memiliki tepat satu nilai Y.
* **Ketergantungan Fungsional Penuh:** Atribut Y bergantung penuh pada key gabungan X, dan tidak hanya pada sebagian subset dari X.
* **Ketergantungan Transitif:** Atribut Z bergantung pada X melalui atribut Y (X -> Y dan Y -> Z).

## 3. Tahapan Normalisasi
Data yang masih mentah (Unnormalized) dipecah melalui beberapa tingkat:
1. **Bentuk Normal Pertama (1NF):** 
   * Tidak ada set atribut yang berulang atau bernilai ganda (Multivalue).
   * Telah ditentukan primary key, dan tiap atribut hanya memiliki satu pengertian.
2. **Bentuk Normal Kedua (2NF):**
   * Memenuhi 1NF.
   * Atribut bukan kunci (*non-key*) harus memiliki ketergantungan fungsional sepenuhnya pada *primary key*.
3. **Bentuk Normal Ketiga (3NF):**
   * Memenuhi 2NF.
   * Atribut bukan kunci tidak boleh memiliki ketergantungan fungsional terhadap atribut bukan kunci lainnya (menghilangkan ketergantungan transitif).

## 4. Efek Normalisasi
* Munculnya duplikasi rinci data pada atribut kunci penghubung (*foreign key*).
* Membuka kemungkinan tidak terpenuhinya integritas referensial.
* Menghasilkan lebih banyak tabel (relasi baru), yang bisa mengakibatkan inefisiensi saat proses *join* untuk menampilkan data secara utuh.
