return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = false,
				},
			},
		})
		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {})
	end,
}
