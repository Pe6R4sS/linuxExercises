#!/bin/bash
mkdir ~/Desktop/five
for i in $(seq 1 5) ;
do mkdir ~/Desktop/five/dir$i
   for j in $(seq 1 $i)
   do  echo "$j" >> ~/Desktop/five/dir$i/file$i
   done
done
