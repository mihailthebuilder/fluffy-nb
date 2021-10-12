#!/usr/bin/env bash

testing="hullo"

if [[ $testing =~ [[:upper:]] ]]

then
    echo "uppercase"
else
    echo "lowercase"
fi