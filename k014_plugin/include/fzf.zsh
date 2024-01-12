[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export FZF_DEFAULT_OPTS="--height 60% --border --inline-info"
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Use ~~ as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='``'

# Options to fzf command
export FZF_COMPLETION_OPTS='--border --info=inline'
