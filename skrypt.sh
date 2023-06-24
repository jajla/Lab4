#!/bin/bash

if [[ "$1" = "--date" || "$1" = "-d" ]]; then
  date=$(date +%Y-%m-%d)
  echo "Dzisiejsza data: $date"

elif [[ "$1" = "--logs" || "$1" = "-l" ]]; then
  count=${2:-100}
  if [[ "$count" =~ ^[0-9]+$ ]]; then
    for ((i=1; i<=$count; i++))
    do
      filename="log${i}.txt"
      date=$(date +%Y-%m-%d)
      echo "Nazwa pliku: $filename" >> "$filename"
      echo "Nazwa skryptu: skrypt.sh" >> "$filename"
      echo "Data: $date" >> "$filename"
    done
    echo "Utworzono $count plików logx.txt"
  else
    echo "Nieprawidłowa liczba plików. Podaj poprawną liczbę dla flagi --logs."
  fi

elif [[ "$1" = "--help" || "$1" = "-h" ]]; then
  echo "Dostępne opcje:"
  echo "--date, -d               Wyświetla dzisiejszą datę."
  echo "--logs [N], -l [N]       Tworzy N (domyślnie 100) plików logx.txt."
  echo "--help, -h               Wyświetla dostępne opcje."

else
  echo "Nieznana flaga. Użyj --help, aby wyświetlić dostępne opcje."
fi
