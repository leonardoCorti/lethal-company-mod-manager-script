#!/bin/bash

./extract_modlist.sh

while read mod; do
    echo "installing $mod"
    ./dw.sh $mod
    ./install.sh
done <mods.txt

