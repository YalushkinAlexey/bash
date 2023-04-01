#!/bin/sh
echo "Input name of directory with nonsorted files"
read DIRECTORY
find $DIRECTORY/ -type f | wc -l $numOfFiles
echo "Number of files in directory - " 
echo $numOfFiles
cd $DIRECTORY
for file in $(ls);
do
	name=`stat -c%U $file`
	mkdir -p $name
	cp -R /home/alexey/$DIRECTORY/$file /home/alexey/$DIRECTORY/$name/$file
done
