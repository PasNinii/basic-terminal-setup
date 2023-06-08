local plugins = {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
    config = function()
      require("custom.configs.fugitive")
    end
  },
}

return plugins
