return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		cmd = {
			"ToggleTerm",
		},
		keys = {
			{ "<leader>th", "<cmd>ToggleTerm direction=horizontal size=10<CR>" },
			{ "<leader>tv", "<cmd>ToggleTerm direction=vertical size=45<CR>" },
		},
		config = function()
			require("toggleterm").setup({
				shell = vim.o.shell,
				-- open_mapping = [[<leader>tt]],
				hide_numbers = true,
				shade_filetypes = {},
				shade_terminals = true,
				shading_factor = 2,
				start_in_insert = true,
				insert_mappings = true,
				terminal_mappings = true,
				persist_size = true,
				-- direction = "vertical",
				-- size = vim.o.columns * 0.40,
				-- direction = "float",
				-- float_opts = {
				-- 	width = 80,
				-- 	height = 20,
				-- 	border = "curved",
				-- },
				-- highlights = {
				-- 	Normal = {
				-- 		guibg = "#080808", -- Background color of the terminal
				-- 	},
				-- 	NormalFloat = {
				-- 		link = "Normal", -- Inherit background from Normal
				-- 	},
				-- 	FloatBorder = {
				-- 		guifg = "#444444",
				-- 		guibg = "#080808",
				-- 	},
				-- },
			})
		end,
	},
}
