return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua Formatting
				null_ls.builtins.formatting.stylua,

				-- JavaScript and TypeScript Linting and Formatting
				null_ls.builtins.formatting.prettierd.with({
					bin = "prettierd",
					extra_args = { "--tab-width", "4", "--use-tabs", "false" },
					filetypes = {
						"javascript",
						"javascriptreact",
						"typescript",
						"typescriptreact",
						"css",
						"json",
						"scss",
						"less",
						"html",
					},
				}),
				require("none-ls.diagnostics.eslint_d"),

				-- Python Linting and Formatting
				null_ls.builtins.formatting.black,
				require("none-ls.diagnostics.ruff"),

                -- Shell Linting and Formatting
                null_ls.builtins.formatting.shfmt,
			},
		})

		vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
	end,
}
