#GLOBDOTS lets files beginning with a . be matched without explicitly specifying the dot.
setopt globdots

#Require cd command to enter a directory
unsetopt AUTO_CD
unsetopt autocd beep

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# custom vars
export VISUAL=nvim
export EDITOR=nvim
export GIT_EDITOR=nvim

# # custom dirs
PATH="~/bin":${PATH}
PATH="~/.local/bin":${PATH}
# linux only
# PATH=${PATH}:"/home/joe/neovim/bin/"
# #PATH=$PATH:$(yarn global bin)
export PATH

#custom aliases
alias ll='ls -alhG'
alias reload='source ~/.zshrc'
