# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -lFa --group-directories-first'
alias la='ls -A'
alias l='ll'
# alias l='ls -CF'
# alias l='ls++'
alias ..='cd ..'
alias cd..='cd ..'
alias open='gnome-open'
alias tmux='tmux -2'

set -o vi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

PS1="\[$(tput bold)\]\u@\H:\[$(tput setaf 4)\]\w $\[$(tput sgr0)\] "

export PATH=$PATH:/usr/local/go/bin



        RED="\[\033[0;31m\]"
     YELLOW="\[\033[0;33m\]"
 	  GREEN="\[\033[0;32m\]"
       BLUE="\[\033[0;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 COLOR_NONE="\[\e[0m\]"
BOLD="\[$(tput bold)\]"
MYBLUE="\[$(tput setaf 4)\]"
RESET="\[$(tput sgr0)\]"

function parse_git_branch {
  git rev-parse --git-dir &> /dev/null
  git_status="$(git status 2> /dev/null)"
  branch_pattern="^# On branch ([^${IFS}]*)"
  remote_pattern="# Your branch is (.*) of"
  diverge_pattern="# Your branch and (.*) have diverged"
  state="$"
  if [[ ! ${git_status} =~ "working directory clean" ]]; then
    state="${RED}⚡"
    # state="${RED}*"
  fi
  # add an else if or two here if you want to get more specific
  if [[ ${git_status} =~ ${remote_pattern} ]]; then
    if [[ ${BASH_REMATCH[1]} == "ahead" ]]; then
      remote="${YELLOW}↑"
    else
      remote="${YELLOW}↓"
    fi
  fi
  if [[ ${git_status} =~ ${diverge_pattern} ]]; then
    remote="${YELLOW}↕"
  fi
  if [[ ${git_status} =~ ${branch_pattern} ]]; then
    branch=${BASH_REMATCH[1]}
    echo " ${LIGHT_RED}${branch}${RESET}${remote} ${state}"
  fi
}

function prompt_func() {
    previous_return_value=$?;
    # prompt="${TITLEBAR}$BLUE[$RED\w$GREEN$(__git_ps1)$YELLOW$(git_dirty_flag)$BLUE]$COLOR_NONE "
    # prompt="${TITLEBAR}${BLUE}[${RED}\w${GREEN}$(parse_git_branch)${BLUE}]${COLOR_NONE} "
    # prompt="${TITLEBAR}${BOLD}\u@\H:${RESET}"
    prompt="${TITLEBAR}"
	prompt="${prompt}${BOLD}${LIGHT_GRAY}\w${RESET}$(parse_git_branch)${COLOR_NONE} "
	# PS1="\[$(tput bold)\]\u@\H:\[$(tput setaf 4)\]\w $\[$(tput sgr0)\] "
    if test $previous_return_value -eq 0
    then
        PS1="${prompt}"
    else
        PS1="${prompt}${RED}${COLOR_NONE}"
    fi
}

export PROMPT_COMMAND=prompt_func
# PROMPT_COMMAND='echo -ne "\033k${USER}@${HOSTNAME}: ${PWD}\033\\"'
# PROMPT_COMMAND='echo -ne "\033k${PWD}\033\\"'

export PERL_LOCAL_LIB_ROOT="/home/marcos/perl5";
export PERL_MB_OPT="--install_base /home/marcos/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/marcos/perl5";
export PERL5LIB="/home/marcos/perl5/lib/perl5/i686-linux-gnu-thread-multi-64int:/home/marcos/perl5/lib/perl5";
export PATH="/home/marcos/perl5/bin:$PATH";
export PATH="$PATH:/home/marcos/.composer/bin/";
export EDITOR=vim

if [ -d ~/code/projects/Build/bin ]; then
    export PATH="$PATH:~/code/projects/Build/bin"
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/home/marcos/.dots/bin:$PATH"
export ANT_ARGS='-logger org.apache.tools.ant.listener.AnsiColorLogger'
