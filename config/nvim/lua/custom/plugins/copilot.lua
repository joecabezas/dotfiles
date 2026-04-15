return {
  'github/copilot.vim',
  enabled = true,
  config = function()
    require('which-key').add {
      { '<leader>ait', '<cmd>Copilot toggle<CR>', desc = 'Toggle Copilot' },
    }
  end,
}
