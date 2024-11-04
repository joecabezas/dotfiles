if vim.g.neovide then
  vim.keymap.set('v', '<D-c>', '"+y')
  vim.keymap.set('v', '<D-x>', '"+c')
  vim.keymap.set('', '<D-v>', '"+p')
  vim.keymap.set('c', '<D-v>', '<C-r><C-o>+')
  vim.keymap.set('i', '<D-v>', '<C-r><C-o>+')

  vim.o.guifont = 'JetBrainsMonoNL Nerd Font Mono'
  vim.g.neovide_scale_factor = 1.0

  vim.g.neovide_padding_top = 80
  vim.g.neovide_padding_bottom = 80
  vim.g.neovide_padding_right = 60
  vim.g.neovide_padding_left = 60

  vim.g.neovide_show_border = false
  vim.g.neovide_refresh_rate = 120
end

return {}
