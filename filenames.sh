#!/usr/bin/env bash

cd ./img/fluffy

for file in * ; do
    basename=$(tr -dc a-z </dev/urandom | head -c 20)
	newname="$basename.${file#*.}";
	mv "$file" "$newname";
done

cd ../not_fluffy