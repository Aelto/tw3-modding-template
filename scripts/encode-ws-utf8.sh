#!/bin/bash
# this script will ensure all ws files are utf 8. please ensure that all ws files are utf 8 when committing

source variables.sh

pushd "$MOD_PATH/src" > /dev/null

for SOURCE_FILE in `find . -iname "*.ws"`; do
	ENCODING=`file -bi $SOURCE_FILE`
	ENCODING=${ENCODING##*=}
	echo "detected encoding of $SOURCE_FILE as: $ENCODING"

	if [ "$ENCODING" == "binary" ]; then
		echo "assuming binary encoding is utf-16le"
		ENCODING="utf-16le"
	fi

	if [ "$ENCODING" != "utf-8" ]; then
		echo "converting $SOURCE_FILE from $ENCODING to UTF-8"
		iconv -f $ENCODING -t UTF-8 $SOURCE_FILE > $SOURCE_FILE.tmp
		mv $SOURCE_FILE.tmp $SOURCE_FILE
	fi
done

popd > /dev/null