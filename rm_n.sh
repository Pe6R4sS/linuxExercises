#!/bin/bash

#Usage statement
echo 'usage: ./rm_n.sh <dir> <n>, dir is the directory and n is the number of bytes. The function removes all files in directory dir larger than <n> bytes' 1>&2

#Function
function rm_n.sh {
    local a=$1
    local b=$2
    find $a -size "+$b"c -exec rm {} \;
}

#Example
rm_n.sh ~/Desktop/five 3
