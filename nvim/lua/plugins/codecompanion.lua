return {
	"olimorris/codecompanion.nvim",
	version = "^18.0.0",
	cmd = {
		"CodeCompanion",
		"CodeCompanionChat",
		"CodeCompanionActions",
	},

	keys = {
		{
			"<leader>cc",
			"<cmd>CodeCompanionChat Toggle<cr>",
			mode = { "n", "v" },
			desc = "Toggle CodeCompanion Chat",
		},
		{
			"<leader>ca",
			"<cmd>CodeCompanionActions<cr>",
			mode = { "n", "v" },
			desc = "CodeCompanion Actions",
		},
	},

	config = function()
		require("codecompanion").setup({
			strategies = {
				chat = {
					adapter = "gemini",
				},
			},

			adapters = {
				http = {
					gemini = function()
						return require("codecompanion.adapters").extend("gemini", {
							schema = {
								model = {
									default = "gemini-2.5-flash",
								},
							},
							env = {
								api_key = "your_api_key",
							},
						})
					end,
				},
			},

			display = {
				chat = {
					window = {
						layout = "vertical",
						width = 0.45,
						position = "right",
					},
				},
			},
		})
	end,
}
