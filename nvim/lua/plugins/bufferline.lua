return {
	"akinsho/bufferline.nvim",
	event = "BufAdd",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local bufferline = require("bufferline")
		-- local bg_color = "#080808"

		bufferline.setup({
			-- highlights = {
			-- 	fill = {
			-- 		bg = bg_color,
			-- 	},
			-- 	background = {
			-- 		bg = bg_color,
			-- 	},
			-- 	buffer_selected = {
			-- 		bg = bg_color,
			-- 	},
			-- 	buffer_visible = {
			-- 		bg = bg_color,
			-- 	},
			-- },

			options = {
				diagnostics = "nvim_lsp",
				separator_style = "thin",
				mode = "buffers",
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "center",
					},
				},
			},
		})
	end,
}
