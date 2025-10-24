return {
  'folke/persistence.nvim',
  -- this will only start session saving when an actual file was opened
  event = 'BufReadPre',
  opts = {},
  keys = {
    {
      '<leader>pS',
      function()
        require('persistence').load()
      end,
      desc = 'load the session for the current directory',
    },
    {
      '<leader>ps',
      function()
        require('persistence').select()
      end,
      desc = 'select a session to load',
    },
    {
      '<leader>pl',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'load the last session',
    },
    {
      '<leader>pd',
      function()
        require('persistence').stop()
      end,
      desc = "stop persistence, session won't be saved on exit",
    },
  },
}
