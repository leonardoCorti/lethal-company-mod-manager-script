# lethal-company-mod-manager-script
some scripts to install, enable and disable mods for lethal company without installing other programs

# usage

by default the intended way to use it is to place a exported profile of thunderstore (the file should end with .r2z) in the main directory and run "install_profile.sh", then open "enable_mods.sh", change the directory of the game and run it. Now you can run the game from steam and it will have the mods.

For disabling the mods you need to open the "disable_mods.sh" file, change the directory, and run it. For removing the already installed mods instead you need to delete everything in the "BepInEx/plugins" folder inside the folder of the game. 

It may be necessary to install BepInEx manually before. You just download it and extract in the game folder.

I used mingw64 to get curl on windows and the script is run with git bash.

You can also use a list of mods, You just need to make a mod.txt file, put the link of the mods and remove "/extract_modlist.sh" from "install_profile.sh" before running it. 
