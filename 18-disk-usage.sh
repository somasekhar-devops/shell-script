#!/bin/bash

Disk_Usage=$(df -hT | grep xfs)
Disk_Treshold=6
Message=""

while IFS= read -r line
do
    Usage=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 )
    Folder=$(echo $line | awk -F " " '{print $NF}' )

    if [ $Usage -ge $Disk_Treshold ]
    then
        echo "$Folder is more than $Disk_Threshold, Current usage is : $Usage"

done <<< $Disk_Usage