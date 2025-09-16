# .dotfiles

## Reload Changes

Reload nvim settings
`:source %`

Reload lazy plugin
`:Lazy reload vim-tmux-navigator`

## TMUX

Don't forget to clone tmux plugin manager via the below
`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

and then install the plugins with
`Ctrl + Space` and then `Shift + I`

## Install oh my zsh

https://ohmyz.sh/#Install

### Install Oh My Posh

https://ohmyposh.dev/docs/installation/macos

## link files

`ln -s ~/.dotfiles/.wezterm.lua ~/.wezterm.lua`
`ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf`
`ln -s ~/.dotfiles/.zshrc ~/.zshrc`
`ln -s ~/.dotfiles/nvim ~/.config/`

## things to install

1. install brew
2. install fonts
   `brew tap homebrew/cask-fonts`
   `brew install --cask font-jetbrains-mono-nerd-font`
3. install node (necessary for mason to grab some LSPs)
4. install ripgrep
5. install tmux
6. install TPM (tmux plugin manager)
7. install neovim
8. install ohmyz
9. install ohmyposh

## install fonts

`brew tap homebrew/cask-fonts`

`brew install --cask font-jetbrains-mono-nerd-font`

## git setup

1. get the gh cli and sign-in
2. set git user + email via

   <br>
   `git config --global user.name "MY_NAME_HERE"`

   <br>
   `git config --global user.email MY_EMAIL_HERE`

   <br>

3. test that this worked via

   <br>
   `git config --list`

## nvim lazy.nvim

`The opts parameter is just shortcut to avoid the normal boilerplate config = function() require(‘plugin’).setup(opts) end.`

## Install k8 stuff

1. Download Docker Desktop
2. Enable k8 mode
3. brew install minikube
4. Start mini-cube with docker driver. `minikube start --driver=docker`

Install k8 switcher

1. `brew install kubectx`
