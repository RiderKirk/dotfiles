# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rider/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# colorful output
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# prompt
PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '
