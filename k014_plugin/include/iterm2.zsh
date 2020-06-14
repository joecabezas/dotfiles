# Only compatible with MacOS
[[ "$OSTYPE" == darwin* ]] || return

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
