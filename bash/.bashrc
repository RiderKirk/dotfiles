# Bash history settings
HISTFILE=~/.bash_history
HISTSIZE=1000
SAVEHIST=1000

unalias -a

# Colorful output
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias la="ls -a"
alias ll="ls -al"
alias mkdir="mkdir -p"
alias gs="git status"
alias gd="git diff"
alias ta="tmux attach"
alias tl="tmux ls"
alias ga="git add ."
alias gc="git commit"

# Prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}

PS1='\[\033[34m\]\u@\h\[\033[0m\] \[\033[33m\]\w\[\033[0m\] \[\033[32m\]$(parse_git_branch)\[\033[0m\]\$ '

if [ $(hostname) = "box" ]; then
    source /usr/local/share/chruby/chruby.sh
fi

[ -f "/home/rider/.ghcup/env" ] && . "/home/rider/.ghcup/env" # ghcup-env
