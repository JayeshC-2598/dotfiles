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

				-- Python Linting and Formatting
                require("none-ls.formatting.ruff"),
				require("none-ls.diagnostics.ruff"),

				-- Shell Linting and Formatting
				null_ls.builtins.formatting.shfmt,

				-- C and C++ Formatting
				null_ls.builtins.formatting.clang_format.with({
					filetypes = { "c", "cpp", "h", "hpp" },
				}),
				-- require("none-ls.diagnostics.cpplint"),
			},
		})

		vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
	end,
}
