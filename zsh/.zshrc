# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rider/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# colorful output
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias la="ls -a"
alias mkdir="mkdir -p"
alias gs="git status"
alias pm="pacman"
alias sd="sudo "
alias gd="git diff"
alias ta="tmux attach"
alias tl="tmux ls"
alias ga="git add ."
alias gc="git commit"
alias vim="nvim"
alias vi="nvim"
alias nv="nvim"

# prompt
parse_git_branch() {
	git branch 2> /dev/null | sed -n -e ' s/^\* \(.*\)/[\1] /p '
}
setopt PROMPT_SUBST
PROMPT='%F{blue}%n@%m%f %F{yellow}%~%f %F{green}$(parse_git_branch)%f%# '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

