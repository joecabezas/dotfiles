-- Key mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- General mappings
map('n', '<leader>h', ':History<CR>', opts)
map('n', '<leader>i', ':Rg<CR>', opts)
map('n', '<leader>l', ':Lines<CR>', opts)
map('n', '<leader>o', ':Buffers<CR>', opts)
map('n', '<leader>p', ':FZF<CR>', opts)
map('n', '<leader>s', ':Scratch<CR>', opts)
map('n', '<leader>u', ':Commands<CR>', opts)

-- Resize mappings
map('n', '<leader>7', ':res +2<CR>', opts)       -- increase pane by 2
map('n', '<leader>8', ':res -2<CR>', opts)       -- decrease pane by 2
map('n', '<leader>9', ':vertical res +2<CR>', opts)  -- vertical increase pane by 2
map('n', '<leader>0', ':vertical res -2<CR>', opts)  -- vertical decrease pane by 2

-- vim-test mappings
map('n', '<leader>e', ':wa<CR>:TestFile<CR>', opts)
map('n', '<leader>r', ':wa<CR>:TestNearest<CR>', opts)
map('n', '<leader>t', ':wa<CR>:TestLast<CR>', opts)
map('n', '<leader>a', ':wa<CR>:TestSuite<CR>', opts)
map('n', '<leader>g', ':wa<CR>:TestVisit<CR>', opts)

