# nvim

## Installing Neovim

Install [nvim](https://github.com/neovim/neovim/wiki/Installing-Neovim). Next install a [NerdFont](https://www.nerdfonts.com/), this will help your terminal to understand some of the symbols. My personal favourite is [FiraCode NF](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/FiraCode.zip).

### Arch

Using `pacman`, you have latest version of Neovim.

### Debian/Ubuntu

Using `apt` does not have latest. I install it using this [solution](https://askubuntu.com/questions/430008/how-to-install-neovim-on-ubuntu).

### Others

I don't know, see documentation.

## Installing Nvim chad

[Documentation](https://nvchad.com/docs/quickstart/install)

My personal steps:

1. `rm -rf $HOME/.local/share/nvim`. This helps delete current config.
2. `mv $HOME/.config/nvim $HOME/.config/nvim.bak`. Mantain a copy of current neovim config.
3. `git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim`. Clone `nvchad`.
4. `nvim`. Enter nvim for Lazy to install plugins.

## Basic cheatsheet

The default `<leader>` is `<space>`.

| keys | Action |
|--------------- | --------------- |
| `<leader>` + (wait) | A menu opens with keys you can press + explanation. |
| `<leader> c h` | Open embeded cheatsheet. |
| `<leader> t h` | Open menu to select in real time a theme. |
| `<leader> /` | Toggle line comment. |
| `<Ctrl> n`   | Open/Close NerdTree. |
| `<leader> e` | Focus on NerdTree (if not opened, it opens). |
| `<leader> n` | Open a horizontal terminal. |
| `<leader> v` | Open a vertical terminal. |
| `<leader> x` | Close current buffer. |

## Customize

To customize `nvchad`, you **OUGHT TO** only create and change configurations inside `custom` folder. This folder is inside `nvim` configuration. That means : `.config/nvim/lua/custom`.

### LSP

To install any language server, use `:Mason` inside `nvim`. This way with just a key you'll intall it.

## Using this repo custom nvim

1. Clone repo.
2. `cp custom $HOME/.config/nvim/lua/`
3. `nvim`

In case you have already any customization, you can just copy and edit the files you want.

## Resources

- [Turn VIM into a full featured IDE with only one command](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)
