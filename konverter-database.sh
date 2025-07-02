#!/usr/bin/env bash

set -e

sql_file="$1"
out_file="${sql_file%.*}.txt"

sqlite3 "$sql_file" -separator " " < delver.sql > "$out_file"

echo "Kortliste er skrevet til $out_file"
