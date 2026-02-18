return {
	"lukas-reineke/indent-blankline.nvim",
	event = "BufReadPre",
	main = "ibl",
	opts = {},

	config = function()
		local hooks = require("ibl.hooks")

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "IblIndent", { fg = "#2e3440" })
			vim.api.nvim_set_hl(0, "IblScope", { fg = "#2e3440" })
		end)

		require("ibl").setup({
			indent = { highlight = "IblIndent" },
			scope = {
				enabled = true,
				highlight = "IblScope",
			},
		})
	end,
}
