function git_branch_name() {
  git branch --show-current 2>/dev/null | sed -e 's/\(.*\)/ [\1]/'
}
setopt prompt_subst
prompt='%1~$(git_branch_name) %# '

setopt hist_ignore_all_dups
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

alias ll="ls -l"
alias ap="ansible-playbook"
