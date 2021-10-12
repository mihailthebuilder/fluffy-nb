#!/usr/bin/env bash

# Reverts to previous state of img folder using the fluffy-images archive.
# Useful when you've accidentally tampered with the img folder

mkdir -p img/combined

tar -xf fluffy-images.tar.xz -C ./img/combined

cd img
mkdir fluffy not_fluffy

testing="hullo"

if [[ $testing =~ [[:upper:]] ]]

then
    echo "uppercase"
else
    echo "lowercase"
fi