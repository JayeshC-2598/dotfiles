return {
	"nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim"
  },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
        -- Lua Formatting
				null_ls.builtins.formatting.stylua,

        -- JavaScript and TypeScript Linting and Formatting
        null_ls.builtins.formatting.prettier,
			  require("none-ls.diagnostics.eslint_d"),
   			},
		})

		vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
	end,
}
