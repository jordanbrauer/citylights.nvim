local colors = {
  black        = '#1f252b',
  white        = '#b7c5d3',
  red          = '#e27e8d',
  green        = '#54af83',
  blue         = '#68a1f0',
  yellow       = '#ebda65',
  grey         = '#718ca1',
  darkgrey     = '#41505e',
  aqua         = '#9effff',
  orange       = '#ebbf83',
  sage         = '#008b94',
  steel        = '#718ca1',
  teal         = '#70e1e8',
  azure        = '#5ec4ff',
  errorRed     = '#f88070',
  successGreen = '#8bd49c',
}

local config = {
  options = {
    component_separators = '',
    section_separators = '',
    theme = {
      normal = {
        a = {bg = colors.black, fg = colors.azure, gui = 'bold'},
        b = {bg = colors.black, fg = colors.white},
        c = {bg = colors.black, fg = colors.darkgrey},
        x = {bg = colors.black, fg = colors.darkgrey},
        y = {bg = colors.black, fg = colors.darkgrey},
        z = {bg = colors.black, fg = colors.darkgrey},
      },
      insert = {
        a = {bg = colors.black, fg = colors.successGreen, gui = 'bold'},
        b = {bg = colors.black, fg = colors.white},
        c = {bg = colors.black, fg = colors.darkgrey},
        x = {bg = colors.black, fg = colors.darkgrey},
        y = {bg = colors.black, fg = colors.darkgrey},
        z = {bg = colors.black, fg = colors.darkgrey},
      },
      visual = {
        a = {bg = colors.black, fg = colors.blue, gui = 'bold'},
        b = {bg = colors.black, fg = colors.white},
        c = {bg = colors.black, fg = colors.darkgrey},
        x = {bg = colors.black, fg = colors.darkgrey},
        y = {bg = colors.black, fg = colors.darkgrey},
        z = {bg = colors.black, fg = colors.darkgrey},
      },
      replace = {
        a = {bg = colors.black, fg = colors.red, gui = 'bold'},
        b = {bg = colors.black, fg = colors.white},
        c = {bg = colors.black, fg = colors.darkgrey},
        x = {bg = colors.black, fg = colors.darkgrey},
        y = {bg = colors.black, fg = colors.darkgrey},
        z = {bg = colors.black, fg = colors.darkgrey},
      },
      command = {
        a = {bg = colors.black, fg = colors.yellow, gui = 'bold'},
        b = {bg = colors.black, fg = colors.white},
        c = {bg = colors.black, fg = colors.darkgrey},
        x = {bg = colors.black, fg = colors.darkgrey},
        y = {bg = colors.black, fg = colors.darkgrey},
        z = {bg = colors.black, fg = colors.darkgrey},
      },
      inactive = {
        a = {bg = colors.black, fg = colors.grey, gui = 'bold'},
        b = {bg = colors.black, fg = colors.white},
        c = {bg = colors.black, fg = colors.darkgrey},
        x = {bg = colors.black, fg = colors.darkgrey},
        y = {bg = colors.black, fg = colors.darkgrey},
        z = {bg = colors.black, fg = colors.darkgrey},
      }
    },
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_v = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
  },
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand '%:t') ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand '%:p:h'
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

local function ins_left_a(component)
  table.insert(config.sections.lualine_a, component)
end

local function ins_left_b(component)
  table.insert(config.sections.lualine_b, component)
end

local function ins_left_c(component)
  table.insert(config.sections.lualine_c, component)
end

local function ins_right_x(component)
  table.insert(config.sections.lualine_x, component)
end

local function ins_right_y(component)
  table.insert(config.sections.lualine_y, component)
end

local function ins_right_z(component)
  table.insert(config.sections.lualine_z, component)
end

ins_left_a {
  -- mode component
  function()
    local mode = {
        n = 'NORMAL ',
        i = 'INSERT ',
        R = 'REPLACE',
        c = 'COMMAND',
        v = 'VISUAL ',
        V = 'V·LINE ',
        [''] = 'V·BLOCK',
        Rv = 'V·REPLACE',
    }

    return 'λ ' .. mode[vim.fn.mode()]
  end,
  padding = { left = 1, right = 1 },
}

ins_left_b {
  'branch',
  icon = '',
  color = { fg = colors.sage, gui = 'bold' },
  cond = conditions.hide_in_width,
}

ins_left_b {
  'diff',
  symbols = { added = '+', modified = '~', removed = '-' },
  diff_color = {
    added = { fg = colors.aqua },
    modified = { fg = colors.aqua },
    removed = { fg = colors.aqua },
  },
  cond = conditions.hide_in_width,
}

ins_left_b {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.errorRed },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.azure },
  },
}

ins_left_c {
  'filename',
  cond = conditions.buffer_not_empty,
  file_status = false,
}

ins_left_c {
    function()
        if vim.bo.modified then
          return "%3*[+]"
        elseif vim.bo.modifiable == false or vim.bo.readonly == true then
          return "%5*[-]"
        end

        return ""
    end,
}

ins_left_c {
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_right_x {
    'encoding',
    cond = conditions.buffer_not_empty
}

ins_right_x {
    'fileformat',
    icons_enabled = false,
    cond = conditions.buffer_not_empty
}

ins_right_x {
    'filetype',
    cond = conditions.buffer_not_empty
}

ins_right_x {
  -- Lsp server name .
  function()
    local msg = ''
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()

    if next(clients) == nil then
      return msg
    end

    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes

      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end

    return msg
  end,
  icon = ' ',
  color = { fg = colors.steel },
  cond = conditions.hide_in_width
}

ins_right_z {
    function ()
        return '%3l:%-2v %3p%%'
    end,
    icon = '',
}

return config
