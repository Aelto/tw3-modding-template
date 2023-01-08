#!/bin/bash

# TODO update this path to point to your witcher 3 directory
GAME_PATH="G:/GOG/The Witcher 3 Wild Hunt GOTY"
BIN_FOLDER_NAME="x64"
LOG_FILE_PATH="C:/Users/amsun/Documents/The Witcher 3/scriptslog.txt"

# TODO update this to your modkit path. nexus modkit doesn't ship with w3strings.exe remember to add it to the same folder
MOD_KIT_PATH="D:/Dev/witcher3/ModKit/bin/x64"

# TODO update these based on your mod you are developing
NEXUS_MOD_ID="5766"
MOD_NAME="modAutomaticDialogPicker"
RELEASE_NAME="AutomaticDialogPicker"

# do not update anything below this line
pushd ..
MOD_PATH=`pwd`
popd