#!/bin/bash

read -p "Type your password which must consist of min 8 max 32 characters : " -s passwd
echo
x=0

if (( ${#passwd} < 8 || ${#passwd} > 32 )); then
	echo "incorrect password length"
	x=$( cat /dev/urandom | base64 | head -c 15 )
	echo "New password generated for you: $x" 
else
	echo "Correct Password "
fi
