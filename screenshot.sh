#!/bin/sh

if [ $# -eq 0 ]; then
	echo "Please provide an argument. 'full' for a full screenshot of the screen, 'select' for a selection."
	exit 1
fi

output=~/documents/images/screenshots/"$(date +%s_%d_%m_%Y_%H_%M_%S).png"

case "$1" in
	"full") maim "$output" || exit ;;
	"select") maim -s "$output" || exit ;;
esac

xclip -selection clipboard -t image/png "$output"
