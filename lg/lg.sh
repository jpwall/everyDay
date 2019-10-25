#!/usr/local/bin/bash

DIR=$1
SEARCH=$2
CURRENT="$(pwd)"

echo $CURRENT

if [[ $DIR == /* ]]
then
    ls $DIR | grep $SEARCH
else
    ls $CURRENT/$DIR | grep $SEARCH
fi
