#!/bin/bash

default="#[fg=$1,bg=$2]"

if battery_info=$(/usr/bin/pmset -g ps | awk '{ if (NR == 2) print $3 " " $4 }' | sed -e "s/;//g" -e "s/%//") ; then
  battery_quantity=$(echo $battery_info | awk '{print $1}')
  if [[ ! $battery_info =~ "discharging" ]]; then
    battery="#[fg=green]$battery_quantity%$default"
  elif (( $battery_quantity < 16 )); then
    battery="#[fg=red]$battery_quantity%$default"
  elif (( $battery_quantity < 31 )); then
    battery="#[fg=yellow]$battery_quantity%$default"
  else
    battery="$battery_quantity%$default"
  fi
  echo $battery
fi

