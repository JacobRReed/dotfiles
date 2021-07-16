#!/bin/bash
sudo pacman -S $(comm -12 <(pacman -Slq | sort) <(sort pkglist.txt))
