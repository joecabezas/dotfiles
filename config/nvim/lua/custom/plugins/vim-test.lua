-- Load work-specific local configuration if it exists
pcall(require, 'custom.plugins.vim-test.local')

return {
  'vim-test/vim-test',
  dependencies = {
    'folke/which-key.nvim',
    config = function()
      require('which-key').add {
        { '<leader>t', group = 'Vim Test' },
        { '<leader>ta', '<cmd>:wa<cr>:TestSuite<cr>', desc = 'Test Suite' },
        { '<leader>te', '<cmd>:wa<cr>:TestFile<cr>', desc = 'Test File' },
        { '<leader>tg', '<cmd>:wa<cr>:TestVisit<cr>', desc = 'Test Visit' },
        { '<leader>tr', '<cmd>:wa<cr>:TestNearest<cr>', desc = 'Test Nearest' },
        { '<leader>tt', '<cmd>:wa<cr>:TestLast<cr>', desc = 'Test Last' },
      }
    end,
  },
}
