#!/bin/sh

# Requirements: libimage-exiftool-perl

# Change to the calibrie library root and execute this script
# Only effects PDF files so its safe to run in a mixed Library

find $1 -mindepth 1 -maxdepth 1 -type d | while read -r dir
    do
        cd "$dir"
        echo Entering into $dir and executing exiftool

        for i in *.pdf ; do
            exiftool -overwrite_original -Title="$i" "$i"
            #sleep 1
        done
        cd ../
    done;

