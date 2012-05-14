# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="zanshin"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git textmate osx ruby rvm pow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# added my path 2011.7.19
#export PATH=/usr/local/bin:/usr/local/apache-maven-2.2.1/bin:/usr/local/maven-1.1/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/mark/.rbenv/bin
# trimmed path post rebuild 2012.03.09 -- removed items no longer present
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# -------------------------------------------------------------------
# Load RVM into a shell session *as a function*
# -------------------------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# -------------------------------------------------------------------
# set up history
#   keep 100 commands internally (histsize)
#   store history in .zsh_history
#   write out 100 commands to stored history (savehist)
# -------------------------------------------------------------------
histsize=100
histfile=~/.zsh_history
savehist=100

# -------------------------------------------------------------------
# source my aliases and functions
# -------------------------------------------------------------------
source ${HOME}/.dotfiles/.zsh/aliases
source ${HOME}/.dotfiles/.zsh/functions

# -------------------------------------------------------------------
# usr precmd to set OS X Terminal window title 
# http://timbabwe.com/2012/05/iterm_tab_and_window_titles_with_zsh/
# -------------------------------------------------------------------
#precmd () { print -Pn "\e]2;%n@%M %~\a" }
precmd () {
  tab_label=${PWD/${HOME}/\~} # use 'relative' path
  echo -ne "\e]2;${tab_label}\a" # set window title to full string
  echo -ne "\e]1;${tab_label: -24}\a" # set tab title to rightmost 24 characters
}

# finis
# mhn 2011.7.19
