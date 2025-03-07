return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim

      if not vim.g.neovide then
        local animate = require 'mini.animate'
        require('mini.animate').setup {
          cursor = { enable = false },
          scroll = {
            enable = true,
            timing = animate.gen_timing.linear {
              duration = 50,
              unit = 'total',
            },
          },
        }
      end

      require('mini.indentscope').setup {
        -- symbol = "▏",
        symbol = '│',
        options = { try_as_border = true },
      }

      require('mini.starter').setup()
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
