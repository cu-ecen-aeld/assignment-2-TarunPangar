#!/bin/sh

if [ $# -lt 2 ]
then
	echo "Provide 2 parameters, first path second text string"
	exit 1
else
	filesdir=$1
	searchstr=$2
fi

if [ ! -d $filesdir ]
then
	echo "Given directory does not represent a directory on the filesystem"
	exit 1
fi

X=$(find $filesdir -type f | wc -l)
Y=$(grep -nri --binary-files=without-match "$searchstr" $filesdir | wc -l)
echo "The number of files are $X and the number of matching lines are $Y"
