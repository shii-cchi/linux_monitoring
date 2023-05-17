#!/bin/bash

echo "Total number of folders (including all nested ones) = $(find $1 ! -path $1 -type d | wc -l)"

echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$(find $1 ! -path $1 -type d -exec du -hs {} + | sort -hr -k 1 | head -n 5 | awk 'BEGIN{i=1}{printf "%d - %s, %s\n", i, $2, $1; i++}')"

echo "Total number of files = $(find $1 -type f | wc -l)"

echo "Number of:"
echo "Configuration files (with the .conf extension) = $(find $1 -type f -name "*.conf" | wc -l)" 
echo "Text files = $(find $1 -type f -name "*.txt" | wc -l)"
echo "Executable files = $(find $1 -type f -executable | wc -l)"
echo "Log files (with the extension .log) = $(find $1 -type f -name "*.log" | wc -l)"
echo "Archive files = $(find "$1" -type f -exec sh -c 'file -zb "$1" | grep "archive\|compress*"' sh {} \; | wc -l)"
echo "Symbolic links = $(find $1 -type l | wc -l)"

echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "$(find $1 -type f -exec du -hs {} + | sort -hr -k 1 | head -n 10 | awk 'BEGIN{i=1}{idx=split($2, a, "."); printf "%d - %s, %s, %s\n", i, $2, $1, a[idx]; i++}')"

echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
echo "$(find $1 -type f -executable -exec du -hs {} + | sort -hr -k 1 | head -n 10 | awk 'BEGIN{i=1}{"md5sum " $2 | getline m5s; close("md5sum"); idx=split(m5s, a, " "); printf "%d - %s, %s, %s\n", i, $2, $1, a[1]; i++}')"

# sleep 10
time_end=$(date +%s)

# printf "$time_end\n"
# printf "$2\n"

echo "Script execution time (in seconds) = $(("$time_end" - "$2"))"

