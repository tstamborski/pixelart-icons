#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	aseprite="$HOME/.steam/steam/steamapps/common/Aseprite/aseprite"
else
	aseprite="C:/Program Files (x86)/Steam/steamapps/common/Aseprite/aseprite.exe"
fi

for file in aseprite/*.aseprite ; do
	name="${file##*/}"
	basename="${name%%.*}"
	echo "Exporting \"$basename\"..."
	"$aseprite" -b $file --save-as ico/$basename.ico
	"$aseprite" -b $file --save-as png/$basename.png
done

