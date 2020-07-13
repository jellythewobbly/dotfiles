# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jaylee/.oh-my-zsh"
export PATH=${PATH}:/usr/local/mysql/bin
# export ANDROID_HOME=/Users/jaylee/Library/Android/sdk
# export PATH=$ANDROID_HOME/platform-tools:$PATH
# export PATH=$ANDROID_HOME/tools:$PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

bindkey -v
bindkey '^R' history-incremental-search-backward

# Settings here

# export WORKON_HOME=~/.local/share/virtualenvs
# # Setting PATH for Python 3.7
# # The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH
#
# # added by Anaconda3 5.2.0 installer
# # export PATH="/anaconda3/bin:$PATH"
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
#
# export MONGO_PATH=/usr/local/mongodb
# export PATH=$PATH:$MONGO_PATH/bin


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"
PROMPT="%{$fg[white]%}%n@%{$fg[green]%}%m%{$reset_color%} ${PROMPT}\$ "

alias .vimrc='vim ~/.vimrc'
alias .gvimrc='vim ~/.gvimrc'
alias .bash_profile='vim ~/.bash_profile'
alias .zsh='vim ~/.zshrc'
alias .zshrc='vim ~/.zshrc'
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcod='git checkout dev'
alias gcm='git commit -m'
alias gp='git push'
alias gpo='git push --set-upstream origin HEAD'
alias gP='git pull'
alias gPo='git pull origin'
alias gPom='git pull origin master'
alias gPod='git pull origin dev'
alias gs='git status'
alias gl='git log'
# alias python='python3'
alias cpwd='pwd|pbcopy'
set -o vi

# alias dev=''
# alias devbe=''

alias dhome='displayplacer "id:9685AF8C-7347-5D08-5359-ABBF345F0833 res:2560x1440 hz:75 color_depth:8 scaling:off origin:(0,0) degree:0" "id:68B268CF-7865-2B61-72D6-1B68AFF94E52 res:1680x1050 color_depth:4 scaling:on origin:(1700,1440) degree:0" "id:EA6A446B-0264-6603-A10F-1827D747BF73 res:2560x1440 hz:75 color_depth:8 scaling:off origin:(2560,0) degree:0"'
alias dhome1='displayplacer "id:EA6A446B-0264-6603-A10F-1827D747BF73 res:2560x1440 hz:75 color_depth:8 scaling:off origin:(0,0) degree:0" "id:68B268CF-7865-2B61-72D6-1B68AFF94E52 res:1680x1050 color_depth:4 scaling:on origin:(1632,1440) degree:0" "id:9685AF8C-7347-5D08-5359-ABBF345F0833 res:2560x1440 hz:75 color_depth:8 scaling:off origin:(2560,0) degree:0"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Speed up nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm

# alias node='unalias node ; unalias npm ; nvm use default ; node $@'
# alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
