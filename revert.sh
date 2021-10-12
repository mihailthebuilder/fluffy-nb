#!/usr/bin/env bash

mkdir -p img/combined

testing="hullo"

if [[ $testing =~ [[:upper:]] ]]

then
    echo "uppercase"
else
    echo "lowercase"
fi