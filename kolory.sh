#!/bin/bash

c="\033[0m"
s="      "

for i in 0 1 2 3 4 5 6 7
do
    echo -ne "\033[48;5;${i}m ${s} ${c} "
done

echo
for i in 0 1 2 3 4 5 6 7
do
    echo -ne "\033[0;3${i}m foobar  "
done

echo
for i in 8 9 10 11 12 13 14 15
do
    echo -ne "\033[48;5;${i}m ${s} ${c} "
done

echo
for i in 0 1 2 3 4 5 6 7
do
    echo -ne "\033[1;3${i}m FooBar  "
done

echo
