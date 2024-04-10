## Install Steps:

```
cd
mkdir -p ~/git/dotfiles
git clone https://github.com/joecabezas/dotfiles.git ~/git/dotfiles

ln -s ~/git/dotfiles/.zshrc .
ln -s ~/git/dotfiles/.zplugrc .

# install code taken directly from zplug repo:
# https://github.com/zplug/zplug
echo installing zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
zplug install
```

## Install tools

### Zsh

depending on platform:

* OSX
```
brew install zsh
```

* Debian and derivatives
```
apt install zsh
```

### NeoVim

https://github.com/neovim/neovim/blob/master/BUILD.md

also install configuration:
```
mkdir -p ~/.config/nvim
cd ~/.config/
ln -s ~/git/dotfiles/config/nvim .
```
