#!/bin/bash

b=(
	ack
	boot2docker
	carthage
	csshx
	exercism
	git
	git-flow
	glide
	go
	gpg
	htop-osx
	httpie
	hugo
	jq
	loc
	mas
	mercurial
	mongodb
	mysql
	openssl
	postgres
	ruby
	rust
	swiftlint
	tldr
	tmux
	watchexec
	watchman
	wget
	yarn
)

c=(
	bartender
	brackets
	caffeine
	calibre
	charles
	dash
	docker
	firefox
	gitup
	gpgtools
	icons8
	istat-menus
	iterm2
	java
	keybase
	messenger
	ngrok
	obs
	paragon-ntfs
	paw
	rescuetime
	robomongo
	screenflow
	skype
	slack
	softorino-youtube-converter
	sourcetree
	spotify
	sqlpro-studio
	sublime-text
	the-unarchiver
	typora
	virtualbox
	visual-studio-code
	whatsapp
	xquartz
)

n=(
	react-native-cli,
	ios-deploy,
	serve,
	webpack,
	webpack-dev-server
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

echo ""
echo "Installing node programs"
for f in "${n[@]}"
do
	npm install -g  $f
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
