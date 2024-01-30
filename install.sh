#!/bin/bash

directory="tmp/"

# Check if a .dll file exists in the directory
if [ -f "$directory"/*.dll ]; then
    echo ".dll file found."
    cp tmp/*.dll lethal_company/BepInEx/plugins/
else
    echo ".dll file not found."
fi

# Check if a "plugins" directory exists
if [ -d "$directory/plugins" ]; then
    echo "plugins directory found."
    cp -r tmp/plugins/* lethal_company/BepInEx/plugins/
else
    echo "plugins directory not found."
fi

# Check if a "bepinx" directory exists
if [ -d "$directory/bepinx" ]; then
    echo "bepinx directory found."
    cp -r tmp/BepInEx/plugins/* lethal_company/BepInEx/plugins/
else
    echo "bepinx directory not found."
fi

# Check if none of the conditions are true and pause the program
if [ ! -f "$directory"/*.dll ] && [ ! -d "$directory/plugins" ] && [ ! -d "$directory/bepinx" ]; then
    echo "None of the conditions are true. Pausing the program. Install manually"
    read -p "Press Enter to exit."
fi

rm -r tmp/*
