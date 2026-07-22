[[ -d "$HOME/.pyenv/bin" ]] && export PATH="$HOME/.pyenv/bin:$PATH"

if command -v pyenv >/dev/null 2>&1; then
  export PYENV_ROOT="${PYENV_ROOT:-$HOME/.pyenv}"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
