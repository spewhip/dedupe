#!/usr/bin/env bash

# run this from Lpexc

rm -f partialmatch.txt

IFS='
'
for FILE in *

    do
        filename=${FILE,,}

        echo "Matching ${filename}"

        while
            read -r line; 

        do 
            name=${line}
            lfirst=`echo "${line,,}" | cut -d " " -f 1`
            llast=`echo "${line,,}" | cut -d " " -f 2`
            first=`echo "$line" | cut -d " " -f 1`
            last=`echo "$line" | cut -d " " -f 2`

            echo "First- $lfirst"
            echo "Last- $llast"

            foldername=$line

            if
                [[ $filename =~ $lfirst ]] && [[ $filename =~ $llast ]];
                then
                    echo "!!!!!!Fullmatch-$name!!!!!!!"
                    mv $FILE ../ALLG/$first\ $last/$FILE
            elif
                [[ $filename =~ $lfirst ]] || [[ $filename =~ $llast ]];
                then
                    echo "!!!!!!Partialmatch- $name!!!!!!!"
                    echo $FILE >> partialmatch.txt
            fi

        done < ../namelist.txt
    done



