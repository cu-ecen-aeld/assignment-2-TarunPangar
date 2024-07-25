#!/bin/sh

if [ $# -lt 2 ]
then
    echo "Provide 2 parameters, first path second text string"
    exit 1
else
    writefile=$1
    writestr=$2
fi

dir_path=$(dirname "$writefile")
mkdir -p $dir_path
echo "$writestr" > $writefile
