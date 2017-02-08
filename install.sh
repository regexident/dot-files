#!/bin/bash

b=(
	git
	go
	hugo
	keybase
	loc
	mercurial
	npm
	openssl
	tmux
	wget
)

c=(
	bartender
	brackets
	caffeine
	calibre
	charles
	dash
	flux
	gpgtools
	istat-menus
	obs
	paragon-ntfs
	postman
	rescuetime
	slack
	softorino-youtube-converter
	spotify
	sqlpro-studio
	sublime-text
	the-unarchiver
	tower
	virtualbox
	visual-studio-code
	whatsapp
	xquartz
)

for f in "${b[@]}"
do
	brew install $f
done

for f in "${c[@]}"
do
	brew cask install $f
done
