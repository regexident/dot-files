#!/bin/bash

b=(
	git
	go
	hugo
	keybase
	loc
	mas
	mercurial
	npm
	openssl
	rust
	tmux
	watchexec
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
	iterm2
	java
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
	typora
	virtualbox
	visual-studio-code
	whatsapp
	xquartz
)

echo ""
echo "Installing brew programs"
for f in "${b[@]}"
do
	brew install $f
done

echo ""
echo "Installing brew cask programs"
for f in "${c[@]}"
do
	brew cask install $f
done

echo "Do you want to install AppStore Apps as well?"
read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
	echo ""
	echo "Installing App Store Apps. Please login first:"
	mas signin mail@benchr.de
	echo "Install Xcode"
	mas install 497799835
	echo "Install AutoMute"
	mas install 1118136179
	echo "Install Yoink"
	mas install 457622435
	echo "Install Reeder"
	mas install 880001334
	echo "Install Paws for Trello"
	mas install 1124077199
	echo "Install Evernote"
	mas install 406056744
	echo "Install Deckset"
	mas install 847496013
	echo "Install Pixelmator"
	mas install 407963104
	ecoh "Install Hyperdock"
	mas install 449830122
	echo "Install Tweetbot"
	mas install 557168941
	echo "Install Telegram"
	mas install 747648890
fi