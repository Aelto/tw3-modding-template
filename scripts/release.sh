#!/bin/bash
# script that makes a release that can be shared with others. saved to $MOD_PATH/release/$RELEASE_NAME

source variables.sh

echo "cleaning up prior release..."
rm -rf "$MOD_PATH/release"
mkdir "$MOD_PATH/release"

echo "releasing..."
mkdir -p "$MOD_PATH/release/$RELEASE_NAME/$MOD_NAME/content/scripts/"
source encode-ws-for-game.sh "$MOD_PATH/release/$RELEASE_NAME/$MOD_NAME/content/scripts"

pushd "$MOD_PATH" > /dev/null

echo "encoding and deploying w3 strings..."
source encode-w3-strings.sh
cp strings/* release/$RELEASE_NAME/$MOD_NAME/content/

echo "deploying menu..."
mkdir -p release/$RELEASE_NAME/bin/config/r4game/user_config_matrix/pc/
cp mod-menu.xml release/$RELEASE_NAME/bin/config/r4game/user_config_matrix/pc/$MOD_NAME.xml

if [ test -e "$MOD_PATH/resource"]; then
	echo "deploying resources..."
	cp -a resource/* release/$RELEASE_NAME/
fi

if [ test -f "$MOD_PATH/input.settings.begin.txt"]; then
	echo "deploying input settings..."
	cp input.settings.begin.txt release/$RELEASE_NAME/input.settings.begin.txt
fi

if [ test -f "$MOD_PATH/user.settings.begin.txt"]; then
	echo "deploying user settings..."
	cp user.settings.begin.txt release/$RELEASE_NAME/user.settings.begin.txt
	cp user.settings.begin.txt release/$RELEASE_NAME/dx12user.settings.begin.txt
fi

cp README.md release/$RELEASE_NAME/README.md
echo "released! located at $MOD_PATH/release/$RELEASE_NAME"

popd > /dev/null