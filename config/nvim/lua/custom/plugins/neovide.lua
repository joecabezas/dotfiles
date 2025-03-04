if vim.g.neovide then
  vim.keymap.set('v', '<D-c>', '"+y')
  vim.keymap.set('v', '<D-x>', '"+c')
  vim.keymap.set('', '<D-v>', '"+p')
  vim.keymap.set('c', '<D-v>', '<C-r><C-o>+')
  vim.keymap.set('i', '<D-v>', '<C-r><C-o>+')

  vim.o.guifont = 'JetBrainsMono Nerd Font'
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_text_gamma = 0.1
  vim.g.neovide_text_contrast = 0.0

  vim.g.neovide_padding_top = 30
  vim.g.neovide_padding_bottom = 30
  vim.g.neovide_padding_right = 20
  vim.g.neovide_padding_left = 20

  vim.g.neovide_show_border = false
  vim.g.neovide_refresh_rate = 120
end

return {}
