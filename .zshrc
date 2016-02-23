# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(git)

# User configuration

export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOROOT=/usr/local/go/
export GOPATH=$HOME/dev/go/
export PATH=$PATH:$GOPATH/bin

source $ZSH/oh-my-zsh.sh

# Example aliases
alias zshconfig="subl ~/.zshrc"

# useful functions
function manpdf() { man -t "${1}" | open -f -a /Applications/Preview.app/; }
function backup() { cp $1 $1.bak; }
function genfile() { dd if=/dev/zero of=file.bin bs=1024 count=0 seek=$[1024 * $1]; } #generate large file quickly, passed in MB
function subl() { open -a Sublime\ Text\ 2 $1; }
function brackets() { open -a Brackets $1; }
function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

function str() {
    if [ $# -eq 0 ]
    then
        open -a SourceTree .
    else
        open -a SourceTree $1
    fi
}

alias please='sudo'

# ls aliases
alias ll='ls -lG'
alias l='ls -lAhG'
alias ls='ls -G'
alias lsd='ls -Gal | grep ^d' # Only list directories, including hidden ones
alias lf='/bin/ls -rt|tail -n1' # list last changed file

# a quick way to get out of current directory
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias swift22='/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin/swift'

alias c='clear'

# git aliases
alias gg="git log --oneline --all --abbrev-commit --graph --decorate --color"
alias gis="git status -s"
alias gd="git diff"
rgc() { git commit -m"`curl -s http://whatthecommit.com/index.txt`"; } #random git commit message
function gcom() { git commit -m $1; }
function gi() { wget http://www.gitignore.io/api/$1 -O ./.gitignore ;}
alias gpanic="git checkout ."

alias swift="xcrun swift"

# hide all the desktop icons! :)
function showDesktopIcons() { defaults write com.apple.finder CreateDesktop -bool $1; killall Finder; }

alias uberspace='ssh benchr@bootes.uberspace.de'
alias htw='ssh s68311@ilux150.informatik.htw-dresden.de'
