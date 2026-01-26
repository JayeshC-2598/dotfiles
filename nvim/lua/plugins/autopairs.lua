return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({
				check_ts = true, -- Enable treesitter integration
				fast_wrap = {
					map = "<M-e>", -- Keybinding for fast wrapping
					chars = { "{", "[", "(", '"', "'" },
					pattern = [=[[%'%"%>%]%)%}%,]]=],
					offset = 0, -- Offset from pattern match
					end_key = "$",
					keys = "qwertyuiopzxcvbnmasdfghjkl",
					check_comma = true,
					highlight = "PmenuSel",
					highlight_grey = "LineNr",
				},
			})
		end,
	},
	-- {
	-- 	"windwp/nvim-ts-autotag",
	-- 	dependencies = { "nvim-treesitter/nvim-treesitter" }, -- Ensure Treesitter is installed
	-- 	config = function()
	-- 		require("nvim-treesitter.configs").setup({
	-- 			autotag = {
	-- 				enable = true, -- Enable autotagging
	-- 				filetypes = {
	-- 					"html",
	-- 					"xml",
	-- 					"javascript",
	-- 					"typescript",
	-- 					"javascriptreact",
	-- 					"typescriptreact",
	-- 					"svelte",
	-- 					"vue",
	-- 					"tsx",
	-- 				},
	-- 			},
	-- 		})
	-- 	end,
	-- },
}
