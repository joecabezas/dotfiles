return {
  'jackMort/ChatGPT.nvim',
  event = 'VeryLazy',
  -- enabled = false,
  config = function()
    require('chatgpt').setup {
      openai_params = {
        -- model = "gpt-4-1106-preview",
        max_tokens = 4095,
      },
    }

    require('which-key').add {
      { '<leader>ai', group = '[A]rtificial [I]ntelligence' },
      { '<leader>aic', group = 'ChatGPT' },
      { '<leader>aicc', '<cmd>ChatGPT<CR>', desc = 'ChatGPT' },
      {
        mode = { 'n', 'v' },
        { '<leader>aica', '<cmd>ChatGPTRun add_tests<CR>', desc = 'Add Tests' },
        { '<leader>aicd', '<cmd>ChatGPTRun docstring<CR>', desc = 'Docstring' },
        { '<leader>aice', '<cmd>ChatGPTEditWithInstruction<CR>', desc = 'Edit with instruction' },
        { '<leader>aicf', '<cmd>ChatGPTRun fix_bugs<CR>', desc = 'Fix Bugs' },
        { '<leader>aicg', '<cmd>ChatGPTRun grammar_correction<CR>', desc = 'Grammar Correction' },
        { '<leader>aick', '<cmd>ChatGPTRun keywords<CR>', desc = 'Keywords' },
        { '<leader>aicl', '<cmd>ChatGPTRun code_readability_analysis<CR>', desc = 'Code Readability Analysis' },
        { '<leader>aico', '<cmd>ChatGPTRun optimize_code<CR>', desc = 'Optimize Code' },
        { '<leader>aicr', '<cmd>ChatGPTRun roxygen_edit<CR>', desc = 'Roxygen Edit' },
        { '<leader>aics', '<cmd>ChatGPTRun summarize<CR>', desc = 'Summarize' },
        { '<leader>aict', '<cmd>ChatGPTRun translate<CR>', desc = 'Translate' },
        { '<leader>aicx', '<cmd>ChatGPTRun explain_code<CR>', desc = 'Explain Code' },
      },
    }
  end,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'folke/trouble.nvim', -- optional
    'nvim-telescope/telescope.nvim',
  },
}
