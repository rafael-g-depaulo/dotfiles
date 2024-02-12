#!/bin/sh

# sensors | grep Core | awk '{print substr($3, 2, length($3)-5)}' | tr "\\n" " " | sed 's/ /°C  /g' | sed 's/  $//'

sensors | grep Core | awk '{print substr($3, 2, length($3)-5)}' | awk '{s+=$1; print s/NR,"°C"}' RS=" "
