local M = {}

M.treesitter = {
  ensure_installed = {
    "css",
    "html",
    "javascript",
    "lua",
    "php",
    "python",
    "scss",
    "typescript",
  },
  indent = {
    enable = true,
    disable = {
      "python"
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "angular-language-server",
    "css-lsp",
    "html-lsp",
    "intelephense",
    "prettier",
    "typescript-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
