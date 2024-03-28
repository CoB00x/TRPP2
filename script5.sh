#!/bin/bash

dir=$1

if [ -d $dir ]
then
        usage=$(du -sh "$dir" | cut -f1)
        echo "directory takes up $usage"
else
        echo "no such directory"
fi
