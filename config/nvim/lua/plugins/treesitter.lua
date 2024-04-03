return {
  'nvim-treesitter/nvim-treesitter',
  tag = 'v0.9.2',
  dependencies = {
    --'JoosepAlviste/nvim-ts-context-commentstring',
    -- shows treesitter context in end of parenthesis
    --'haringsrob/nvim_context_vt',
    --'RRethy/nvim-treesitter-textsubjects',
    --'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = function()
    local treesitter = require('nvim-treesitter.configs')

    treesitter.setup({
      ensure_installed = {
        'bash',
        'c',
        'css',
        'diff',
        'dockerfile',
        'graphql',
        'html',
        'javascript',
        'jsdoc',
        'json',
        'jsonc',
        'lua',
        'luadoc',
        'luap',
        'markdown',
        'markdown_inline',
        'python',
        'query',
        'regex',
        'ruby',
        'scss',
        'toml',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'xml',
        'yaml',
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      matchup = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<CR>',
          scope_incremental = '<CR>',
          node_incremental = '<TAB>',
          node_decremental = '<S-TAB>',
        },
      },
    })
  end,
  build = function()
    vim.cmd([[TSUpdate]])
  end,
}
