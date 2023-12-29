local M = {}

M.general = {
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    ["<leader>y"] = { "[[\"+y]]" },
  },
  n = {
    ["<leader>y"] = { "[[\"+y]]" },
    ["<leader>Y"] = { "[[\"+Y]]" },
  },
  i = {
    ["<C-c>"] = { "<Esc>" },
  }
}

return M
