<div align="center">
  <h1>🎨 Dummy-Contrib</h1>
  <p>
    <strong>Sebuah skrip sederhana untuk 'melukis' grafik kontribusi GitHub Anda.</strong>
  </p>
  <p>
    Buat pola, tulis nama, atau hidupkan kembali hari-hari yang kosong. Gunakan dengan bijak!
  </p>

  <p>
    <img src="https://img.shields.io/github/last-commit/Kyugito666/dummy-contrib?style=for-the-badge&logo=github&color=blueviolet" alt="Last Commit">
    <img src="https://img.shields.io/github/repo-size/Kyugito666/dummy-contrib?style=for-the-badge&logo=github&color=informational" alt="Repo Size">
    <img src="https://img.shields.io/github/license/Kyugito666/dummy-contrib?style=for-the-badge&color=success" alt="License">
  </p>
</div>

> **⚠️ Peringatan Penting**
> Alat ini ditujukan untuk **penggunaan pribadi, artistik, atau tujuan edukasi**. Menggunakannya untuk memalsukan aktivitas profesional atau mengelabui perekrut adalah tindakan yang **tidak etis dan tidak disarankan**. Gunakan dengan risiko Anda sendiri.

## ✨ Fitur Utama
- **Generator Commit**: Membuat commit secara otomatis pada tanggal-tanggal di masa lalu.
- **Kustomisasi Pola**: Mudah diubah untuk membuat pola atau tulisan di grafik kontribusi.
- **Skrip Otomatis**: Dilengkapi skrip `run.sh` untuk menjalankan proses secara berulang hingga kontribusi terdeteksi.
- **Repo Bersih**: Proses commit dilakukan pada file `dummy.txt`, menjaga `README.md` tetap bersih.

## 🚀 Panduan Cepat

Ikuti langkah-langkah berikut untuk memulai:

#### 1. Clone Repositori
```bash
git clone https://github.com/Kyugito666/dummy-contrib.git
cd dummy-contrib
```
#### 2. Konfigurasi Git
Pastikan email yang Anda gunakan sama persis dengan email utama di akun GitHub Anda agar kontribusi tercatat.
# Ganti dengan email GitHub Anda
```bash
git config user.email "youremail@example.com"
```

#### 3. Jalankan Skrip
Ubah skrip menjadi executable dan jalankan skrip utama.
```bash
chmod +x kyugito.sh
./kyugito.sh
```

#### 5. Push ke GitHub
Dorong semua commit yang telah dibuat ke repositori Anda.
```bash
git push origin main
```

Setelah push berhasil, tunggu beberapa menit hingga GitHub memproses dan menampilkan kontribusi Anda di grafik profil.
#### 6. (Opsional) Gunakan Auto-Loop
Jika kontribusi belum muncul, skrip ini akan otomatis melakukan commit & push kecil secara berkala hingga profil Anda ter-update.
```bash
chmod +x run.sh
./run.sh
```
```bash
📂 Struktur Repositori
dummy-contrib/
├── 📜 README.md      # Dokumentasi yang sedang Anda baca
├── ⚙️ kyugito.sh     # Skrip inti untuk menghasilkan commit
├── 🔄 run.sh         # Skrip wrapper untuk auto-loop
└── 📄 dummy.txt       # File target untuk dimodifikasi oleh commit
```
#### 🛠️ Penjelasan Skrip
| File | Fungsi Utama |
|---|---|
| kyugito.sh | Skrip inti yang mengeksekusi serangkaian git commit dengan tanggal spesifik yang di-set di masa lalu. |
| run.sh | Skrip pembungkus (wrapper) untuk menjalankan kyugito.sh, melakukan push, dan mengecek status profil. |
| dummy.txt | File kosong yang menjadi target modifikasi. Ini mencegah README.md atau file penting lainnya terisi spam. |
📜 Credits & Lisensi
 * Inspirasi grid tanggal untuk membentuk pola diambil dari githut.xyz.
 * Dirilis di bawah Lisensi MIT.
<p align="center">
Happy painting your contribution graph! 🎨
</p>

