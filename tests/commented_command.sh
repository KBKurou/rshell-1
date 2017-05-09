#!/bin/sh
#tests commands with comments
#tests exit and commands with exit

g++ -Wall -Werror -ansi -pedantic ../src/main.c -o test

echo "----------"
str="echo hello world # this is a comment; exit # quit"

echo ${str}
{
	echo ${str}
	sleep 1
} | ./test

rm a.out
