-- Key mappings
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- General mappings
map('n', '<leader>H', ':History<CR>', opts)
map('n', '<leader>I', ':Rg<CR>', opts)
map('n', '<leader>L', ':Lines<CR>', opts)
map('n', '<leader>O', ':Buffers<CR>', opts)
map('n', '<leader>P', ':FZF<CR>', opts)
map('n', '<leader>u', ':Commands<CR>', opts)

-- Resize mappings
map('n', '<leader>7', ':res +2<CR>', opts)       -- increase pane by 2
map('n', '<leader>8', ':res -2<CR>', opts)       -- decrease pane by 2
map('n', '<leader>9', ':vertical res +2<CR>', opts)  -- vertical increase pane by 2
map('n', '<leader>0', ':vertical res -2<CR>', opts)  -- vertical decrease pane by 2
