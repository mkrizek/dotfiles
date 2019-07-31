# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias q="tail -F /tmp/q"

export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT='%F %T '

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

BLUE="\[\033[01;34m\]"
YELLOW="\[\033[1;33m\]"
GREEN="\[\033[01;32m\]"
NOCOLOR="\[\033[00m\]"

#PS1="$GREEN\u@\h$NOCOLOR:$BLUE\w$YELLOW\$(parse_git_branch) $NOCOLOR\$ "
PS1="$BLUE\w$NOCOLOR\$(parse_git_branch) $NOCOLOR\$ "
export EDITOR=vim
export LIBVIRT_DEFAULT_URI="qemu:///system"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
