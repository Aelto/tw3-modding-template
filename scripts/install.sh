#!/bin/bash

source variables.sh

# install scripts
pushd $MOD_PATH

mkdir -p "$GAME_PATH/mods/$MOD_NAME/content/scripts"
rm -rf "$GAME_PATH/mods/$MOD_NAME/content/scripts/*"
cp -a src/* "$GAME_PATH/mods/$MOD_NAME/content/scripts/"
cp strings/* "$GAME_PATH/mods/$MOD_NAME/content/"
cp mod-menu.xml "$GAME_PATH/bin/config/r4game/user_config_matrix/pc/$MOD_NAME.xml"

popd