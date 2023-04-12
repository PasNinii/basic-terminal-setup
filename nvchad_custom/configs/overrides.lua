local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "comment",
    "css",
    "dockerfile",
    "dot",
    "html",
    "javascript",
    "jsdoc",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "php",
    "phpdoc",
    "python",
    "scss",
    "sql",
    "typescript",
    "tsx",
    "yaml",
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
    "css-lsp",
    "html-lsp",
    "angular-language-server",
    "typescript-language-server",
    "prettier",
    "intelephense",
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
