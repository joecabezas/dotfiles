#GLOBDOTS lets files beginning with a . be matched without explicitly specifying the dot.
setopt globdots

#Require cd command to enter a directory
unsetopt AUTO_CD

# custom vars
VISUAL=vim
EDITOR=vim
GIT_EDITOR=vim

# custom dirs
PATH=${PATH}:"~/bin"
export PATH

#custom aliases
alias ll='ls -alhG'
alias reload='source ~/.zshrc'
