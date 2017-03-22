# User configuration
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=/usr/local/sbin:$PATH

# Go stuff
export GOPATH=$HOME/Development/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:/usr/local/Cellar
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Aliases
alias zshconfig="subl ~/.zshrc"
alias showUDIDs="system_profiler SPUSBDataType | sed -n -e '/iPad/,/Serial/p' -e '/iPhone/,/Serial/p'"

# Swift
alias schwift='/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin/swift'
alias swift="xcrun swift"

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

# git aliases
alias gg="git log --oneline --all --abbrev-commit --graph --decorate --color"
alias gs="git status -s"
alias gd="git diff"
alias gu="git push"
rgc() { git commit -m"`curl -s http://whatthecommit.com/index.txt`" } #random git commit message
function gcom() { git commit -m $1 }
function ga() { git add $* }
function gi() { wget http://www.gitignore.io/api/$1 -O ./.gitignore }
alias gpanic="git checkout ."

# ssh hosts
alias uberspace='ssh benchr@bootes.uberspace.de'
alias htw='ssh -X s76511@ilux150.informatik.htw-dresden.de'
alias rob='ssh s76511@rob1.rz.htw-dresden.de'
alias rubu='ssh ben@rubu2.rz.htw-dresden.de'

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

function tower() {
    if [ $# -eq 0 ]
    then
        gittower .
    else
        gittower $1
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

function serveHTTP() { ncat -klvp $1 }

# hide all the desktop icons! :)
function showDesktopIcons() { defaults write com.apple.finder CreateDesktop -bool $1; killall Finder; }

# LOVOO
function jenkins() {
    ssh jenkins@osxbuild0$1.lovoo.local
}
