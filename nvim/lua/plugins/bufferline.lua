return {
	"akinsho/bufferline.nvim",
	event = "BufAdd",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local bufferline = require("bufferline")

		bufferline.setup({
			options = {
				diagnostics = "nvim_lsp",
				separator_style = "thin",
				mode = "buffers",
                -- offsets = {
                --     filetype = "NvimTree",
                --     text = "File Explorer",
                --     text_align = "center",
                -- }
			},
		})
	end,
}
