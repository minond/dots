#!/bin/bash

file=$1

if [[ $file == *.c ]]
then
	prog=${file:0:-2}
	gcc $file -o $prog
	chmod +x $prog
	echo "$file compiled into $prog"
else
	echo "nothing."
fi
