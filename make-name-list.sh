#!bin/bash

# run this from ALLG

count=1

rm -rf namelist.txt

for FILE in *
    do
    echo "$FILE" >> namelist.txt
    count=$((count+1))
done

cat namelist.txt