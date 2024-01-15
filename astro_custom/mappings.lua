return {
	v = {
		["J"] = { ":m '>+1<CR>gv=gv" },
		["K"] = { ":m '<-2<CR>gv=gv" },
		["n"] = { "nzzzv" },
		["N"] = { "Nzzzv" },
	},
	n = {
		["<C-j>"] = { "<cmd>cnext<CR>zz" },
		["<C-k>"] = { "<cmd>cprev<CR>zz" },
	},
}
