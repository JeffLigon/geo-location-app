#!/bin/bash
echo "What is the input file that contains the list of IP addresses? "
	read filename
input=$filename
while IFS= read -r line
do
  echo "$line"
done < "$input"
