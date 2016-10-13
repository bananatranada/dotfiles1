### ENV

# bypass github api restriction
export HOMEBREW_GITHUB_API_TOKEN=028863f6472c2cbd334852a3f4261daafbfc1441


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


### SOURCE

# cd --
. ~/.bash-scripts/acd_func.sh
# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
