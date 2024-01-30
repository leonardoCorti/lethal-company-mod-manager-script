#!/bin/bash

mv *.r2z tmp/
cd tmp
unzip *.r2z
cat mods.yml | grep websiteUrl | cut -c 15- > ../mods.txt
cd ..
rm -r tmp/*

