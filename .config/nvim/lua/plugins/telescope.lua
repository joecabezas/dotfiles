return {
    'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }
  },
  keys = {
    { '<leader>p', function() require('telescope.builtin').find_files() end, desc="Git Files"},
    { '<leader>o', function() require('telescope.builtin').buffers() end, desc="Git Files"},
    { '<leader>i', function() require('telescope.builtin').live_grep() end, desc="Git Files"},
  },
  config = function()
    require('telescope').setup({})
    require('telescope').load_extension('fzf')
  end
}
