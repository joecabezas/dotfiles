-- f*** I love this plugin
return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  keys = {
    {
      '<leader>j',
      function()
        require('treesj').toggle()
      end,
      desc = '[J]oin Toggle',
    },
    {
      '<leader>J',
      function()
        require('treesj').toggle { split = { recursive = true } }
      end,
      desc = '[J]oin Toggle Recursively',
    },
  },
  opts = {
    use_default_keymaps = false,
    max_join_length = 3000,
  },
}
