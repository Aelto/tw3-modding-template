#!/bin/bash

source variables.sh
source encode-csv-strings.sh

pushd "$MOD_PATH"

rm -rf "release"
mkdir "release"

mkdir -p release/$RELEASE_NAME/$MOD_NAME/content/scripts/
cp -a src/* release/$RELEASE_NAME/$MOD_NAME/content/scripts/
cp strings/* release/$RELEASE_NAME/$MOD_NAME/content/

mkdir -p release/$RELEASE_NAME/bin/config/r4game/user_config_matrix/pc/
cp mod-menu.xml release/$RELEASE_NAME/bin/config/r4game/user_config_matrix/pc/$MOD_NAME.xml

cp README.md release/$RELEASE_NAME/README.md

popd