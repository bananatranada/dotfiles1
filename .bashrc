### FAVORITES
alias notes="vim ~/Dropbox/notes.md"


### ENV

export EDITOR="/usr/bin/vim"


### ALIAS

# color directories
alias ls="ls -G"
# cfg-init.sh (dotfiles)
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# git branch bash
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[$(tput bold)\]\[$(tput setaf 5)\]\[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"
# clean downloads directory
alias cleand="rm $HOME/Downloads/{*.zip,*.dmg}"

### SOURCE

# cd --
. ~/.bash-scripts/acd_func.sh


### ETC
# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
# HOMEBREW
export HOMEBREW_GITHUB_API_TOKEN=028863f6472c2cbd334852a3f4261daafbfc1441
# Ctrl+s (opposite of Ctrl+r)
stty -ixon
# NVM
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
# YARN
YARN_PATH="$HOME/.yarn/bin"
# GO
export GOPATH="$HOME/dev/go"


### PATH
export PATH="$YARN_PATH:$PATH"
