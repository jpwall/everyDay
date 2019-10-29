#!/usr/bin/env bash

DIR=$1
DELAY=$2
FILES=$(ls -lq $DIR | wc -l)
FILES="$(($FILES - 1))"

for (( i=1; i<=$FILES; i++ ))
do
    cat -u $DIR/$i
    sleep $DELAY
    echo -en "\e[$(cat $DIR/1 | wc -l | tr -d -c 0-9)A"
done
