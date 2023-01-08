#!/bin/bash

# encode the strings from the csv file in /strings and creates all the
# w3strings files

source variables.sh

pushd "$MOD_PATH/strings"

rm -f *.w3strings
"$MOD_KIT_PATH/w3strings.exe" --encode en.w3strings.csv --id-space $NEXUS_MOD_ID

rm -f *.ws
mv en.w3strings.csv.w3strings en.w3strings

cp en.w3strings ar.w3strings
cp en.w3strings br.w3strings
cp en.w3strings cz.w3strings
cp en.w3strings de.w3strings
cp en.w3strings es.w3strings
cp en.w3strings esmx.w3strings
cp en.w3strings fr.w3strings
cp en.w3strings hu.w3strings
cp en.w3strings it.w3strings
cp en.w3strings jp.w3strings
cp en.w3strings kr.w3strings
cp en.w3strings pl.w3strings
cp en.w3strings ru.w3strings
cp en.w3strings zh.w3strings
cp en.w3strings cn.w3strings

popd