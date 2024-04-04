return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    extensions = { 'quickfix' },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {
        {
          'diagnostics',
          sources = { 'nvim_lsp' },
          sections = { 'error', 'warn', 'info', 'hint' },
          -- colored = false,
          -- always_visible = true,
          -- color = { bg = '#000000', gui='italic,bold' },
        },
      },
      lualine_c = {
        {
          'filename',
          symbols = { modified = '', readonly = '󰌾', new = '󰎔' },
        },
      },
      lualine_x = { 'filetype' },
      lualine_y = { 'searchcount' },
      lualine_z = { 'location' },
    },
  },
}
