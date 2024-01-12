function git_branch_name()
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

setopt prompt_subst

prompt='%1~$(git_branch_name) %# '
HISTSIZE=10000000
SAVEHIST=10000000

alias ll="ls -l"
alias q="tail -F /tmp/q"
alias ap="ansible-playbook"

export TMPDIR=/tmp
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
