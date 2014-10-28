###############################################################################
# DEFINISTIONS......................................helper function definitions
# ENV SETTINGS........................................settings for the bash env
# VAR SETTINGS...............................................settings for tools
# SETTINGS...................................settings for commands/applications
# ALIASES..........................................anything but aliases go here
# PATHS........................................................path var setters
# EXTRA SOURCES....................................load additional source files
###############################################################################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

###############################################################################
# $DEFINISTIONS
###############################################################################

#=== FUNCTION =================================================================
#        NAME: source?
# DESCRIPTION: loads a file if it exists
# PARAMETER 1: file
#==============================================================================
function source? {
    [ -f $1 ] && source $1
}

#=== FUNCTION =================================================================
#        NAME: path!
# DESCRIPTION: adds a path to the $PATH variable
# PARAMETER 1: dir
#==============================================================================
function path! {
    [ -d $1 ] && export PATH="$PATH:$1"
}

###############################################################################
# $ENV SETTINGS
###############################################################################

PS1="\[$(tput bold)\]\u@\H:\[$(tput setaf 4)\]\w $\[$(tput sgr0)\] "
EDITOR=vim

# don't put duplicate lines in the history. See bash(1) for more options or
# force ignoredups and ignorespace. for setting history length see HISTSIZE and
# HISTFILESIZE in bash(1)
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000

###############################################################################
# $TOOL SETTINGS
###############################################################################

ANT_ARGS='-logger org.apache.tools.ant.listener.AnsiColorLogger'
GOPATH=$HOME/go

PERL5LIB="/home/marcos/perl5/lib/perl5/i686-linux-gnu-thread-multi-64int"
PERL5LIB="$PERL5LIB:/home/marcos/perl5/lib/perl5"
PERL_LOCAL_LIB_ROOT="/home/marcos/perl5"
PERL_MB_OPT="--install_base /home/marcos/perl5"
PERL_MM_OPT="INSTALL_BASE=/home/marcos/perl5"

###############################################################################
# $SETTINGS
###############################################################################

# vi mode
set -o vi

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" ||
        eval "$(dircolors -b)"
fi

###############################################################################
# $ALIASES
###############################################################################

# colors!
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -lF --group-directories-first'
alias la='ls -A'
alias l='ll'

alias ..='cd ..'
alias cd..='cd ..'
alias open='gnome-open'
alias tmux='tmux -2'

# git aliases
alias d='clear; git diff'
alias s='clear; git status'

# nice to haves
alias server='python -m SimpleHTTPServer'
alias code='cd $HOME/code/$2; tmux -2'

alias alert='notify-send --urgency=low -i \
    "$([ $? = 0 ] && echo terminal || echo error)" \
    "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

###############################################################################
# $PATHS
###############################################################################

path! $HOME/code/projects/runner/bin
path! $HOME/perl5/bin
path! $HOME/.composer/bin/
path! $HOME/bin/
path! $HOME/.dots/bin

# added by the Heroku Toolbelt
path! /usr/local/heroku/bin
path! $HOME/.cabal/bin

path! /usr/local/go/bin
path! $GOPATH/bin
path! $HOME/.rvm/bin
path! $HOME/code/projects/scaffold/scripts

###############################################################################
# $EXTRA SOURCES
###############################################################################

source? ~/.private
source? /home/marcos/.travis/travis.sh

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
