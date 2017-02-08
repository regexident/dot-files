#!/bin/bash

b=(
	go
	git
	mercurial
	openssl
	loc
	npm
	keybase
	hugo
	tmux
	wget
)

c=(
	sublime-text
	brackets
	visual-studio-code
	slack
	bartender
	caffeine
	virtualbox
	tower
	sqlpro-studio
	the-unarchiver
	paragon-ntfs
	istat-menus
	gpgtools
	dash
	flux
	spotify
	charles
	xquartz
	whatsapp
	softorino-youtube-converter
	obs
	calibre
	rescuetime
	postman
)

for f in "${b[@]}"
do
	brew install $f
done

for f in "${c[@]}"
do
	brew cask install $f
done
