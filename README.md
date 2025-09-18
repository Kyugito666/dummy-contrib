# Dummy-Contrib

Repo ini digunakan untuk membuat kontribusi palsu (fake contribution) di GitHub.

## Fitur
- Membuat commit otomatis dengan tanggal khusus untuk membentuk pola/huruf di graph kontribusi GitHub.
- Script utama: `kyugito.sh`
- Script auto-loop hingga kontribusi terdeteksi: `run.sh`
- File dummy (`dummy.txt`) digunakan buat commit, supaya README.md tetap bersih.

## Struktur Folder

```
dummy-contrib/
├── README.md           # Dokumentasi repo
├── kyugito.sh          # Script generator kontribusi palsu
├── run.sh              # Script auto-loop cek kontribusi
├── dummy.txt           # File dummy (tempat commit, agar README.md tetap bersih)
```

## Cara Pakai

### 1. Clone repo
```bash
git clone https://github.com/Kyugito666/dummy-contrib.git
cd dummy-contrib
```

### 2. Setting email git agar sama dengan akun GitHub kamu
```bash
git config user.email "EMAIL_GITHUB_KAMU"
```

### 3. Jalankan script utama kontribusi
```bash
chmod +x kyugito.sh
./kyugito.sh
```

### 4. Push ke GitHub
```bash
git push origin main
```

### 5. (Opsional) Jalankan script auto-loop sampai kontribusi muncul di profil
```bash
chmod +x run.sh
./run.sh
```

## Penjelasan Script

- **kyugito.sh:**  
  Membuat commit dengan tanggal custom. Isi commit ditulis ke `dummy.txt`, bukan README.md.

- **run.sh:**  
  Menjalankan kyugito.sh, push ke remote, dan cek kontribusi di profil GitHub. Loop otomatis sampai kontribusi bertambah.

## Credits

Grid tanggal diambil dari [githut.xyz](https://githut.xyz/) untuk visualisasi huruf di graph.

---

**Enjoy your fake contributions! 🚀**
