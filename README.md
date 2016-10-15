# dotfiles

### Init
**DO NOT USE THIS IF YOU'RE SIMPLY PULLING FROM GITHUB**

```
# add this to .bashrc
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

```
$ cd
$ . ~/.bashrc
$ config config --local status.showUntrackedFiles no
$ echo ".cfg" >> .gitignore # so we allow others to generate their own
$ config status
$ config add .vimrc
$ config add .bashrc
$ config add .bash_profile
$ config remote add origin git@github.com:bkgunby/dotfiles.git
$ config push -u origin master
```

### Install
Use this to pull existing dotfiles to a new system

```
$ cd
$ git clone --bare <git-repo-url> $HOME/.cfg
$ alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
$ config checkout
$ config config --local status.showUntrackedFiles no
```

### Apps
Make sure to source `.bashrc` if this is the first time

```
### install brew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


### install apps

brew install git
brew install wget
brew install go
brew install nvm
npm install -g firebase-tools
npm install -g yo
npm install -g generator-generator

# iterm
brew install caskroom/cask/iterm2
brew install caskroom/cask/visual-studio-code
brew install caskroom/cask/google-chrome
brew install caskroom/cask/dropbox
brew install caskroom/cask/virtualbox
brew install caskroom/cask/vagrant
brew install caskroom/cask/homebrew/completions/vagrant-completion
brew install caskroom/cask/sketch
brew install caskroom/cask/framer
brew install caskroom/cask/skype

# manual
fm8/massive
sylenth1
serum
ableton

1password

```

