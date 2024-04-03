local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- vim-test mappings
map('n', '<leader>e', ':wa<CR>:TestFile<CR>', opts)
map('n', '<leader>r', ':wa<CR>:TestNearest<CR>', opts)
map('n', '<leader>t', ':wa<CR>:TestLast<CR>', opts)
map('n', '<leader>a', ':wa<CR>:TestSuite<CR>', opts)
map('n', '<leader>g', ':wa<CR>:TestVisit<CR>', opts)

return{
  'vim-test/vim-test'
}
