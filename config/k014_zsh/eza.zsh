# eza: modern ls replacement (icons, colors, git status)
# Sourced after custom_zsh.zsh so these override its ll alias.
if command -v eza >/dev/null 2>&1; then
  alias ls='eza --icons --group-directories-first'
  alias ll='eza --icons --git -la --group-directories-first'
  alias la='eza --icons -a --group-directories-first'
  alias lt='eza --icons --tree --level=2'
fi
