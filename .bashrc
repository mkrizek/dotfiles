# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias q="tail -F /tmp/q"
alias ans="cd ~/devel/ansible"

export HISTFILESIZE=
export HISTSIZE=

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

BLUE="\[\033[01;34m\]"
YELLOW="\[\033[1;33m\]"
GREEN="\[\033[01;32m\]"
NOCOLOR="\[\033[00m\]"

PS1="$GREEN\u@\h$NOCOLOR:$BLUE\w$YELLOW\$(parse_git_branch) $NOCOLOR\$ "
#PS1="$GREEN\w$YELLOW\$(parse_git_branch)$GREEN❯ $NOCOLOR"
export EDITOR=vim
export LIBVIRT_DEFAULT_URI="qemu:///system"
