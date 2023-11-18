#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "sudo required"
    exit 1
fi

read -p "WM Config to use: [1: i3], [2: swaywm]: " wm_input

case "$wm_input" in
	1)
		cp -r wm/i3wm/i3 ~/.config/
		echo "i3 copied to ~/.config/"
		;;
	2)
		cp -r wm/swaywm/sway ~/.config/
		echo "sway copied to ~/.config/"
		;;
	*)
		echo "Invalid option"
		;;
esac

echo "Pick you status bar, waybar for wayland and i3status for X11"

read -p "[1: i3status], [2: waybar]: " status_input

case "$status_input" in
	1)
		cp -r wm/i3wm/i3status ~/.config/
		echo "i3status copied to ~/.config/"
		;;
	2)
		cp -r waybar ~/.config/
		echo "waybar copied to ~/.config/"
		;;
esac


read -p  "Finder config to use: [1: rofi], [2: fuzzel]: " finder_input

case "$finder_input" in
	1)
		cp -r rofi ~/.config/
		echo "rofi copied to ~/.config/"
		;;
	2)
		cp -r fuzzel ~/.config/
		echo "fuzzel copied to ~/.config/"
		;;
esac

echo "Copying rest of the configs: "
cp -r alacritty ~/.config/
cp -r nvim ~/.config/

echo "Configs copied"
