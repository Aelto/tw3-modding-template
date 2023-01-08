#!/bin/bash
# this script installs and runs the game with logs going to your terminal!

source variables.sh
source install.sh

pushd "$GAME_PATH" > /dev/null

echo "removing compiled redscripts to force recompile..."
rm -f content/content0/*.redscripts

echo "running game..."
pushd "$GAME_PATH/bin/$BIN_FOLDER_NAME" > /dev/null
./witcher3.exe -debugscripts &

echo "attaching log to terminal..."
tail -F "$W3_USER_SETTINGS_PATH/scriptslog.txt"

popd > /dev/null
popd > /dev/null