# LOVOO
function jenkins() {
	ssh jenkins@osxbuild0$1.lovoo.local
}

# User configuration

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home
export PATH=/usr/local/sbin:$PATH
export EDITOR=nano

export GOPATH=$HOME/Development/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Example aliases
alias zshconfig="subl ~/.zshrc"

# useful functions
function manpdf() { man -t "${1}" | open -f -a /Applications/Preview.app/; }
function backup() { cp $1 $1.bak; }
function genfile() { dd if=/dev/zero of=file.bin bs=1024 count=0 seek=$[1024 * $1]; } #generate large file quickly, passed in MB
function subl() { open -a Sublime\ Text $1; }
function brackets() { open -a Brackets $1; }

# colorized man pages :O
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

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

alias showUDIDs="system_profiler SPUSBDataType | sed -n -e '/iPad/,/Serial/p' -e '/iPhone/,/Serial/p'"

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

alias schwift='/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin/swift'
function serveHTTP() { ncat -klvp $1 }

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
alias htw='ssh -X s76511@ilux150.informatik.htw-dresden.de'
alias htwmount='sshfs s76511@ilux150.informatik.htw-dresden.de:. ~/tmp/iLux150'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
