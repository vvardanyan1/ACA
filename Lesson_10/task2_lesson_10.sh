#!/bin/bash

touch /home/vvardanyan/ACA/Lesson_10/log_task2/testlog

sudo grep -I -H -n -r -i error /var/log |sort >> /home/vvardanyan/ACA/Lesson_10/log_task2/testlog1

comm -13 log_task2/testlog log_task2/testlog1 >> /home/vvardanyan/ACA/Lesson_10/log_task2/diff.log

cat log_task2/diff.log >> log_task2/testlog
sort -o log_task2/testlog log_task2/testlog

