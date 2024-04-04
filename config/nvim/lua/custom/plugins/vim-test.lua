return {
  'vim-test/vim-test',
  dependencies = {
    'folke/which-key.nvim',
    config = function()
      require('which-key').register({
        t = {
          name = 'Vim Test',
          e = { '<cmd>:wa<cr>:TestFile<cr>', 'Test File' },
          r = { '<cmd>:wa<cr>:TestNearest<cr>', 'Test Nearest' },
          t = { '<cmd>:wa<cr>:TestLast<cr>', 'Test Last' },
          a = { '<cmd>:wa<cr>:TestSuite<cr>', 'Test Suite' },
          g = { '<cmd>:wa<cr>:TestVisit<cr>', 'Test Visit' },
        },
      }, { prefix = '<leader>' })
    end,
  },
}
