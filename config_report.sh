#!/bin/bash
INTENDED="intended.cfg"
IOS="show-output/SWA-10.ios"
OUTPATH="report.txt"

[ -f "$OUTPATH" ] && rm "$OUTPATH"
while read -r line; do
    SN=`echo $line| cut -d' ' -f1 -`
    /bin/echo -n `echo $line|cut -d' ' -f1-3 -`  >> $OUTPATH
    grep $SN $INTENDED > /dev/null
    if [ $? -eq 0 ]; then
      /bin/echo -n " Keep" >> $OUTPATH
    fi
    /bin/echo >> $OUTPATH
done < $IOS

