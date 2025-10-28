# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for managing shell and editor configurations across different machines (Linux and macOS). The core components are:

- **Zsh configuration**: Modular shell setup using antidote plugin manager
- **Neovim configuration**: Based on kickstart.nvim with custom plugins and LSP setup

## Architecture

### Zsh Configuration Structure

The shell configuration follows a modular pattern split across multiple files:

1. **`.zshenv`** (loaded first): Sources secrets and environment variables
2. **`.zshrc`** (main config): Loads antidote plugin manager and sources modular config files
3. **`.zsh_plugins.txt`**: Defines plugins loaded by antidote (dracula theme, zsh-z, git plugins)
4. **`config/k014_zsh/`**: Modular configuration files for specific functionality

The modular files in `config/k014_zsh/` are:
- `custom_zsh.zsh`: Core zsh settings (vi mode, history, globdots, PATH, aliases)
- `fzf.zsh`: Fuzzy finder integration
- `nodenv.zsh`, `pyenv.zsh`, `rbenv.zsh`: Language version managers
- `utils.zsh`: Utility functions (e.g., getip)
- `mac.zsh`: macOS-specific configurations
- `work.zsh`: Work-specific config (only loaded on macOS via conditional in .zshrc)
- `secrets.zsh`: API keys and sensitive environment variables (gitignored)

**Important**: The `.zshrc` conditionally loads `work.zsh` only on macOS systems via `[[ "$(uname)" == "Darwin" ]]` check.

### Neovim Configuration Structure

Based on kickstart.nvim with the following architecture:

- **`config/nvim/init.lua`**: Entry point that loads modular configs
- **`config/nvim/lua/`**: Main configuration directory
  - `options.lua`: Vim options and settings
  - `keymaps.lua`: Key mappings
  - `lazy-bootstrap.lua`: Lazy.nvim plugin manager setup
  - `lazy-plugins.lua`: Plugin definitions
  - **`kickstart/plugins/`**: Core plugins from kickstart.nvim (LSP, Telescope, Treesitter, etc.)
  - **`custom/plugins/`**: Personal plugin additions (neo-tree, noice, copilot, typescript-tools, etc.)

The Neovim config uses `lazy.nvim` for plugin management. The `lazy-lock.json` tracks exact plugin versions.

## Common Commands

### Installation

Symlink dotfiles from home directory:
```bash
ln -s ~/git/dotfiles/.zshrc ~/.zshrc
ln -s ~/git/dotfiles/.zshenv ~/.zshenv
ln -s ~/git/dotfiles/.zsh_plugins.txt ~/.zsh_plugins.txt
```

Install antidote plugin manager (replaces older zplug):
```bash
git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
```

Install Neovim config:
```bash
mkdir -p ~/.config
ln -s ~/git/dotfiles/config/nvim ~/.config/nvim
```

### Testing Changes

After modifying zsh configs:
```bash
source ~/.zshrc
# or use the alias:
reload
```

After modifying Neovim configs:
- Restart Neovim or use `:source $MYVIMRC`
- Run `:Lazy sync` to update plugins
- Run `:checkhealth` to verify setup

### Managing Plugins

Zsh plugins (via antidote):
```bash
# Edit .zsh_plugins.txt, then reload shell
antidote load ~/.zsh_plugins.txt
```

Neovim plugins (via lazy.nvim):
- Edit files in `config/nvim/lua/kickstart/plugins/` or `config/nvim/lua/custom/plugins/`
- Run `:Lazy` in Neovim to manage plugins

## Key Configuration Details

### Environment Variables

- `VISUAL`, `EDITOR`, `GIT_EDITOR` all set to `nvim`
- `PATH` includes: `$HOME/bin`, `$HOME/.local/bin`, plus version manager paths
- Secrets are isolated in `config/k014_zsh/secrets.zsh` (gitignored)

### Zsh Settings

- Vi mode enabled (`bindkey -v`)
- History: 1000 lines in `~/.histfile`
- `globdots` enabled (matches dotfiles without explicit `.`)
- `AUTO_CD` disabled (requires explicit `cd`)

### LSP Configuration

The Neovim setup includes LSP via `config/nvim/lua/kickstart/plugins/lspconfig.lua` and uses `typescript-tools` (not ts_ls) for TypeScript/JavaScript as noted in recent commits.

## Platform Differences

- **macOS**: Loads `config/k014_zsh/work.zsh` for work-specific settings
- **Linux**: Skip work config, may need different package managers (apt vs brew)
- Both platforms supported but config includes platform detection for conditional loading
