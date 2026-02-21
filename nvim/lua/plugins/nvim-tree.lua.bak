return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	cmd = {
		"NvimTreeToggle",
	},

	keys = {
		{ "<C-n>", "<cmd>NvimTreeToggle<CR>" },
	},

	config = function()
		-- vim.cmd([[highlight VertSplit guifg=#444444 guibg=#080808]])
		vim.cmd([[highlight NvimTreeWinSeparator guibg=None guifg=bg]])

		require("nvim-tree").setup({
			renderer = {
				indent_width = 1,
			},
			view = {
				width = 30,
			},
			sort = {
				sorter = "case_sensitive",
			},
		})
	end,
}
