#!/bin/bash

# Ganti USERNAME dengan username GitHub kamu
USERNAME="Kyugito666"

get_contrib() {
    curl -s "https://github.com/$USERNAME" | grep -o 'data-count="[0-9]\+"' | head -1 | grep -o '[0-9]\+'
}

awal=$(get_contrib)
if [ -z "$awal" ]; then awal=0; fi

while true; do
    ./kyugito.sh
    git push origin main
    sleep 15

    baru=$(get_contrib)
    if [ -z "$baru" ]; then baru=0; fi
    echo "Kontribusi sekarang: $baru"

    if [ "$baru" -gt "$awal" ]; then
        echo "Kontribusi sudah bertambah! Selesai."
        break
    fi

    echo "Belum ada perubahan, ulangi lagi..."
    sleep 60
done
