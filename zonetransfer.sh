#/bin/bash
#Andrew Steiner

while read -r i
    do 
    touch zone
    j=`dig $i NS +noall +answer | cut -s -f6`
    dig axfr $j $i >> zone

done < urls
