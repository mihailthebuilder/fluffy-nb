#!/usr/bin/env bash

# convert all fluffy image names to random lowercase text
cd ./img/fluffy

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

# copy all images into a single folder
cd ..
cp -r fluffy/. combined
cp -r not_fluffy/. combined

# archive all images
archive="fluffy-images.tar.xz"
tar -zcf $archive combined
mv $archive ../