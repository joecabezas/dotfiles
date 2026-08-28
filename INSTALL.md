# Install

Step-by-step install for a new machine. Written to be followed literally (by a human or an AI coding agent) — every command is copy-pasteable and every gotcha we've hit before is called out.

## 1. Clone the repo

```
mkdir -p ~/git
git clone git@github.com:joecabezas/dotfiles.git ~/git/dotfiles
```

The rest of this guide assumes the repo lives at `~/git/dotfiles` — `.zshrc` and `.zshenv` hardcode that path (not `$ZDOTDIR`-relative), so don't clone it elsewhere.

## 2. Install zsh and neovim

Use whatever package manager fits the platform. On a fresh Linux box with no system package access, [Homebrew/Linuxbrew](https://brew.sh) works well and is what `.zshenv` expects (see step 4):

```
brew install zsh neovim
```

Other platforms:

```
# macOS
brew install zsh neovim

# Debian/Ubuntu
sudo apt install zsh neovim

# Fedora
sudo dnf install zsh neovim
```

## 3. Install antidote (Zsh plugin manager)

```
git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
```

This repo's `.zshrc` loads **antidote** (`source ~/.antidote/antidote.zsh`). Other legacy plugin-manager instructions are commented out and can be ignored.

## 4. Symlink the config files

```
ln -sfn ~/git/dotfiles/.zshrc         ~/.zshrc
ln -sfn ~/git/dotfiles/.zshenv        ~/.zshenv
ln -sfn ~/git/dotfiles/.zsh_plugins.txt ~/.zsh_plugins.txt

mkdir -p ~/.config
ln -sfn ~/git/dotfiles/config/nvim ~/.config/nvim
```

`.zshenv` bootstraps Homebrew's `PATH` (checking Linuxbrew, Apple Silicon, and Intel Mac install locations) before antidote loads. This matters: antidote's static loader shells out to `zsh` and other brew-installed tools by name, so if Homebrew isn't on `PATH` yet when it first runs, plugin loading fails **silently and durably** (see Troubleshooting below). Don't move that Homebrew block out of `.zshenv` into `.zshrc` or later — it has to run first, for every shell invocation, which is what `.zshenv` guarantees and `.zshrc` doesn't.

## 5. Set zsh as the login shell

Requires root once, to register Homebrew's zsh binary as a valid login shell:

```
command -v zsh | sudo tee -a /etc/shells
chsh -s "$(command -v zsh)"
```

Open a new terminal to pick it up. Verify with:

```
getent passwd "$USER" | cut -d: -f7
```

## 6. Sanity check

Open a fresh terminal and confirm:

- The prompt is the Dracula theme (not a bare `hostname%`) — see Troubleshooting if not.
- `nvim` starts without errors; run `:Lazy sync` once to install/update plugins, then `:checkhealth`.

## Optional: language version managers

`config/k014_zsh/nodenv.zsh` and `pyenv.zsh` are no-ops if `nodenv`/`pyenv` aren't installed (guarded by `command -v`), so it's safe to skip them. Install later with brew/apt/etc. if needed — no dotfiles changes required.

## Machine-local / secret config

These files are gitignored and optional — create them only if this machine needs machine-specific overrides:

- `config/k014_zsh/local.zsh` — sourced by `.zshenv` on every shell (secrets, machine-specific env)
- `config/k014_zsh/work.zsh` — sourced by `.zshrc`, **macOS only**
- `config/k014_zsh/mac.zsh`, `config/k014_zsh/secrets.zsh` — referenced elsewhere in this modular setup

## Troubleshooting

### Prompt shows plain `hostname%` instead of the Dracula theme

This means antidote's cached static bundle (`~/.zsh_plugins.zsh`) is stale or empty — almost always because `antidote load` ran once before Homebrew's `PATH` was set up (e.g. you symlinked the configs before finishing step 4, or an earlier shell session predates the `.zshenv` Homebrew block). Antidote only regenerates that cache when `.zsh_plugins.txt` is newer than it, so a broken cache stays broken across every new shell until removed:

```
rm -f ~/.zsh_plugins.zsh ~/.zsh_plugins.zsh.zwc ~/.cache/antidote/.antidote.load
```

Then open a new terminal — antidote will rebuild the static file from scratch.

### `command not found: zsh` / `command not found: nodenv` / `command not found: pyenv` during shell startup

`nodenv`/`pyenv` warnings are harmless if those tools aren't installed (guarded by `command -v`, see above). A `command not found: zsh` (or other Homebrew-installed tool) error means Homebrew's `PATH` bootstrap in `.zshenv` (step 4) either isn't in place yet or points at the wrong prefix for this platform — check `command -v brew` and confirm it matches one of the paths `.zshenv` checks.

### `chsh` succeeds but new terminals still start bash

`chsh` requires the target shell to already be listed in `/etc/shells` — run the `tee -a /etc/shells` command in step 5 first, then `chsh` again. Confirm with `getent passwd "$USER" | cut -d: -f7`.
