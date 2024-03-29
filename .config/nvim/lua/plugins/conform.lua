local js_formatters = { { 'prettierd', 'prettier' } }

return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({
          async = true,
          lsp_fallback = true
        })
      end,
      desc = 'Format buffer',
    },
  },
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      javascript = js_formatters,
      javascriptreact = js_formatters,
      lua = { 'stylua' },
      typescript = js_formatters,
      typescriptreact = js_formatters,
      json = js_formatters,
      graphql = js_formatters,
    },
    -- Set up format-on-save
    -- format_on_save = { timeout_ms = 500, lsp_fallback = true },
  },
}
