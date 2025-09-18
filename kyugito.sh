#!/bin/bash

# Contoh: commit membentuk "K" di graph (ganti tanggal sesuai grid contribution)
dates=(2024-01-07 2024-01-14 2024-01-21 2024-01-28 2024-02-04) # dst...

for d in "${dates[@]}"
do
  echo "$d - KYUGITO" >> README.md
  git add README.md
  GIT_AUTHOR_DATE="$dT12:00:00" GIT_COMMITTER_DATE="$dT12:00:00" git commit -m "Fake contribution $d"
done
