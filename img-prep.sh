#!/usr/bin/env bash

# removed combined images folder
cd img
rm -rf combined

# convert all fluffy image names to random lowercase text
cd ./fluffy

for file in * ; do
    basename=$(tr -dc a-z </dev/urandom | head -c 20)
	newname="$basename.${file#*.}";
	mv "$file" "$newname";
done

# convert all non-fluffy image names to random uppercase text
cd ../not_fluffy

for file in * ; do
    basename=$(tr -dc A-Z </dev/urandom | head -c 20)
	newname="$basename.${file#*.}";
	mv "$file" "$newname";
done
