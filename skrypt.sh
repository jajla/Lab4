#!/bin/bash

if [ "$1" = "--date" ]; then
  date=$(date +%Y-%m-%d)
  echo "Dzisiejsza data: $date"
elif [ "$1" = "--logs" ]; then
  for ((i=1; i<=100; i++))
  do
    filename="log${i}.txt"
    date=$(date +%Y-%m-%d)
    echo "Nazwa pliku: $filename" >> "$filename"
    echo "Nazwa skryptu: skrypt.sh" >> "$filename"
    echo "Data: $date" >> "$filename"
  done
  echo "Utworzono 100 plików logx.txt"
else
  echo "Nieznana flaga. Użyj --date, aby wyświetlić dzisiejszą datę lub --logs, aby utworzyć pliki logx.txt."
fi
