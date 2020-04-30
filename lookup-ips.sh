#!/bin/bash
input="listofips-042920.txt"
while IFS= read -r line
do
  echo 'Checking: ' $line
  curl "https://tools.keycdn.com/geo.json?host=$line" >> locations-042920.txt
  echo >> locations-042920.txt
  sleep 3
done < "$input"
