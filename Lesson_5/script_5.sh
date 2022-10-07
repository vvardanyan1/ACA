#! /bin/bash

name="Vahagn"
date1=$(date "+%H:%M:%S   %d/%m/%y")
touch file_5
echo " ${name}-${date1} " > file_5
cat file_5
