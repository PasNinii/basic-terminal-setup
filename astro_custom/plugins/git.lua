return {
	{
		"lewis6991/gitsigns.nvim",
		opts = function(_, opts)
			opts.current_line_blame = true
			return opts
		end,
	},
	-- {
	-- 	"pwntester/octo.nvim",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-telescope/telescope.nvim",
	-- 		"nvim-tree/nvim-web-devicons",
	-- 	},
	-- 	config = function()
	-- 		require("octo").setup({ enable_builtin = true })
	-- 		vim.cmd([[hi OctoEditable guibg=none]])
	-- 	end,
	-- 	keys = {
	-- 		{ "<leader>O", "<cmd>Octo<cr>", desc = "Octo" },
	-- 	},
	-- },
}
