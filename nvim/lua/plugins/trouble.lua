return {
	"folke/trouble.nvim",
	opts = {},
	cmd = "Trouble",
	keys = {
		{
			"<leader>tr",
			"<cmd>Trouble diagnostics toggle focus=true<cr>",
			desc = "Diagnostics (Trouble)",
		},
	},

	config = function()
        require("trouble").setup()

		vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "#1a212e" })
		vim.api.nvim_set_hl(0, "TroubleNormalNC", { bg = "#1a212e" })
	end,
}
