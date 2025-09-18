#!/bin/bash

# Array tanggal kontribusi (isi sesuai kebutuhan pola/graph)
dates=(2025-01-07 2025-01-14 2025-01-21 2025-01-28 2025-02-04 2025-02-11 2025-02-18)

# File dummy, jangan pakai README.md biar tetap bersih
dummyfile="dummy.txt"

# Optional: reset dummy.txt biar gak numpuk
echo "" > $dummyfile

for d in "${dates[@]}"; do
  echo "$d - KYUGITO" >> $dummyfile
  git add $dummyfile
  GIT_AUTHOR_DATE="${d}T12:00:00" GIT_COMMITTER_DATE="${d}T12:00:00" git commit -m "Fake contribution $d"
done

echo "Selesai! Tinggal git push ke repo Github kamu."
