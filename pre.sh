#!/bin/bash

# PRE HOOK
#  Make your customisation here
CSGO_FOLDER_PATH="${STEAMAPPDIR}/game/csgo"

echo "exec gamemode_deathmatch_server.cfg" >> "${CSGO_FOLDER_PATH}/cfg/server.cfg"

wget -qO- "https://mms.alliedmods.net/mmsdrop/2.0/mmsource-2.0.0-git1297-linux.tar.gz" | tar xvzf - -C "${CSGO_FOLDER_PATH}/"

wget -q -O "temp.zip" "https://github.com/roflmuffin/CounterStrikeSharp/releases/download/v253/counterstrikesharp-with-runtime-build-253-linux-5644921.zip"
unzip -o "temp.zip" -d "${STEAMAPPDIR}/game/csgo"

wget -q -O "temp1.zip" "https://github.com/ssypchenko/cs2-gungame/releases/download/v1.1.2/GG2.plugin.1.1.2.zip"
unzip -o "temp1.zip" -d "${STEAMAPPDIR}/game"

wget -q -O "temp2.zip" "https://github.com/tuomO42/cs2-rockthevote/releases/download/changes/RockTheVote-edited.zip"
unzip -o "temp2.zip" -d "${STEAMAPPDIR}/game/csgo/addons/counterstrikesharp/plugins"

if [ -f "${STEAMAPPDIR}/gungame.json" ]; then
    cp "${STEAMAPPDIR}/gungame.json" "${CSGO_FOLDER_PATH}/cfg/gungame/gungame.json"
else
    cp "${CSGO_FOLDER_PATH}/cfg/gungame/gungame.json" "${STEAMAPPDIR}/gungame.json"
fi

if [ -f "${STEAMAPPDIR}/gungame.mapvote.cfg" ]; then
    cp "${STEAMAPPDIR}/gungame.mapvote.cfg" "${CSGO_FOLDER_PATH}/cfg/gungame/gungame.mapvote.cfg"
else
    cp "${CSGO_FOLDER_PATH}/cfg/gungame/gungame.mapvote.cfg" "${STEAMAPPDIR}/gungame.mapvote.cfg"
fi


