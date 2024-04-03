local map = vim.keymap.set
local opts = { noremap = true, silent = true }

--map("n", "<leader>p", "<cmd>lua require('fzf-lua').files()<CR>", opts)
-- map("n", "<leader>o", "<cmd>lua require('fzf-lua').buffers()<CR>", opts)
-- map("n", "<leader>h", "<cmd>lua require('fzf-lua').oldfiles()<CR>", opts)
-- map("n", "<leader>c", "<cmd>lua require('fzf-lua').quickfix()<CR>", opts)
-- map("n", "<leader>l", "<cmd>lua require('fzf-lua').blines()<CR>", opts)
-- map("n", "<leader>i", "<cmd>lua require('fzf-lua').grep()<CR>", opts)

return {
  "ibhagwan/fzf-lua",
  enabled = false,
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({
      winopts    = {
        width   = 0.8,
        height  = 0.9,
      },
    })
  end
}
