return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			custom_highlights = function()
				return { Comment = { fg = "#d4922F" } }
			end,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
