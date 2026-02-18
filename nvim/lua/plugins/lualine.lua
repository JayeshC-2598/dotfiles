return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				disabled_filetypes = {
					statusline = {},
					winbar = {
						"NvimTree",
					},
					"Lazy",
				},
				ignore_focus = {},
				always_divide_middle = false,
				always_show_tabline = false,
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "fileformat", "filetype" },
				lualine_y = {
					function()
						local reg = vim.fn.reg_recording()
						if reg == "" then
							return ""
						end
						return "recording @" .. reg
					end,
				},
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {
					function()
						local reg = vim.fn.reg_recording()
						if reg == "" then
							return ""
						end
						return "recording @" .. reg
					end,
				},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
