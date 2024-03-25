-- Set FZF install path based on the operating system
if vim.loop.os_uname().sysname == 'Darwin' then
    vim.opt.rtp:append('/usr/local/opt/fzf')
else
    vim.o.rtp = vim.o.rtp .. ',~/.fzf'
    vim.opt.rtp:append('~/.fzf')
end

-- Set FZF layout
vim.g.fzf_layou = { down = '60%' }
