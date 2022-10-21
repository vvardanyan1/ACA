#!/bin/bash

set -xe

read -p "Type any number: " num
if (( $num % 2 == 0 )); then
	if [[ ! -d "$even" ]]; then
		 mkdir "even"
	else
	       	echo "directory $even already exists"
	fi
	for i in {1..20}; do
		touch ./even/even_$i.txt
	done
else
	if [[ ! -d "$odd" ]]; then
		mkdir "odd"
	else
	       	echo "directory $odd already exists"
	fi
	for i in {1..20}; do
		touch ./odd/odd_$i.txt
	done
fi

