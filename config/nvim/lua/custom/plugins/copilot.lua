return {
  'github/copilot.vim',
  enabled = true,
  config = function()
    require('which-key').add {
      { '<leader>aie', '<cmd>Copilot enable<CR>', desc = '🟢 Enable Copilot' },
      { '<leader>aid', '<cmd>Copilot disable<CR>', desc = '🔴 Disable Copilot' },
    }
  end,
}
