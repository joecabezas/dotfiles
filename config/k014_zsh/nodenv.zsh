[[ -d "$HOME/.nodenv/bin" ]] && export PATH="$HOME/.nodenv/bin:$PATH"

if command -v nodenv >/dev/null 2>&1; then
  eval "$(nodenv init -)"
fi
