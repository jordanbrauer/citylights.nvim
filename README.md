# citylights.nvim

A Neovim port of the beautiful [City Lights](https://citylights.xyz/) syntax
theme by [Yummygum](https://yummygum.com/), built with [Colorbuddy](https://github.com/tjdevries/colorbuddy.nvim).

<p align="center">
  <img src="https://github.com/jordanbrauer/citylights.nvim/blob/5272c4dc556061a6082950607d2819702e64d7f5/example/theme.png" alt="screenshot of theme colours on TypeScript code">
</p>

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
```

And using Lua, set the colour scheme like so

```lua
require('colorbuddy').colorscheme('citylights')
```

### Lualine

If you are using [`lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim),
this colourscheme comes with a baked in theme & configuration that you can setup
using the following Lua code in your configuartion.

```lua
local lualine = require('lualine')
local citylights = require('lualine.themes.citylights')

lualine.setup(citylights)
```
