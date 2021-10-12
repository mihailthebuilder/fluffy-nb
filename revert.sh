#!/usr/bin/env bash

# Reverts to previous state of img folder using the fluffy-images archive.
# Useful when you've accidentally tampered with the img folder

mkdir -p img/combined

tar -xf fluffy-images.tar.xz -C ./img/combined

cd img
mkdir fluffy not_fluffy

cd combined

for file in * ; do
    echo $file
    if [[ $file =~ [[:upper:]] ]]
    then
        mv $file ../not_fluffy
    else
        mv $file ../fluffy
    fi
done