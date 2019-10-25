#!/usr/local/bin/bash

FILE=$1
PWD="$(pwd)"

echo 'compiling...'
if javac $PWD/$FILE.java ; then
    set classpath=$PWD
    echo 'running:'
    java $FILE
fi
