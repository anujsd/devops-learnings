#!/bin/sh

# Memory

free | awk '/Mem:/ { printf("%.2f\n",$4/1024/1024) }'

# Space

df /mnt/c | awk 'NR==2 { print $5+0 }'

# Cpu usage
top -n1 | grep '%Cpu(s)' | awk '{ print $2+$4 }'

# Find files modified less than less days ago
find -type f -name 'ed*.log' -ctime -7

## Sort files by size

# Sort descending -S Sort
ls -lhS
# Sort ascending -r reverse
ls -lhSr

# Find only files sort in ascending line by line \
find -type f -exec ls -lhSr {} \;

# Sort in batches
find -type f -exec ls -lhSr {} +;
# ignore error
find -type f -exec ls -lhSr {} + 2>/dev/null;

# sort kolumn 5 and reverse order
find . -type f -exec ls -lhS {} + 2>/dev/null | sort -k5 -h -r

# Delete files modified more than 7 days ago

find . -type f -mtime +7 -print

find . -type f -mtime +7 -exec rm -rf {} \;
