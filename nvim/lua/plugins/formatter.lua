return {
	"mhartington/formatter.nvim",
	config = function()
		local util = require("formatter.util")
		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				lua = { require("formatter.filetypes.lua").stylua },
				python = {
					require("formatter.filetypes.python").isort,
					function()
						return {
							exe = "black",
							args = { "-l", "120", "-q", "-" },
							stdin = true,
						}
					end,
				},
				php = {
					function()
						return {
							exe = "php-cs-fixer",
							args = {
								"fix",
								"--config",
								"./app/.php-cs-fixer.dist.php",
							},
							stdin = false,
							ignore_exitcode = true,
						}
					end,
				},
				typescript = {
					function()
						return {
							exe = "dprint",
							args = { "fmt", "--stdin", util.escape_path(util.get_current_buffer_file_path()) },
							stdin = true,
						}
					end,
				},
				markdown = {
					require("formatter.filetypes.markdown").prettier,
				},
				json = {
					function()
						return {
							exe = "dprint",
							args = { "fmt", "--stdin", util.escape_path(util.get_current_buffer_file_path()) },
							stdin = true,
						}
					end,
				},
				css = {
					require("formatter.filetypes.css").prettier,
				},
				html = {
					require("formatter.filetypes.html").prettier,
				},
				yaml = {
					require("formatter.filetypes.yaml").prettier,
				},
				sh = {
					require("formatter.filetypes.sh").shfmt,
				},
				["*"] = {
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			},
		})

		vim.cmd([[
      augroup FormatAutogroup
      autocmd!
      autocmd BufWritePost * FormatWrite
      augroup END
    ]])
	end,
}
