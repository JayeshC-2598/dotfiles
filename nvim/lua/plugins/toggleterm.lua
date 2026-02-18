return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		cmd = {
			"ToggleTerm",
		},
		keys = {
			{
				"<leader>tt",
				function()
					local codecompanion_is_visible = false

					for _, win_id in ipairs(vim.api.nvim_list_wins()) do
						local buf_id = vim.api.nvim_win_get_buf(win_id)
						local buf_name = vim.api.nvim_buf_get_name(buf_id)
						if string.find(buf_name, "CodeCompanion", 1, true) then
							codecompanion_is_visible = true
							break
						end
					end

					if codecompanion_is_visible then
						vim.cmd("ToggleTerm direction=horizontal size=10")
					else
						vim.cmd("ToggleTerm direction=vertical size=45")
					end
				end,
				desc = "Toggle Terminal (smart)",
			},
		},

		config = function()
			require("toggleterm").setup({
				shell = vim.o.shell,
				hide_numbers = true,
				shade_filetypes = {},
				shade_terminals = true,
				shading_factor = 2,
				start_in_insert = true,
				insert_mappings = true,
				terminal_mappings = true,
				persist_size = true,
			})
		end,
	},
}
