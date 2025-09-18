#!/bin/bash

# Array untuk setiap huruf: K Y U G I T O
# Setiap elemen adalah array tanggal (format YYYY-MM-DD) yang membentuk bagian dari huruf di grid contribution.
# Grid kolom = minggu, baris = hari (gunakan githut.xyz untuk grid tanggal, atau manual)

# Mulai dari September 2024 hingga sekarang (18 September 2025)

dates=(
  # K (September 2024)
  2024-09-02 2024-09-09 2024-09-16 2024-09-23 2024-09-30 2024-10-07 2024-10-14
  2024-09-09 2024-09-16 2024-09-23 2024-09-30 2024-10-07 2024-10-14
  2024-09-16 2024-09-23 2024-09-30 2024-10-07 2024-10-14
  # Y (Oktober 2024)
  2024-10-21 2024-10-28 2024-11-04 2024-11-11 2024-11-18 2024-11-25 2024-12-02
  2024-10-28 2024-11-18 2024-11-25 2024-12-02
  # U (Desember 2024)
  2024-12-09 2024-12-16 2024-12-23 2024-12-30 2025-01-06 2025-01-13 2025-01-20
  2024-12-09 2025-01-20
  # G (Januari 2025)
  2025-01-27 2025-02-03 2025-02-10 2025-02-17 2025-02-24 2025-03-03 2025-03-10
  2025-01-27 2025-03-03 2025-03-10 2025-02-03 2025-02-10 2025-02-17 2025-02-24
  # I (Maret 2025)
  2025-03-17 2025-03-24 2025-03-31 2025-04-07 2025-04-14 2025-04-21 2025-04-28
  # T (Mei 2025)
  2025-05-05 2025-05-12 2025-05-19 2025-05-26 2025-06-02 2025-06-09 2025-06-16
  2025-05-05 2025-06-16
  # O (Juni-September 2025)
  2025-06-23 2025-06-30 2025-07-07 2025-07-14 2025-07-21 2025-07-28 2025-08-04
  2025-06-23 2025-08-04
  # Tambahan agar sampai September 2025 (agar grid penuh hingga current date)
  2025-08-11 2025-08-18 2025-08-25 2025-09-01 2025-09-08 2025-09-15
)

for d in "${dates[@]}"
do
  echo "$d - KYUGITO" >> README.md
  git add README.md
  GIT_AUTHOR_DATE="$dT12:00:00" GIT_COMMITTER_DATE="$dT12:00:00" git commit -m "Fake contribution $d"
done

echo "Selesai! Sekarang tinggal git push ke repo Github kamu."
