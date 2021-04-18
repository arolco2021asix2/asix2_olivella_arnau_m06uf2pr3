#!/bin/bash
if [[ ! -d ~/FitxConfBackup ]]
then
mkdir ~/FitxConfBackup
fi

if [[ -e ~/FitxConfBackup/mountpoint.txt ]]
then
touch ~/FitxConfBackup/mountpoint.txt
fi
tail -n 10 /etc/fstab > ~/FitxConfBackup/mountpoint.txt
