return {
  'coder/claudecode.nvim',
  dependencies = { 'folke/snacks.nvim' },
  config = function()
    require('claudecode').setup()

    require('which-key').add {
      { '<leader>a', group = 'AI/Claude Code' },
      { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
      { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
      { '<leader>ar', '<cmd>ClaudeCode --resume<cr>', desc = 'Resume Claude' },
      { '<leader>aC', '<cmd>ClaudeCode --continue<cr>', desc = 'Continue Claude' },
      { '<leader>am', '<cmd>ClaudeCodeSelectModel<cr>', desc = 'Select Claude model' },
      { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add current buffer' },
      {
        mode = 'v',
        { '<leader>as', '<cmd>ClaudeCodeSend<cr>', desc = 'Send to Claude' },
      },
      { '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', desc = 'Accept diff' },
      { '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', desc = 'Deny diff' },
    }

    -- Set up filetype-specific mapping for oil file browser
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'oil',
      callback = function(event)
        vim.keymap.set('n', '<leader>as', '<cmd>ClaudeCodeTreeAdd<cr>', {
          buffer = event.buf,
          desc = 'Add file to Claude',
        })
      end,
    })
  end,
}
