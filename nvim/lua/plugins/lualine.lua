return {
	"nvim-lualine/lualine.nvim",
	-- Moonfly configuration
	-- config = function()
	--     local custom_moonfly = require("lualine.themes.moonfly")
	--     custom_moonfly.normal.c.bg = "#080808"
	--     custom_moonfly.inactive.c.bg = "#080808"
	--
	--     require("lualine").setup({
	--         options = {
	--             theme = custom_moonfly,
	--             disabled_filetypes = { "Lazy", "NvimTree" },
	--         },
	--         sections = {
	--             lualine_a = { "mode" },
	--             lualine_b = {
	--                 { "branch",      color = { bg = "#080808" } },
	--                 { "diff",        color = { bg = "#080808" } },
	--                 { "diagnostics", color = { bg = "#080808" } },
	--             },
	--             lualine_c = {
	--                 { "filename", color = { bg = "#080808" } },
	--             },
	--             lualine_x = {
	--                 { "encoding",   color = { bg = "#080808" } },
	--                 { "fileformat", color = { bg = "#080808" } },
	--                 { "filetype",   color = { bg = "#080808" } },
	--             },
	--             lualine_y = {
	--                 { "progress", color = { bg = "#080808" } },
	--             },
	--             lualine_z = { "location" },
	--         },
	--     })
	-- end,

    -- Onedark configuration
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				disabled_filetypes = {
					statusline = {},
					winbar = {},
					"NvimTree",
					"Lazy",
				},
				ignore_focus = {},
				always_divide_middle = false,
				always_show_tabline = true,
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,

}
