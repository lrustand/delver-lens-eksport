#!/usr/bin/env bash

set -e

echo "Finner siste backup-fil fra Delver Lens."
db_navn="$(adb shell ls -1 --sort=time /storage/emulated/0/Download/*.dlens | head -n 1)"

echo "Overfører backup-fil."
adb pull "$db_navn"

echo "Konverterer databasen til klartekst-format."
./konverter-database.sh "$(basename $db_navn)"
