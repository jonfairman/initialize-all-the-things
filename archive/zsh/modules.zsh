#autoload -U compinit; compinit # commented here because its loaded in zshrc
autoload -U colors; colors
autoload -Uz vcs_info #zmv zcalc
autoload -U promptinit; promptinit
zmodload -i zsh/complist

# http://stackoverflow.com/questions/890620/unable-to-have-bash-like-c-x-e-in-zsh
autoload -U edit-command-line
zle -N edit-command-line

