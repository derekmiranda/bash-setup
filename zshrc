# /sh-setup/zsh settings
setopt +o nomatch
setopt extended_glob

# Set Git editor to Vim
export GIT_EDITOR=vim

# run zsh setup
source ~/sh-setup/zsh/aliases
source ~/sh-setup/zsh/local_aliases
source ~/sh-setup/zsh/config
source ~/sh-setup/zsh/show_git

zstyle ':completion:*:*:git:*' script /sh-setup/zsh/git-completion.bash
fpath=(~/sh-setup/zsh $fpath)

autoload -Uz compinit
autoload -Uz vcs_info

fpath=(/sh-setup/zsh $fpath)

