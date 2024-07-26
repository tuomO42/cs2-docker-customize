#!/bin/bash

# PRE HOOK
#  Make your customisation here
CSGO_FOLDER_PATH="${STEAMAPPDIR}/game/csgo"

echo "exec gamemode_deathmatch_server.cfg" >> "${CSGO_FOLDER_PATH}/cfg/server.cfg"

wget -qO- "https://mms.alliedmods.net/mmsdrop/2.0/mmsource-2.0.0-git1297-linux.tar.gz" | tar xvzf - -C ./ 

apt update $$ apt -y install python3

python3 add_metamod_searchpath.py "${CSGO_FOLDER_PATH}"