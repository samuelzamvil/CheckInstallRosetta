#!/bin/bash
# Written By: Samuel Zamvil
# GitHub: https://github.com/samuelzamvil

CHIP=`system_profiler SPHardwareDataType | grep "Chip" | sed -E 's/^ +Chip: //'`
# Check for Apple Chip and if Rosetta is already installed
if [[ $CHIP == *"Apple"* ]] && [[ -z `pkgutil --pkgs=".*Rosetta.*"` ]]
then
		/usr/sbin/softwareupdate --install-rosetta --agree-to-license
fi