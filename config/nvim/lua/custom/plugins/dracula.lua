return {
  'Mofiqul/dracula.nvim',
  enabled = false,

  -- make sure we load this during startup if it is your main colorscheme
  lazy = false,

  -- make sure to load this before all the other start plugins
  priority = 1000,

  config = function()
    local ok, lualine = pcall(require, 'lualine')
    if ok then
      lualine.setup {
        options = {
          theme = 'dracula-nvim',
        },
      }

      vim.cmd [[colorscheme dracula]]
    end
  end,
}
