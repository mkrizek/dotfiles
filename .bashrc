# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#function parse_git_branch () {
#  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}

#BLUE="\[\033[01;34m\]"
#YELLOW="\[\033[1;33m\]"
#GREEN="\[\033[01;32m\]"
#NOCOLOR="\[\033[00m\]"

#PS1='$GREEN\u@\h$BLUE \w \$$NOCOLOR '
#PS1="$GREEN\w$YELLOW\$(parse_git_branch)$GREEN❯ $NOCOLOR"
export EDITOR=vim
export LIBVIRT_DEFAULT_URI="qemu:///system"
if [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bash/powerline.sh
fi
