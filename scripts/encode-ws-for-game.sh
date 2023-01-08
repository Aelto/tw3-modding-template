#!/bin/bash
# this script will ensure all ws files are utf 8. please ensure that all ws files are utf 8 when committing

source variables.sh

pushd "$MOD_PATH/src" > /dev/null

for SOURCE_FILE in `find . -iname "*.ws"`; do
  DIR="$(dirname "${SOURCE_FILE}")"
  FILE="$(basename "${SOURCE_FILE}")"
  ENCODING=`file -bi $SOURCE_FILE`
  ENCODING=${ENCODING##*=}
  echo "detected encoding of $SOURCE_FILE as: $ENCODING"

  if [ "$ENCODING" == "binary" ]; then
    echo "assuming binary encoding is utf-16le"
    ENCODING="utf-16le"
  fi
  
  if [ "$ENCODING" != "utf-16le" ]; then
    echo "converting $FILE from $ENCODING to UTF-16LE"
    mkdir -p "$1/$DIR"
    iconv -f $ENCODING -t UTF-16LE $SOURCE_FILE > "$1/$SOURCE_FILE"
    echo -n -e '\xff\xfe' > "$1/$SOURCE_FILE.tmp"
    cat "$1/$SOURCE_FILE" >> "$1/$SOURCE_FILE.tmp"
    mv "$1/$SOURCE_FILE.tmp" "$1/$SOURCE_FILE"
  fi
done

popd > /dev/null