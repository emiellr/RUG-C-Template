#!/bin/bash
FILES="./tests/*.in"
for f in $FILES
do 
	FILE=$(basename -- $f)
	echo
	echo $FILE 
	./main < $f
done
