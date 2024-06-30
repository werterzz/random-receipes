#!/bin/bash

clear
readarray -t recipes < recipes.txt
index=$(($RANDOM % ${#recipes[@]}))
height=$(($(stty size | cut -d " " -f 1) / 2))
width=$(($(stty size | cut -d " " -f 2) / 2))
y=""
for i in $(seq 1 $height); do y+="\n"; done
x=""
for i in $(seq 1 $width); do x+=" "; done
echo -e "$y$x ${recipes[$index]}"
sleep 3
