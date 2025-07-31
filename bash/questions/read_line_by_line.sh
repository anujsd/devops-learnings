#!/bin/bash
# while IFS= read -r line; do
# #   echo "$line"
#   echo "$line" | grep -i error
# done < read.txt

while read line; do
  echo "$line"
  echo "-----"
done < read.txt

