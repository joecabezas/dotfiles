-- f*** I love this plugin
return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  keys = {
    { '<leader>j', '<cmd>TSJToggle<cr>', desc = '[J]oin Toggle' },
  },
  opts = {
    use_default_keymaps = false,
  },
}
