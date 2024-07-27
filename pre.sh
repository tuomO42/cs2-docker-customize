#!/bin/bash

# PRE HOOK
#  Make your customisation here
CSGO_FOLDER_PATH="${STEAMAPPDIR}/game/csgo"

echo "exec gamemode_deathmatch_server.cfg" >> "${CSGO_FOLDER_PATH}/cfg/server.cfg"

wget -qO- "https://mms.alliedmods.net/mmsdrop/2.0/mmsource-2.0.0-git1297-linux.tar.gz" | tar xvzf - -C ./ 

wget -q -O "temp.zip" "https://github.com/roflmuffin/CounterStrikeSharp/releases/download/v253/counterstrikesharp-build-253-linux-5644921.zip"
unzip -o "temp.zip" 
wget -q -O "temp1.zip" "https://github.com/ssypchenko/cs2-gungame/releases/download/v1.1.2/GG2.plugin.1.1.2.zip"
unzip -o "temp1.zip" 
# if base image doesn't have python ur fucked

#echo "installing python3"
#echo "debug"
#sudo apt update && sudo apt -y install python3

#python3 add_metamod_searchpath.py "${CSGO_FOLDER_PATH}"
