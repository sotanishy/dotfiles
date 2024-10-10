# Installation

```
git clone https://github.com/sotanishy/dotfiles
cd dotfiles
```

## Vim/Neovim

Install Vim/Neovim.
```
sudo apt install vim neovim
```

Install the config files.
```
cd vim
./setup_vim.sh
```

## bash/zsh

Install zsh and change the login shell to zsh.
```
sudo apt install zsh
chsh -s $(which zsh)
```
Log out and log back in.

Install zplug
```
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

Install the config files.
```
./install.sh
```

