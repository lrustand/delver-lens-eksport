#!/usr/bin/env bash

set -e

db_navn="$(adb shell ls -1 --sort=time /storage/emulated/0/Download/*.dlens | head -n 1)"

adb pull "$db_navn"

./konverter-database.sh "$(basename $db_navn)"
