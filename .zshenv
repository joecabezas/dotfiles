# .zshenv

# Homebrew — must run before antidote/plugins load, since they spawn `zsh`
# and other brew-installed tools by name. Covers Linuxbrew, Apple Silicon,
# and Intel Mac install locations.
for __brew in /home/linuxbrew/.linuxbrew/bin/brew /opt/homebrew/bin/brew /usr/local/bin/brew; do
  if [ -x "$__brew" ]; then
    eval "$("$__brew" shellenv)"
    break
  fi
done
unset __brew

# Local machine-specific configuration (gitignored)
# Contains secrets, work-related configs, and machine-specific settings
[ -f ~/git/dotfiles/config/k014_zsh/local.zsh ] && source ~/git/dotfiles/config/k014_zsh/local.zsh
