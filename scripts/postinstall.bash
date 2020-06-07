#!/usr/bin/env bash

if [ -d soundfonts ]; then
	echo "Soundfonts already downloaded, skipping..."
	exit 0
fi

echo 'Downloading orchestral soundfonts (about 90MB)'

BASEDIR=$(dirname "$(dirname "$0")")
mkdir -p soundfonts
curl https://codeload.github.com/cuthbertLab/midi-js-soundfonts/zip/master > soundfonts/soundfonts.zip
(cd "${BASEDIR}"/soundfonts || exit 1; unzip -q soundfonts.zip && rm soundfonts.zip)
