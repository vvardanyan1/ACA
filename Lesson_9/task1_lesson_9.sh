#!/bin/bash

read -p "Type any number: " num
if (( $num % 3 == 0 )); then
	echo "Divisible"
else
	echo "Not Divisible"
fi
