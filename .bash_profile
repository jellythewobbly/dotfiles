if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export WORKON_HOME=~/.local/share/virtualenvs
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH

# added by Anaconda3 5.2.0 installer
# export PATH="/anaconda3/bin:$PATH"

export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
bind 'set completion-ignore-case on'

alias ..='cd ..'
alias .vimrc='vim ~/.vimrc'
alias .bash_profile='vim ~/.bash_profile'
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcod='git checkout development'
alias gcm='git commit -m'
alias gp='git push'
alias gpo='git push --set-upstream origin HEAD'
alias gP='git pull'
alias gPo='git pull origin'
alias gPom='git pull origin master'
alias gPod='git pull origin development'
alias gs='git status'
alias gl='git log'
alias python='python3'
set -o vi

source /usr/local/Cellar/git/2.19.1/etc/bash_completion.d/git-completion.bash 
source ~/.alias_autocomplete.bash

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
