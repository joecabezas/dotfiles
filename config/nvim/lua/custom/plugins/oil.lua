return {
  {
    'stevearc/oil.nvim',
    -- enabled = false,
    dependencies = {
      'echasnovski/mini.icons',
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      { '-', '<cmd>Oil --float<cr>', desc = 'Open parent directory (float)' },
      { '<leader>-', '<cmd>Oil<cr>', desc = 'Open parent directory' },
    },
    opts = {
      columns = {
        'icon',
        'permissions',
        'size',
        'mtime',
      },
      view_options = {
        show_hidden = true,
      },
    },
    config = function()
      local detail = false
      require('oil').setup {
        keymaps = {
          ['gd'] = {
            desc = 'Toggle file detail view',
            callback = function()
              detail = not detail
              if detail then
                require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
              else
                require('oil').set_columns { 'icon' }
              end
            end,
          },
        },
        win_options = {
          signcolumn = 'yes:2',
        },
      }
    end,
  },
  {
    'refractalize/oil-git-status.nvim',
    dependencies = { 'stevearc/oil.nvim' },
    config = true,
  },
}
