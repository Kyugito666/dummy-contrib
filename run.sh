#!/bin/bash

# Ganti USERNAME di bawah dengan username GitHub lo
USERNAME="Kyugito666"

# Fungsi ambil jumlah kontribusi tahun ini (scrape profil GitHub)
get_contrib() {
    curl -s "https://github.com/$USERNAME" | grep -o 'data-count="[0-9]\+"' | head -1 | grep -o '[0-9]\+'
}

awal=$(get_contrib)
echo "Kontribusi awal: $awal"

while true; do
    ./kyugito.sh
    git push origin main
    sleep 15 # Delay biar Github update

    baru=$(get_contrib)
    echo "Kontribusi sekarang: $baru"

    if [ "$baru" -gt "$awal" ]; then
        echo "Kontribusi sudah bertambah! Script berhenti."
        break
    fi

    echo "Belum ada perubahan, ulangi lagi..."
    sleep 60
done
