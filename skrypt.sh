#!/bin/bash

if [ "$1" = "--date" ]; then
  date=$(date +%Y-%m-%d)
  echo "Dzisiejsza data: $date"

  # Dodatkowe czynności po wyświetleniu daty
  echo "Wykonuję dodatkowe czynności po wyświetleniu daty..."
  # Tutaj dodaj kod, który ma być wykonany po wyświetleniu daty

else
  echo "Nieznana flaga. Użyj --date, aby wyświetlić dzisiejszą datę."
fi


