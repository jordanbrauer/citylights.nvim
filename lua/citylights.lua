--   _                       
--  / `._/_    /  ._  /__/_ _
-- /_,/ / /_/ /_,//_// // _\ 
--        _/      _/         
--
-- This project is a port of the Atom/Sublime/VSCode theme made by YummyGum. No
-- changes or improvements will be made to respect the original project's
-- license, and as such this project must adopt the same license (see below).
--
-- The theme code itself is lifted from the nord.vim theme and repurposed. I
-- chose to borrow from Nord given they have themes where City Lights does,
-- making the port slightly easier.
--
-- Project:    City Lights
-- Maintainer: Jordan Brauer <18744334+jordanbrauer@users.noreply.github.com>
-- Repository: https://github.com/jordanbrauer/citylights.nvim
-- Languages:  php
-- License:    CC BY-NC-ND 4.0
-- Original:   https://citylights.xyz/
--

local Color, colors, Group, groups, styles = require('colorbuddy').setup()
local none = colors.NONE
local plain = styles.NONE
local bold = styles.bold
local italic = styles.italic
local inverse = styles.inverse
local undercurl = styles.undercurl
local underline = styles.underline
local reverse = styles.reverse
local standout = styles.standout

vim.g.colors_name = 'citylights'

-- dark black: #171d23
-- error red: #f88070
-- success green: #8bd49c
-- \ 'brown':   { 'tui': 130, ': '' },
Color.new('black', '#1f252b')
Color.new('white', '#b7c5d3')
Color.new('grey', '#41505e')
Color.new('red', '#e27e8d')
Color.new('green', '#54af83')
Color.new('blue', '#68a1f0')
Color.new('yellow', '#ebda65')
Color.new('success', '#54af83')
Color.new('sage', '#008b94')
Color.new('steel', '#718ca1')
Color.new('teal', '#70e1e8')
Color.new('azure', '#5ec4ff')
Color.new('aqua', '#9effff')
Color.new('orange', '#ebbf83')

-- =============================================================================
-- Formatting
-- =============================================================================

Group.new("Bold",      none, none, plain)
Group.new("Italic",    none, none, italic)
Group.new("Underline", none, none, underline)

-- =============================================================================
-- Tokens
-- =============================================================================

Group.new('Comment',   colors.grey, none, plain) 
Group.new('Constant',  colors.red,  none, plain)
Group.new('String',    colors.blue, none, plain)
Group.new('Character', colors.red,  none, plain)
Group.new('Number',    colors.red,  none, plain)
Group.new('Boolean',   colors.red,  none, plain)
Group.new('Float',     colors.red,  none, plain)

Group.new('Identifier', colors.orange, none, plain)
Group.new('Function',   colors.teal,   none, plain)

Group.new('Statement',   colors.azure, none, plain)
Group.new('Conditional', colors.azure, none, plain)
Group.new('Repeat',      colors.azure, none, plain)
Group.new('Label',       colors.azure, none, plain)
Group.new('Operator',    colors.azure, none, plain)
Group.new('Keyword',     colors.azure, none, plain)
Group.new('Exception',   colors.azure, none, plain)

Group.new('PreProc',   colors.azure, none, plain)
Group.new('Include',   colors.azure, none, plain)
Group.new('Define',    colors.sage,  none, plain)
Group.new('Macro',     colors.sage,  none, plain)
Group.new('PreCondit', colors.sage,  none, plain)

Group.new('Type',         colors.sage, none, plain)
Group.new('StorageClass', colors.sage, none, plain)
Group.new('Structure',    colors.sage, none, plain)
Group.new('Typedef',      colors.sage, none, plain)

Group.new('Special',     colors.steel, none, plain)
Group.new('SpecialChar', colors.red,   none, plain)
-- Group.new('Tag', none, none, none, none, colors.red.tui)
-- Group.new('Delimiter', none, none, none, none, colors.red.tui)
-- Group.new('SpecialComment', none, none, none, none, colors.red.tui)
-- Group.new('Debug', none, none, none, none, colors.red.tui)
Group.new('Todo',        colors.azure, none, plain)

-- =============================================================================
-- NeoVim
-- =============================================================================

Group.new("healthError",   colors.red,    none,         plain)
Group.new("healthSuccess", colors.green,  none,         plain)
Group.new("healthWarning", colors.yellow, none,         plain)
Group.new("TermCursorNC",  none,          colors.black, plain)

-- =============================================================================
-- Window
-- =============================================================================

Color.new('column', '#242b33')
Color.new('pmenu', '#14232d')

Group.new("Title",       none,          none,                 plain)
Group.new("VertSplit",   colors.grey,   none,                 plain)
Group.new("ColorColumn", none,          colors.column,        plain)
Group.new("Cursor",      none,          none,                 plain)
Group.new("CursorLine",  none,          colors.grey,          plain)
Group.new("Error",       none,          colors.red,           plain)
Group.new("iCursor",     none,          none,                 plain)
Group.new("MatchParen",  none,          colors.white,         plain)
Group.new("NonText",     colors.black,  none,                 plain)
Group.new("Normal",      none,          none,                 plain)
Group.new("Pmenu",       none,          colors.pmenu,         plain)
Group.new("PmenuSbar",   none,          colors.black,         plain)
Group.new("PmenuSel",    colors.black,  colors.blue,          plain)
Group.new("PmenuThumb",  none,          colors.white,         plain)
Group.new("SpecialKey",  colors.white,  none,                 plain)
Group.new("SpellBad",    colors.red,    none,                 undercurl)
Group.new("SpellCap",    colors.yellow, none,                 undercurl)
Group.new("SpellLocal",  colors.white,  none,                 undercurl)
Group.new("SpellRare",   colors.blue,   none,                 undercurl)
Group.new("Visual",      none,          none,                 plain) -- 237 TUI
Group.new("VisualNOS",   none,          none,                 plain) -- 237 TUI
Group.new("Directory",   colors.steel,  none,                 plain)
Group.new("EndOfBuffer", colors.grey,   none,                 plain)

-- QUESTION: WTF are these again?
-- Group.new("IncSearch", s:nord6, s:nord10, s:nord6_term, s:nord10_term, s:underline, '')
-- Group.new("Search", s:nord1, s:nord8, s:nord1_term, s:nord8_term, none, '')

-- Group.new("TabLine", s:nord4, s:nord1, none, s:nord1_term, none, '')
-- Group.new("TabLineFill", s:nord4, s:nord1, none, s:nord1_term, none, '')
-- Group.new("TabLineSel", s:nord8, s:nord3, s:nord8_term, s:nord3_term, none, '')

-- =============================================================================
-- Prompt
-- =============================================================================

Group.new("ErrorMsg",    none,         colors.red, plain)
Group.new("ModeMsg",     none,         none,       plain)
Group.new("MoreMsg",     colors.white, none,       plain)
Group.new("Question",    none,         none,       plain)
-- QUESTION: WTF are these again?
-- Group.new("WarningMsg", s:nord0, s:nord13, s:nord1_term, s:nord13_term, '',g '')
-- Group.new("WildMenu", s:nord8, s:nord1, s:nord8_term, s:nord1_term, '', '')

-- =============================================================================
-- Status Line
-- =============================================================================

Group.new("StatusLine",       colors.white, colors.black, plain)
Group.new("StatusLineNC",     none,         colors.black, plain)
Group.new("StatusLineTerm",   colors.white, colors.black, plain)
Group.new("StatusLineTermNC", none,         colors.black, plain)

-- =============================================================================
-- Gutter
-- =============================================================================
-- "
-- Plugin: mhinz/vim-signify
-- Plugin: airblade/vim-gitgutter

Group.new("CursorColumn", none,         colors.black, plain)
Group.new("CursorLineNr", colors.white, none,         plain)
Group.new("LineNr",       colors.grey,  none,         plain)
Group.new("SignColumn",   none,         colors.black  plain)
Group.new('Folded',       colors.steel, none,         bold)
Group.new('FoldColumn',   colors.steel, none,         bold)

Group.new("diffAdded",         colors.green,  none, bold)
Group.new("diffRemoved",       colors.red,    none, bold)
Group.new("DiffChange",        colors.yellow, none, bold)
Group.new("SignifyLineChange", colors.yellow, none, bold)
Group.new("SignifyLineDelete", colors.red,    none, bold)
Group.new("SignifySignChange", colors.yellow, none, bold)
Group.new("SignifySignDelete", colors.red,    none, bold)

Group.link("DiffAdd", "diffAdded")
Group.link("DiffDelete", "diffRemoved")

Group.link("GitGutterAdd", "diffAdded")
Group.link("GitGutterChange", "DiffChange")
Group.link("GitGutterChangeDelete", "diffRemoved")
Group.link("GitGutterDelete", "diffRemoved")

-- =============================================================================
-- LSP
-- =============================================================================
-- "
-- Plugin: neovim/nvim-lspconfig

Group.new("LspDiagnosticsDefaultWarning",       colors.yellow, none, plain)
Group.new("LspDiagnosticsDefaultError",         colors.red,    none, plain)
Group.new("LspDiagnosticsDefaultInformation",   colors.blue,   none, plain)
Group.new("LspDiagnosticsDefaultHint",          colors.white,  none, plain)
Group.new("LspDiagnosticsUnderlineWarning",     colors.yellow, none, undercurl)
Group.new("LspDiagnosticsUnderlineError",       colors.red,    none, undercurl)
Group.new("LspDiagnosticsUnderlineInformation", colors.blue,   none, undercurl)
Group.new("LspDiagnosticsUnderlineHint",        colors.white,  none, undercurl)

-- =============================================================================
-- Git
-- =============================================================================
-- "
-- Plugin: tpope/vim-fugitive

Group.new("gitcommitDiscardedFile", colors.red,   none, plain)
Group.new("gitcommitUntrackedFile", colors.green, none, plain)
Group.new("gitcommitSelectedFile",  colors.blue,  none, plain)

-- =============================================================================
-- HTML
-- =============================================================================

Group.link("htmlTag", "Special")
Group.link("htmlEndTag", "htmlTag")
Group.link("htmlTagName", "Define")
Group.link("htmlArg", "Function")

-- =============================================================================
-- PHP
-- =============================================================================
-- "
-- Plugin: jordanbrauer/php.vim

Group.new('phpVarSelector', colors.orange, none, plain)
Group.new('phpClasses',     colors.steel,  none, plain)
Group.new('phpFunction',    colors.aqua,   none, plain)
Group.new('phpRegion',      colors.aqua,   none, plain)
Group.new('phpParent',      colors.steel,  none, plain)
Group.new('phpUseClass',    colors.steel,  none, plain)
Group.new('phpMethodsVar',  colors.steel,  none, plain)

Group.link("phpUseKeyword", "Keyword")
Group.link("phpDocTags", "Keyword")
Group.link("phpDocParam", "Type")
Group.link("phpNullValue", "Constant")
Group.link("phpDocIdentifier", "Identifier")
Group.link("phpMethod", "phpFunction")
Group.link("phpUseFunction", "phpUseClass")
Group.link("phpUseNamespaceSeparator", "phpUseClass")

Group.link("phpFunc", "Define")
Group.link("phpDeclareDirectives", "Constant")

-- =============================================================================
-- JavaScript
-- =============================================================================

Group.new('javascriptIdentifierName', colors.steel, none, plain)
Group.new('javascriptObjectLabel',    colors.steel, none, plain)
Group.new('javascriptParens',         colors.steel, none, plain)

Group.link("javascriptComma", "javascriptParens")
Group.link("javascriptEndColons", "javascriptParens")
Group.link("javascriptBrackets", "javascriptParens")
Group.link("javascriptBlock", "javascriptParens")
Group.link("javascriptDotNotation", "javascriptParens")
Group.link("javascriptAsyncFuncKeyword", "Define")
Group.link("javascriptBraces", "javascriptParens")
Group.link("javascriptOpSymbol", "Keyword")
Group.link("javascriptOpSymbols", "Keyword")
Group.link("javascriptObjectLabelColon", "Keyword")
Group.link("javascriptFuncArg", "Identifier")
Group.link("javascriptVariable", "Define")
Group.link("javascriptFuncKeyword", "Define")

-- =============================================================================
-- JSX
-- =============================================================================

Group.new('jsxAttrib', colors.aqua, none, plain)

Group.link("jsxExpressionBlock", "javascriptBlock")
Group.link("jsxTagName", "Define")
