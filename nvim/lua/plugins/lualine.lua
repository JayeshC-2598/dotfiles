return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local custom_moonfly = require("lualine.themes.moonfly")
		custom_moonfly.normal.c.bg = "#080808"
		custom_moonfly.inactive.c.bg = "#080808"

		require("lualine").setup({
			options = {
				theme = custom_moonfly,
				disabled_filetypes = { "Lazy", "NvimTree" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{ "branch", color = { bg = "#080808" } },
					{ "diff", color = { bg = "#080808" } },
					{ "diagnostics", color = { bg = "#080808" } },
				},
				lualine_c = {
					{ "filename", color = { bg = "#080808" } },
				},
				lualine_x = {
					{ "encoding", color = { bg = "#080808" } },
					{ "fileformat", color = { bg = "#080808" } },
					{ "filetype", color = { bg = "#080808" } },
				},
				lualine_y = {
					{ "progress", color = { bg = "#080808" } },
				},
				lualine_z = { "location" },
			},
		})
	end,
}
