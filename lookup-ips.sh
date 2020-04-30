#!/bin/bash
echo "What is the input file that contains the list of IP addresses? "
	read source
echo "What is the output file you would like? "
	read output
input=$source
while IFS= read -r line
do
  echo 'Checking: ' $line
  curl "https://tools.keycdn.com/geo.json?host=$line" >> $output
  echo >> $output
  sleep 3
done < "$input"
