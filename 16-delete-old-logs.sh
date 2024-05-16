#1/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

Source_Directory=/tmp/app-logs

if [ -d $Source_Directory ]
then
    echo -e "$G Source Directory exists $N"
else
    echo -e "$R Given Source Directory $Source_Directory not exists... Pls check $N"
fi

Files=$(find $Source_Directory -name "*.log" -mtime +14)

## echo "Files to delete old logs : $Files"  ## To display the old 14 days log files details

while IFS= read -r line
do

echo "Deleting file : $line"
rm -rf $line

done <<<$Files
