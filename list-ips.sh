#!/bin/bash
input="test-listofips.txt"
while IFS= read -r line
do
  echo "$line"
done < "$input"
