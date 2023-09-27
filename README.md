# .dotfiles

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
   `git config --global user.name "Andrew Van Tassell"`
   `git config --global user.email vantassell@gmail.com`
3. test that this worked via
   `git config --list`

## nvim lazy.nvim

`The opts parameter is just shortcut to avoid the normal boilerplate config = function() require(‘plugin’).setup(opts) end.`
