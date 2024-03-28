#!/bin/bash

if [ -d $1 ]
then
        dir=$(ls $1)
        for file in $dir
        do
                if [ -x $file ] && [ -f $file ]
                then
                        echo "$file is launchable"
                fi
        done
else
        echo "no such directory"
fi
