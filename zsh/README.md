# zsh

## Installing ZSH

1. `sudo apt install zsh`
2. Install a [NerdFont](https://www.nerdfonts.com/), this will help your terminal to understand some of the symbols. My personal favourite is [FiraCode NF](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/FiraCode.zip).
3. `chsh -s $(which zsh)` (set zsh as default shell, this will take effect after rebooting).

### First time into `zsh`

The first time you open `zsh` you have to select some configurations. I recommend selecting number `(2)`.

## Installing `oh-my-zsh`

Intall [`oh-my-zsh`](https://ohmyz.sh/#install).

## Customize zsh

Once you have run a `zsh shell`, `.zshrc` will be generated with others like `.oh-my-zsh` under `$HOME` folder.

### Set a zsh themes

Some [themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes). More [(external) themes](https://github.com/ohmyzsh/ohmyzsh/wiki/External-themes).

Change the value of `ZSH_THEME` with the name of the theme. With `external themes`, you have to install them inside `.oh-my-zsh/themes`.

### Set zsh plugins

Some [plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins).

The ones that are used in this configuration are:

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
- [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)
- [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git) (Is in conf as default)

To install these plugins or other ones, you have to clone the repository into `.oh-my-zsh/plugins`. Search on the repository for information about the installation on `zsh` and it will be easier. Next step is to add it into `plugins` variable. Example._ `plugins=(zsh-syntax-highlighting zsh-autosuggestions git)`.

## Using this custom conf

1. `cp .zshrc .zshrc.bak` (To have a copy of the last configuration).
2. `cp .zshrc $HOME` (Copy this custom configuration on your local).
3. `source $HOME/.zshrc` (To apply changes).

## Resources

- [oh-my-zsh docs](https://ohmyz.sh/)
