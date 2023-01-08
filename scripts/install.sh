#!/bin/bash
# this script will install your current src to the game

source variables.sh

echo "installing mod..."
mkdir -p "$GAME_PATH/mods/$MOD_NAME/content/scripts"
rm -rf "$GAME_PATH/mods/$MOD_NAME/content/scripts/*"
source encode-ws-for-game.sh "$GAME_PATH/mods/$MOD_NAME/content/scripts"

echo "installing w3 strings..."
source encode-w3-strings.sh
cp ../strings/* "$GAME_PATH/mods/$MOD_NAME/content/"

echo "installing menu..."
cp mod-menu.xml "$GAME_PATH/bin/config/r4game/user_config_matrix/pc/${MOD_NAME}.xml"

if [ test -f "$MOD_PATH/input.settings.begin.txt"]; then
	echo "installing input settings..."
	pushd "$W3_USER_SETTINGS_PATH" > /dev/null
	cat "$MOD_PATH/input.settings.begin.txt" >> input.settings
	popd > /dev/null
fi

if [ test -f "$MOD_PATH/user.settings.begin.txt"]; then
	echo "installing user settings..."
	pushd "$W3_USER_SETTINGS_PATH" > /dev/null
	cat "$MOD_PATH/user.settings.begin.txt" >> user.settings
	cat "$MOD_PATH/user.settings.begin.txt" >> dx12user.settings
	popd > /dev/null
fi