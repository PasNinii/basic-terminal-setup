vim.g.copilot_assume_mapped = true
vim.opt.guicursor = ""
vim.opt.relativenumber = true
vim.opt.scrolloff = 8

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
