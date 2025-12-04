#!/usr/bin/sh

CELESTE_LOC=""

set -e

read -r -p "Enter the location of your celeste installation: " CELESTE_LOC

if [ ! -e "$CELESTE_LOC/Celeste.exe" ]; then
	echo "Couldn't find Celeste.exe on the location provided, invalid install"
	exit 1
fi

# Download kickstart
echo Downloading files...
wget https://github.com/flibitijibibo/MonoKickstart/archive/02b1b80e61c1be2341133cb7e17806728dc55ddd.zip -O kickstart.zip
unzip ./kickstart.zip -d .
mv MonoKickstart-* MonoKickstart

# Remove unnecessary files
echo Cleaning downloaded files...
rm -f MonoKickstart/kick.bin.aarch64*
rm -f MonoKickstart/kick.bin.osx*
rm -f MonoKickstart/kick.bin.x86_64.debug
# Throw it into the celeste directory
echo Copying files...
cp -rf MonoKickstart/precompiled/* "$CELESTE_LOC/"

# Setup name
mv "$CELESTE_LOC/kick.bin.x86_64" "$CELESTE_LOC/Celeste.bin.x86_64"

# Finally copy the extra files
cp -rf extra/* "$CELESTE_LOC/"

echo Cleaning up...
rm -rf ./kickstart.zip MonoKickstart

echo Done!

