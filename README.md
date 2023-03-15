# My Neovim Configuration
Hello, i've been recently learning how to use Neovim, i use it on Windows and it has been an adventure so far, but i like it.
This is my configuration or dotfiles that can be used, though some things must be considered, as for example, it's still missing a lot of features.

## Requirements
- Have Windows 11 or support Neovim >= 0.8.0
- Have **Packer** installed, if you don't have it, just clone this [`repository`](https://github.com/wbthomason/packer.nvim)
- Use a C/C++ compiler, i use MSYS2.

## Use this configuration!

### Clone the repository on your config directory
- *Note that this config directory can be, either .config in Unix systems or AppData\Local on Windows.
```bash
git clone https://github.com/Harel06533/nvim
```

### Run packer for installing all the Plugins
```:PackerSync```
- I use Mason to install the LSP's, so either install all the servers configured in `plugin\lspconfig.lua` or configure your own servers.
