# .zshrc

# Load antigen and initialize antigen
#source $HOME/antigen.zsh
#antigen init $HOME/.antigenrc

# load zgenom and initialize antigen
#source "${HOME}/.zgenom/zgenom.zsh"
#source $HOME/.zgenomrc

# load zprezto
# source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# load zplug and plugins
# zmodload zsh/zprof
# source ~/.zplugrc
# zprof

# antidote
source ~/.antidote/antidote.zsh
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

source ~/git/dotfiles/config/k014_zsh/fzf.zsh
# source ~/git/dotfiles/config/k014_zsh/nodenv.zsh
# source ~/git/dotfiles/config/k014_zsh/rbenv.zsh
source ~/git/dotfiles/config/k014_zsh/pyenv.zsh
source ~/git/dotfiles/config/k014_zsh/utils.zsh
source ~/git/dotfiles/config/k014_zsh/custom_zsh.zsh

# work
source ~/git/dotfiles/config/k014_zsh/work.zsh
