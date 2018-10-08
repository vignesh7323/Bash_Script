#!/bin/bash

echo reading server memory

MEMORY=$(free -m -h | grep Mem | awk '{print $7}'| cut -d'M' -f1)

echo $MEMORY


THRESHOLD=300

if [ $MEMORY -lt $THRESHOLD ]; then
echo "Memory is critical"
mail -s "Memory is critical for the server 10.20.254.3"2 vignesh.subramaniam@iopex.com <<< "Kindly fix the issue ASAP for 10.20.201.32"
else
echo "Memory is normal" 
fi
