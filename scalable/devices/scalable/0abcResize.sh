#!/bin/bash
set -x
mkdir "$PWD"/convertido
for file in $PWD/*.png
	do
		filename=$(basename "$file")
		convert "$file" -resize 96x96 "$PWD"/convertido/"${filename%.png}.png"
done
