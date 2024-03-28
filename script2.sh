#!/bin/bash

dir=$1

if [ -d $dir ]
then
        ls $dir
else
        echo "there is no such direcory"
fi
