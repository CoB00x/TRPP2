#!/bin/bash

dir=./*
for file in $dir
do
        if [ -d $file ]
        then
                echo "$file is a directory"
        else
                echo "$file is a file"
        fi
done
