#!/bin/bash
# Written By: Samuel Zamvil
# GitHub: https://github.com/samuelzamvil

CHIP=`system_profiler SPHardwareDataType | grep "Chip" | sed -E 's/^ +Chip: //'`
# Check for Apple Chip
if [[ $CHIP == *"Apple"* ]]
then
	# Check to see if Rosetta is already installed
	pkgutil --pkgs=".*Rosetta.*"
	# If Rosetta is not installed, install it
	if [[ -z `pkgutil --pkgs=".*Rosetta.*"` ]]
	then
		/usr/sbin/softwareupdate --install-rosetta --agree-to-license
	fi
fi