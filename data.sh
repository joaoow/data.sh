#!/bin/bash
set -x
 
temph=`date | cut -c13-14`
dat=`date +"%A %d de %B de %Y (%r)"`
 
if [ $temph -lt 12 ]; then
   mess="Bom dia $LOGNAME, tenha um bom dia!"
elif [ $temph -gt 12 -a $temph -le 18 ]; then
   mess="Boa tarde $LOGNAME"
elif [ $temph -gt 18 ]; then
   mess="Boa noite $LOGNAME"
fi
echo -e "$mess\nHoje e $dat"