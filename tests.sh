#!/bin/bash
FILES="./tests/*.in"
for f in $FILES
do 
	RESULT=$(./main < $f)
	FILE=$(basename -- $f)
	echo
	echo $FILE 
	echo $RESULT
done
