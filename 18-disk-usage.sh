#!/bin/bash

Disk_Usage=$(df -hT | grep xfs)
Disk_Threshold=6
Message=""

while IFS= read -r line
do
    Usage=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    Folder=$(echo $line | awk -F " " '{print $NF}' )

    if [ $Usage -ge $Disk_Threshold ]
    then
        Message+="$Folder is more than $Disk_Threshold, Current usage is : $Usage"
    fi

done <<< $Disk_Usage

echo "Message : $Message"