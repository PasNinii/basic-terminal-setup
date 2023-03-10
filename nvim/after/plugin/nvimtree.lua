vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  git = {
    ignore = false,
  }
})

local function open_vim_tree()
  require('nvim-tree.api').tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter"  }, { callback = open_vim_tree })
