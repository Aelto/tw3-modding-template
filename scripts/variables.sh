#!/bin/bash

# TODO update this path to point to your witcher 3 directory
GAME_PATH={yourGameLocation}
BIN_FOLDER_NAME={x64|x64_dx12}
W3_USER_SETTINGS_PATH={witcher3DocumentsLocation}

# TODO update this to your modkit path. nexus modkit doesn't ship with w3strings.exe remember to add it to the same folder
MOD_KIT_PATH={yourModKitPath}

# TODO update these based on your mod you are developing
NEXUS_MOD_ID={yourModId}
MOD_NAME={yourModName}
RELEASE_NAME={yourReleaseFolderName}

# ensure prehooks are set up :)
git config --local core.hooksPath .githooks

# do not update anything below this line
pushd ..
MOD_PATH=`pwd`
popd