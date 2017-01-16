# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME='mymuse'

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='002'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='red'
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='white'
POWERLEVEL9K_DIR_BACKGROUND='004'
POWERLEVEL9K_DIR_FOREGROUND='white'
DEFAULT_USER='ben'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_STATUS_VERBOSE=true

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Report CPU usage for commands running longer than 10 seconds
REPORTTIME=10

# plugins
plugins=(git)


if [ -z "$PS1" ]; then
        echo This shell is not interactive
else
        source $ZSH/oh-my-zsh.sh
fi

source $HOME/.bashrc

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
