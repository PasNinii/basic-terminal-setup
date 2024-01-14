vim.keymap.set("i", "<C-e>", 'copilot#Accept("<CR>")', {
	expr = true,
	replace_keycodes = false,
})

return {
	"github/copilot.vim",
	event = "VeryLazy",
}
