#!/bin/bash
rm Result.csv
Out="Name\tExtention\tSize\tlast modified\n"
FILES=$(ls "$PWD")
echo $FILES
for f in $FILES
do
	if [ -f $f ]  
	then		
		Out+="${f%.*}";Out+="\t"
		Out+="${f##*.}";Out+="\t"
		Out+=$(cut -d' ' -f1 <<<$(du -h $f));Out+="\t"
		Out+=$(stat -c %y $f); Out+="\n"
	fi		
done
echo -e $Out >> Result.csv
