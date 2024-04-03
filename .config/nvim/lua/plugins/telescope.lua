return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
    },
  },
  keys = {
    { "<leader>p", function() require("telescope.builtin").git_files() end, desc = "Git Files", },
    { "<leader>o", function() require("telescope.builtin").buffers() end, desc = "Buffers", },
    { "<leader>i", function() require("telescope.builtin").live_grep() end, desc = "Live grep", },
  },
  opts = function ()
    local opts = {
      theme = "dropdown",
      layout_strategy = "center",
      layout_config = {
        width = { padding = 5 },
        anchor = 'N',
      },
      -- border = false,
    }
    return {
      pickers = {
        find_files = opts,
        git_files = opts,
        buffers = opts,
        live_grep = opts,
      },
    }
  end,
  -- config = function()
  --   require("telescope").load_extension("fzf")
  -- end,
}
