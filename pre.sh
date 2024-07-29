#!/bin/bash

# PRE HOOK
#  Make your customisation here
CSGO_FOLDER_PATH="${STEAMAPPDIR}/game/csgo"
pushd "${STEAMAPPDIR}"

mkdir -p tmp-download/extracted/game/csgo
pushd ./tmp-download

echo $(pwd)
#echo "exec gamemode_deathmatch_server.cfg" >> "${CSGO_FOLDER_PATH}/cfg/server.cfg"

wget -qO- "https://mms.alliedmods.net/mmsdrop/2.0/mmsource-2.0.0-git1297-linux.tar.gz" | tar xvzf - -C "./extracted/game/csgo/"

wget -q -O "temp.zip" "https://github.com/roflmuffin/CounterStrikeSharp/releases/download/v253/counterstrikesharp-with-runtime-build-253-linux-5644921.zip"
unzip -o "temp.zip" -d "./extracted/game/csgo"

wget -q -O "temp1.zip" "https://github.com/ssypchenko/cs2-gungame/releases/download/v1.1.2/GG2.plugin.1.1.2.zip"
unzip -o "temp1.zip" -d "./extracted/game"

wget -q -O "temp2.zip" "https://github.com/tuomO42/cs2-rockthevote/releases/download/changes/RockTheVote-edited.zip"
unzip -o "temp2.zip" -d "./extracted/game/csgo/addons/counterstrikesharp/plugins"

mv "./extracted/game/csgo/addons/counterstrikesharp/plugins/RockTheVote-edited" "./extracted/game/csgo/addons/counterstrikesharp/plugins/RockTheVote"
cp -r ./default-configs/game "./extracted/"

if [ ! -d "${STEAMAPPDIR}/defaults-backup" ]; then
    mkdir "${STEAMAPPDIR}/defaults-backup"
    mv ./extracted/game "${STEAMAPPDIR}/defaults-backup/game"
    cp -r "${STEAMAPPDIR}/defaults-backup/game" "${STEAMAPPDIR}"

elif ! diff -bur ./extracted/game "${STEAMAPPDIR}/defaults-backup/game" &>/dev/null ; then    
    cp -r ./extracted/game "${STEAMAPPDIR}/defaults-backup/"

else
    echo "backup is up to date"
fi

popd

rm -rf tmp-download

popd
