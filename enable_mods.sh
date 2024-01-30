#!/bin/bash

lethal_company_directory="/c/SteamLibrary/steamapps/common/Lethal Company"

cp "./backup/winhttp.dll" "$lethal_company_directory"

cp -r ./lethal_company/BepInEx/plugins/* "$lethal_company_directory/BepInEx/plugins"
