#!/bin/bash

if [ "$1" = "--date" ]; then
  date=$(date +%Y-%m-%d)
  echo "Dzisiejsza data: $date"

elif [[ "$1" = "--logs"* ]]; then
  count=${1#--logs}
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
  elif [ "$count" = "" ]; then
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
    echo "Nieprawidłowa liczba plików. Podaj poprawną liczbę dla flagi --logs."
  fi

elif [ "$1" = "--help" ]; then
  echo "Dostępne opcje:"
  echo "--date      Wyświetla dzisiejszą datę."
  echo "--logs      Tworzy 100 plików logx.txt."
  echo "--logsN     Tworzy N plików logx.txt, gdzie N to podana liczba."

else
  echo "Nieznana flaga. Użyj --date, aby wyświetlić dzisiejszą datę, --logs, aby utworzyć 100 plików logx.txt, --logsN, aby określić własną liczbę plików, lub --help, aby wyświetlić dostępne opcje."
fi
