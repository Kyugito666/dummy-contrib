# Dummy-Contrib

Repo ini adalah **alat otomatis untuk membuat fake contribution di GitHub**.  
Cocok buat testing, iseng, dan ngisi kontribusi biar profile lebih rame.

## Fitur

- Membuat commit dengan tanggal custom untuk membentuk pola/huruf di contribution graph GitHub.
- Script utama: `kyugito.sh`
- Bisa auto-loop sampai kontribusi muncul: `run.sh`
- Mudah di-custom sesuai kebutuhan.

## Cara Pakai

### 1. Clone repo
```bash
git clone https://github.com/Kyugito666/dummy-contrib.git
cd dummy-contrib
```

### 2. Setting email Git yang sama dengan akun GitHub
```bash
git config user.email "EMAIL_GITHUB_KAMU"
```

### 3. Jalankan script utama
```bash
chmod +x kyugito.sh
./kyugito.sh
```

### 4. Push ke GitHub
```bash
git push origin main
```

### 5. (Opsional) Jalanin auto-loop sampai kontribusi muncul
```bash
chmod +x run.sh
./run.sh
```

## Struktur Repo

```
dummy-contrib/
├── kyugito.sh    # Script generator commit fake kontribusi
├── run.sh        # Script auto-loop cek kontribusi
├── README.md     # Dokumentasi repo
```

## Penjelasan Script

- **kyugito.sh**  
  Membuat banyak commit dengan tanggal custom dan pesan "Fake contribution {tanggal}".  
  Tanggal-tanggal diatur untuk membentuk huruf KYUGITO di contribution graph.

- **run.sh**  
  Jalanin kyugito.sh, push, dan cek kontribusi di profil GitHub.  
  Loop otomatis sampai kontribusi bertambah.

## Contoh Output di README.md

Setiap baris:
```
2025-01-07 - KYUGITO
2025-01-14 - KYUGITO
...
```
Setiap commit akan muncul di contribution graph sesuai tanggalnya.

## Credits

Terinspirasi dari [githut.xyz](https://githut.xyz/) untuk grid tanggal dan visualisasi.

---

**Enjoy your fake contributions! 🎉**
