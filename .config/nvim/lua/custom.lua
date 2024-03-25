-- Set color scheme to Dracula
vim.cmd('colorscheme catppuccin')

-- Autocenter after search
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', 'n', 'nzz', opts)
vim.api.nvim_set_keymap('n', 'N', 'Nzz', opts)

-- Command abbreviations
vim.cmd [[
    command W w
    command Q q
    command WA wa
    command Wa wa
    command WQ wq
    command Wq wq
]]

-- Disable auto-formatting
vim.api.nvim_exec('autocmd FileType * setlocal formatoptions-=cro', false)

-- Define options table
local options = {
    -- Disable vi compatibility mode
    compatible = false,
    -- Ignore case in search patterns
    ignorecase = true,
    -- Use smart case in search patterns
    smartcase = true,
    -- Show matching braces when cursor is over them
    showmatch = true,
    -- Always show the mode
    showmode = true,
    -- Display incomplete commands
    showcmd = true,
    -- Do incremental searching (as you type)
    incsearch = true,
    -- Highlight the latest search pattern
    hlsearch = true,
    -- Always show a status line
    laststatus = 2,
    -- Highlight current line
    cursorline = true,
    -- Split windows below
    splitbelow = true,
    -- Split windows to the right
    splitright = true,
    -- Enable true color support
    termguicolors = true,
    -- Use spaces instead of tabs
    expandtab = true,
    -- Number of spaces for each indentation level
    shiftwidth = 2,
    -- Command-line completion mode (convert Vim list to Lua list)
    wildmode = {'list', 'longest', 'full'},
    -- Show completion matches in a popup menu
    wildmenu = true,
    -- Visual representation of tabs and trailing spaces
    listchars = {
        tab = '»\\ ',
        extends = '›',
        precedes = '‹',
        nbsp = '·',
        trail = '·'
    },
    -- Show list characters
    list = true,
    -- Configure backspace behavior (convert Vim list to Lua list)
    backspace = {'indent', 'eol', 'start'},
    -- Use system clipboard
    clipboard = 'unnamed',
    -- Use indent-based folding
    foldmethod = 'indent',
    -- Minimum number of lines to trigger folding
    foldminlines = 2,
    -- Disable folding by default
    foldenable = false,
    -- Enable auto indentation
    autoindent = true,
    -- Faster redrawing in terminal
    ttyfast = true
}

-- Apply options
for option, value in pairs(options) do
  vim.opt[option] = value
end

