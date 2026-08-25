# .dotfiles

## Dock hide/unhide

```console
# reduces the delay and makes the animation for showing and hiding the Dock faster.
defaults write com.apple.dock autohide-time-modifier -int 0

# only reduces the delay before the Dock is shown on hover
defaults write com.apple.Dock autohide-delay -float 0.03
```

## Key Repeat

````console
# normal minimum is 15 (225 ms)
defaults write -g InitialKeyRepeat -int 10

# normal minimum is 2 (30 ms)
defaults write -g KeyRepeat -int 1
```

## Reload Changes

Reload nvim settings
`:source %`

Reload lazy plugin
`:Lazy reload vim-tmux-navigator`

## Install oh my zsh

https://ohmyz.sh/#Install

### Install Oh My Posh

https://ohmyposh.dev/docs/installation/macos

## link files

```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.wezterm.lua ~/.wezterm.lua
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/nvim ~/.config/
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

## things to install

1. install brew
2. install fonts
   `brew install --cask font-jetbrains-mono-nerd-font`
3. install node (necessary for mason to grab some LSPs)
4. install ripgrep
5. install tmux
6. install TPM (tmux plugin manager)
7. install neovim
8. install ohmyzsh (does not use brew)
9. install ohmyposh
10. install tree-sitter-cli

## tmux setup

TMUX package manager (TPM) won't install unless manually triggered.
`Ctrl + Space` and then `Shift + I`

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

## Setup .dotfiles

`gh repo clone vantassell/.dotfiles`

### Add symlinks

```
./config/nvim -> /Users/andrew/.dotfiles/nvim
.gitconfig -> /Users/andrew/.dotfiles/.gitconfig
.tmux.conf -> /Users/andrew/.dotfiles/.tmux.conf
.wezterm.lua -> /Users/andrew/.dotfiles/.wezterm.lua
.zshrc -> /Users/andrew/.dotfiles/.zshrc
```

```



```

## nvim lazy.nvim

`The opts parameter is just shortcut to avoid the normal boilerplate config = function() require(‘plugin’).setup(opts) end.`

## Install k8 stuff

1. Download Docker Desktop
2. Enable k8 mode
3. brew install minikube
4. Start mini-cube with docker driver. `minikube start --driver=docker`

Install k8 switcher

1. `brew install kubectx`
````
