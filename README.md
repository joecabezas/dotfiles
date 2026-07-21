# dotfiles

Personal Zsh + Neovim configuration, managed with [antidote](https://getantidote.github.io/) (Zsh plugins) and [lazy.nvim](https://github.com/folke/lazy.nvim) (Neovim plugins).

## Quick install

```
mkdir -p ~/git
git clone git@github.com:joecabezas/dotfiles.git ~/git/dotfiles
```

Then install `zsh`, `neovim`, and `antidote`, symlink the config files into place, and set `zsh` as your login shell.

See **[INSTALL.md](INSTALL.md)** for exact commands, per-platform notes, and troubleshooting. That file is written to be followed step-by-step by a human or an AI coding agent — start there for a full install on a new machine.

## Layout

- `.zshenv`, `.zshrc`, `.zsh_plugins.txt` — Zsh config, loaded via antidote
- `config/k014_zsh/` — modular Zsh config sourced by `.zshrc` (fzf, pyenv, nodenv, aliases, etc.)
- `config/nvim/` — Neovim config, based on kickstart.nvim

## Nerd Fonts

If you want icons in the prompt/Neovim, install a font from https://www.nerdfonts.com/
