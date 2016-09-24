#!/bin/bash
# Rips a ps2 to temp

dvdname="$(volname | grep -oP '.*\S')"
if ["$dvdname" -eq ""]
 then dvdname="$(ls /media/gner/ | grep -oP '.*\S')"
fi

dd if=/dev/sr0 of=/kodi/temp/"$dvdname".iso
