-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>d', vim.diagnostic.open_float, { desc = 'Open diagnostic float'})
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic'})
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {desc = 'Go to next diagnostic'})
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, { desc = 'Set loclist' })

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}), callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = function(desc)
      return {
        buffer = ev.buf,
        desc = desc == nil and "" or desc
      }
    end

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts('Go to declaration'))
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts('Go to definition'))
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts('Hover'))
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts('Go to implementation'))
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts('Signature help'))
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts('Add workspace folder'))
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts('Remove workspace folder'))
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts('List workspace folders'))
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts('Type definition'))
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts('Rename'))
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts('Code actions'))
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts('References'))
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts('Format :3'))
  end,
})

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = {
        "lua_ls",
        "ruby_ls",
        "sorbet",
        --"rubocop",
      },
    }

    local lspconfig = require('lspconfig');

    --lspconfig['lua_ls'].setup({})
    --lspconfig['rubocop'].setup({})
    lspconfig['ruby_ls'].setup({})
    lspconfig['sorbet'].setup({})
    lspconfig['tsserver'].setup({})

  end,
}
