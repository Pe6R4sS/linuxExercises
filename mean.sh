#!/bin/bash

if [[ $# -eq 1 ]]; then
    file="/dev/stdin"
elif [[ $# -eq 2 ]]; then
    file=$2
else    
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 0
fi

col=$1

cat $file | tail -n +2 | cut -d , -f $col | { sum=0;line_count=0; while read n; do sum=$(($sum + $n)) line_count=$(($line_count+1));done;echo $((sum/$line_count));}



