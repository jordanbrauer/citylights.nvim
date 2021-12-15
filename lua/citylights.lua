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
-- License:    CC BY-NC-ND 4.0
-- Original:   https://citylights.xyz/
--

vim.g.colors_name = 'citylights'

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

Color.new('Black',  '#1f252b')
Color.new('White',  '#b7c5d3')
Color.new('Grey',   '#41505e')
Color.new('Red',    '#e27e8d')
Color.new('Green',  '#54af83')
Color.new('Blue',   '#68a1f0')
Color.new('Yellow', '#ebda65')
Color.new('Aqua',   '#9effff')
Color.new('Orange', '#ebbf83')

Color.new('sage',  '#008b94')
Color.new('steel', '#718ca1')
Color.new('teal',  '#70e1e8')
Color.new('azure', '#5ec4ff')

Color.new('success', '#54af83')
Color.new('column',  '#242b33')
Color.new('pmenu',   '#14232d')
Color.new('select',  '#363C43')

-- dark black: #171d23
-- \ 'brown':   { 'tui': 130, ': '' },
Color.new('errorRed',     '#f88070')
Color.new('successGreen', '#8bd49c')

-- TODO: check what these are used for natively and change accordingly
Color.new('DarkRed',     "#e06c75")
Color.new('DarkBlue',    "#528bff")
Color.new('DarkGreen',   "#50a14f")
Color.new('DarkOrange',  "#c18401")
Color.new('DarkYellow',  "#986801")
Color.new('Purple',      "#a626a4")
Color.new('Violet',      '#b294bb')
Color.new('Magenta',     '#ff80ff')
Color.new('DarkMagenta', '#a626a4')
Color.new('Cyan',        '#8abeb7')
Color.new('DarkCyan',    '#80a0ff')
Color.new('pink',        "#d291e4")

-- =============================================================================
-- Formatting
-- =============================================================================

Group.new("Bold",      none, none, plain)
Group.new("Italic",    none, none, italic)
Group.new("Underline", none, none, underline)

-- =============================================================================
-- Tokens
-- =============================================================================

Group.new('Comment',   colors.Grey, none, plain) 
Group.new('Constant',  colors.Red,  none, plain)
Group.new('String',    colors.Blue, none, plain)
Group.new('Character', colors.Red,  none, plain)
Group.new('Number',    colors.Red,  none, plain)
Group.new('Boolean',   colors.Red,  none, plain)
Group.new('Float',     colors.Red,  none, plain)

Group.new('Identifier', colors.Orange, none, plain)
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

Group.new('Special',        colors.steel,    none, plain)
Group.new('SpecialChar',    colors.Red,      none, plain)
Group.new('Tag',            colors.sage,     none, plain)
Group.new('Delimiter',      colors.azure,    none, plain)
Group.new('SpecialComment', colors.Grey,     none, plain)
Group.new('Debug',          colors.errorRed, none, plain)
Group.new('Todo',           colors.azure,    none, plain)

-- =============================================================================
-- NeoVim
-- =============================================================================

Group.new("healthError",   colors.errorRed,     none,         plain)
Group.new("healthSuccess", colors.successGreen, none,         plain)
Group.new("healthWarning", colors.Yellow,       none,         plain)
Group.new("TermCursorNC",  none,                colors.Black, plain)

-- =============================================================================
-- Window
-- =============================================================================

Group.new("Title",       none,          none,                 plain)
Group.new("VertSplit",   colors.Grey,   none,                 plain)
Group.new("ColorColumn", none,          colors.column,        plain)
Group.new("Cursor",      none,          none,                 plain)
Group.new("CursorLine",  none,          colors.Grey,          plain)
Group.new("Error",       none,          colors.errorRed,      plain)
Group.new("iCursor",     none,          none,                 plain)
Group.new("MatchParen",  none,          colors.White,         plain)
Group.new("NonText",     colors.Black,  none,                 plain)
Group.new("Normal",      none,          none,                 plain)
Group.new("Pmenu",       none,          colors.pmenu,         plain)
Group.new("PmenuSbar",   none,          colors.Black,         plain)
Group.new("PmenuSel",    colors.Black,  colors.Blue,          plain)
Group.new("PmenuThumb",  none,          colors.White,         plain)
Group.new("SpecialKey",  colors.White,  none,                 plain)
Group.new("SpellBad",    colors.Red,    none,                 undercurl)
Group.new("SpellCap",    colors.Yellow, none,                 undercurl)
Group.new("SpellLocal",  colors.White,  none,                 undercurl)
Group.new("SpellRare",   colors.Blue,   none,                 undercurl)
Group.new("Visual",      none,          colors.select,        plain)
Group.new("VisualNOS",   none,          colors.select,        plain)
Group.new("Directory",   colors.steel,  none,                 plain)
Group.new("EndOfBuffer", colors.Grey,   none,                 plain)

-- QUESTION: WTF are these again?
-- Group.new("IncSearch", s:nord6, s:nord10, s:nord6_term, s:nord10_term, s:underline, '')
-- Group.new("Search", s:nord1, s:nord8, s:nord1_term, s:nord8_term, none, '')

-- Group.new("TabLine", s:nord4, s:nord1, none, s:nord1_term, none, '')
-- Group.new("TabLineFill", s:nord4, s:nord1, none, s:nord1_term, none, '')
-- Group.new("TabLineSel", s:nord8, s:nord3, s:nord8_term, s:nord3_term, none, '')

-- =============================================================================
-- Prompt
-- =============================================================================

Group.new("ErrorMsg",   none,          colors.errorRed, plain)
Group.new("ModeMsg",    none,          none,            plain)
Group.new("MoreMsg",    colors.White,  none,            plain)
Group.new("Question",   none,          none,            plain)
Group.new("WarningMsg", colors.Yellow, none,            plain)
-- QUESTION: WTF are these again?
-- Group.new("WildMenu", s:nord8, s:nord1, s:nord8_term, s:nord1_term, '', '')

-- =============================================================================
-- Status Line
-- =============================================================================

Group.new("StatusLine",       colors.White, colors.Black, plain)
Group.new("StatusLineNC",     none,         colors.Black, plain)
Group.new("StatusLineTerm",   colors.White, colors.Black, plain)
Group.new("StatusLineTermNC", none,         colors.Black, plain)

-- =============================================================================
-- Gutter
-- =============================================================================
-- "
-- Plugin: mhinz/vim-signify
-- Plugin: airblade/vim-gitgutter

Group.new("CursorColumn", none,         colors.Black, plain)
Group.new("CursorLineNr", colors.White, none,         plain)
Group.new("LineNr",       colors.Grey,  none,         plain)
Group.new("SignColumn",   none,         colors.Black, plain)
Group.new('Folded',       colors.steel, none,         bold)
Group.new('FoldColumn',   colors.steel, none,         bold)

Group.new("diffAdded",         colors.Green,  none, bold)
Group.new("diffRemoved",       colors.Red,    none, bold)
Group.new("DiffChange",        colors.Yellow, none, bold)
Group.new("SignifyLineChange", colors.Yellow, none, bold)
Group.new("SignifyLineDelete", colors.Red,    none, bold)
Group.new("SignifySignChange", colors.Yellow, none, bold)
Group.new("SignifySignDelete", colors.Red,    none, bold)

Group.link("DiffAdd",               groups.diffAdded)
Group.link("DiffDelete",            groups.diffRemoved)
Group.link("GitGutterAdd",          groups.diffAdded)
Group.link("GitGutterChange",       groups.DiffChange)
Group.link("GitGutterChangeDelete", groups.diffRemoved)
Group.link("GitGutterDelete",       groups.diffRemoved)

-- =============================================================================
-- LSP
-- =============================================================================
-- "
-- Plugin: neovim/nvim-lspconfig
-- See: https://stackoverflow.com/a/70220682
--      https://github.com/neovim/nvim-lspconfig/issues/516
--
-- Formerly were LspDiagnostics{?Style}{LogLevel}

Group.new("DiagnosticInfo",            colors.azure, none, plain)
Group.new("DiagnosticUnderlineInfo",   colors.azure, none, undercurl)
Group.new("DiagnosticVirtualTextInfo", colors.azure, none, plain)
Group.new("DiagnosticFloatingInfo",    colors.azure, none, plain)
Group.new("DiagnosticSignInfo",        colors.azure, none, plain)

Group.new("DiagnosticHint",            colors.White, none, plain)
Group.new("DiagnosticUnderlineHint",   colors.White, none, undercurl)
Group.new("DiagnosticVirtualTextHint", colors.White, none, plain)
Group.new("DiagnosticFloatingHint",    colors.White, none, plain)
Group.new("DiagnosticSignHint",        colors.White, none, plain)

Group.new("DiagnosticWarn",            colors.Yellow, none, plain)
Group.new("DiagnosticUnderlineWarn",   colors.Yellow, none, undercurl)
Group.new("DiagnosticVirtualTextWarn", colors.Yellow, none, plain)
Group.new("DiagnosticFloatingWarn",    colors.Yellow, none, plain)
Group.new("DiagnosticSignWarn",        colors.Yellow, none, plain)

Group.new("DiagnosticError",            colors.errorRed, none, plain)
Group.new("DiagnosticSignError",        colors.errorRed, none, plain)
Group.new("DiagnosticUnderlineError",   colors.errorRed, none, undercurl)
Group.new("DiagnosticVirtualTextError", colors.errorRed, none, plain)
Group.new("DiagnosticFloatingError",    colors.errorRed, none, plain)

-- =============================================================================
-- Tree-sitter
-- =============================================================================

-- Group.new('TSAnnotation',         colors.hue_6_2, colors.none, plain)
-- Group.new('TSAttribute',          colors.hue_1,   colors.none, plain)
Group.new('TSBoolean',            colors.Red,   colors.none, plain)
Group.new('TSCharacter',          colors.Red,   colors.none, plain)
Group.new('TSConditional',        colors.azure,    colors.none, plain)
Group.new('TSConstant',           colors.Red,   colors.none, plain)
Group.new('TSConstBuiltin',       colors.Red,   colors.none, plain)
Group.new('TSConstMacro',         colors.Red,   colors.none, plain)
Group.new('TSConstructor',        colors.steel,   colors.none, plain)
-- Group.new('TSEmphasis',           colors.hue_6_2, colors.none, plain)
Group.new('TSError',              colors.errorRed,   colors.none, plain)
Group.new('TSException',          colors.azure,    colors.none, plain)
-- Group.new('TSField',              colors.hue_5,   colors.none, plain)
Group.new('TSFloat',              colors.azure,   colors.none, plain)
Group.new('TSFunction',           colors.teal,   colors.none, plain)
Group.new('TSFuncBuiltin',        colors.teal,   colors.none, plain)
Group.new('TSFuncMacro',          colors.teal, colors.none, plain)
Group.new('TSInclude',            colors.azure,    colors.none, plain)
Group.new('TSKeyword',            colors.azure,    colors.none, plain)
Group.new('TSKeywordFunction',    colors.sage,    colors.none, plain)
Group.new('TSKeywordOperator',    colors.azure,    colors.none, plain)
Group.new('TSLabel',              colors.azure,   colors.none, plain)
-- Group.new('TSLiteral',            colors.hue_6_2, colors.none, plain)
Group.new('TSMethod',             colors.teal,   colors.none, plain)
-- Group.new('TSNamespace',          colors.pink,    colors.none, plain)
Group.new('TSNumber',             colors.Red,   colors.none, plain)
Group.new('TSOperator',           colors.azure,  colors.none, plain)
Group.new('TSParameter',          colors.Orange,   colors.none, plain)
Group.new('TSParameterReference', colors.Orange,   colors.none, plain)
Group.new('TSProperty',           colors.steel, colors.none, plain)
Group.new('TSPunctBracket',       colors.steel,  colors.none, plain)
Group.new('TSPunctDelimiter',     colors.azure,  colors.none, plain)
Group.new('TSPunctSpecial',       colors.steel,  colors.none, plain)
-- Group.new('TSRepeat',             colors.pink,    colors.none, plain)
Group.new('TSString',             colors.Blue,    colors.none, plain)
Group.new('TSStringEscape',       colors.Red,   colors.none, plain)
Group.new('TSStringRegex',        colors.Red,   colors.none, plain)
-- Group.new('TSStrong',             colors.hue_6_2, colors.none, plain)
-- Group.new('TSStructure',          colors.hue_6_2, colors.none, plain)
Group.new('TSTag',                colors.sage,   colors.none, plain)
Group.new('TSTagDelimiter',       colors.steel,  colors.none, plain)
-- Group.new('TSText',               colors.hue_6_2, colors.none, plain)
-- Group.new('TSTitle',              colors.hue_6_2, colors.none, plain)
Group.new('TSType',               colors.sage,   colors.none, plain)
Group.new('TSTypeBuiltin',        colors.sage,   colors.none, plain)
-- Group.new('TSUnderline',          colors.hue_6_2, colors.none, plain)
-- Group.new('TSURI',                colors.hue_6_2, colors.none, plain)
Group.new('TSVariable',           colors.steel,   colors.none, plain)
Group.new('TSVariableBuiltin',    colors.sage, colors.none, plain)

-- =============================================================================
-- Git
-- =============================================================================
-- "
-- Plugin: tpope/vim-fugitive

Group.new("gitcommitDiscardedFile", colors.Red,   none, plain)
Group.new("gitcommitUntrackedFile", colors.Green, none, plain)
Group.new("gitcommitSelectedFile",  colors.Blue,  none, plain)

-- =============================================================================
-- HTML
-- =============================================================================

Group.link("htmlTag",     groups.Special)
Group.link("htmlEndTag",  groups.htmlTag)
Group.link("htmlTagName", groups.Define)
Group.link("htmlArg",     groups.Function)

-- =============================================================================
-- PHP
-- =============================================================================
-- "
-- Plugin: jordanbrauer/php.vim

Group.new('phpVarSelector', colors.Orange, none, plain)
Group.new('phpClasses',     colors.steel,  none, plain)
Group.new('phpFunction',    colors.Aqua,   none, plain)
Group.new('phpRegion',      colors.Aqua,   none, plain)
Group.new('phpParent',      colors.steel,  none, plain)
Group.new('phpUseClass',    colors.steel,  none, plain)
Group.new('phpMethodsVar',  colors.steel,  none, plain)

Group.link("phpUseKeyword",            groups.Keyword)
Group.link("phpDocTags",               groups.Keyword)
Group.link("phpDocParam",              groups.Type)
Group.link("phpNullValue",             groups.Constant)
Group.link("phpDocIdentifier",         groups.Identifier)
Group.link("phpMethod",                groups.phpFunction)
Group.link("phpUseFunction",           groups.phpUseClass)
Group.link("phpUseNamespaceSeparator", groups.phpUseClass)
Group.link("phpFunc",                  groups.Define)
Group.link("phpDeclareDirectives",     groups.Constant)

-- =============================================================================
-- JavaScript
-- =============================================================================

Group.new('javascriptIdentifierName', colors.steel, none, plain)
Group.new('javascriptObjectLabel',    colors.steel, none, plain)
Group.new('javascriptParens',         colors.steel, none, plain)

Group.link("javascriptComma",            groups.javascriptParens)
Group.link("javascriptEndColons",        groups.javascriptParens)
Group.link("javascriptBrackets",         groups.javascriptParens)
Group.link("javascriptBlock",            groups.javascriptParens)
Group.link("javascriptDotNotation",      groups.javascriptParens)
Group.link("javascriptAsyncFuncKeyword", groups.Define)
Group.link("javascriptBraces",           groups.javascriptParens)
Group.link("javascriptOpSymbol",         groups.Keyword)
Group.link("javascriptOpSymbols",        groups.Keyword)
Group.link("javascriptObjectLabelColon", groups.Keyword)
Group.link("javascriptFuncArg",          groups.Identifier)
Group.link("javascriptVariable",         groups.Define)
Group.link("javascriptFuncKeyword",      groups.Define)

-- =============================================================================
-- TypeScript
-- =============================================================================

Group.new('typescriptParens',         colors.steel,  none, plain)
Group.new('typescriptVariable',       colors.sage,   none, plain)
Group.new('typescriptIdentifierName', colors.Orange, none, plain)
Group.new('typescriptProp',           colors.Aqua,   none, plain)
Group.new('typescriptCall',           colors.Orange, none, plain)
Group.new('typescriptFuncName',       colors.Aqua,   none, plain)
Group.new('typescriptClassName',      colors.steel,  none, plain)

Group.link('typescriptOperator',              groups.Statement)
Group.link('typescriptArrowFuncArg',          groups.typescriptCall)
Group.link('typescriptImport',                groups.Keyword)
Group.link('typescriptFuncKeyword',           groups.Define)
Group.link('typescriptbraces',                groups.typescriptParens)
Group.link('typescriptVariableDeclaration',   groups.typescriptParens)
Group.link('typescriptObjectLabel',           groups.typescriptVariableDeclaration)
Group.link('typescriptUnaryOp',               groups.Operator)
Group.link('typescriptBinaryOp',              groups.Operator)
Group.link('typescriptAssign',                groups.Operator)
Group.link('typescriptTypeReference',         groups.Type)
Group.link('typescriptArrayMethod',           groups.TSFuncBuiltin)
Group.link('typescriptStringMethod',          groups.TSFuncBuiltin)
Group.link('typescriptDOMDocMethod',          groups.TSFuncBuiltin)
Group.link('typescriptConsoleMethod',         groups.TSFuncBuiltin)
Group.link('typescriptGlobal',                groups.typescriptVariableDeclaration)
Group.link('typescriptInterfaceName',         groups.typescriptVariableDeclaration)
Group.link('typescriptAliasDeclaration',      groups.typescriptVariableDeclaration)
Group.link('typescriptCastKeyword',           groups.Operator)
Group.link('typescriptAccessibilityModifier', groups.Define)
Group.link('typescriptExceptions',            groups.Keyword)
Group.link('typescriptTry',                   groups.Keyword)

-- =============================================================================
-- JSX
-- =============================================================================

Group.new('jsxAttrib', colors.Aqua, none, plain)
