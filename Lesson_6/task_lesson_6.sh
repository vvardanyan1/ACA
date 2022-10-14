#!/bin/bash

usage()
{
	echo "Usage: $0 <name> <lastname> <age> <gender>" [-h]
	#echo "options:"
	#echo "-h        print help"
	exit -1

}


if  (( $# !=4 )); then
       	usage
fi

name=$1
lastname=$2
age=$3
gender=$4

echo "${name} ${lastname} ${age} ${gender}" >> list1
cat list1
