#!bin/bash

# run this from \

count=1

rm -rf namelist.txt

cd AllG

for FILE in *
    do
    echo "$FILE" >> ../namelist.txt
    count=$((count+1))
done

cd ..

cat namelist.txt