# citylights.nvim

A Neovim port of the beautiful [City Lights](https://citylights.xyz/) syntax
theme by [Yummygum](https://yummygum.com/), built with [Colorbuddy](https://github.com/tjdevries/colorbuddy.nvim).

## Installation

```vim
Plug 'tjdevries/colorbuddy.vim'
Plug 'jordanbrauer/citylights.nvim'
```

and then run the install command

```vim
:PlugInstall
```

## Usage

Ensure your syntax highlightig is enabled, dark mode engaged, and 256 terminal
colours are available, and of course set the `colorscheme` to `citylights`!

```vim
syntax enable
syntax on

set background=dark
let &t_Co=256

lua require('colorbuddy').colorscheme('citylights')
```
