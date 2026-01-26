return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		cmd = { "Telescope" },

		keys = {
			{ "<C-p>", "<cmd>Telescope find_files<CR>" },
			{ "<leader>fg", "<cmd>Telescope live_grep<CR>" },
			{ "<leader>fb", "<cmd>Telescope buffers<CR>" },
			{ "<leader>hf", "<cmd>Telescope find_files hidden=true no_ignore=true<CR>" },
		},

		config = function()
			require("telescope").setup()
		end,
	},

	-- {
	-- 	"nvim-telescope/telescope-ui-select.nvim",
	-- 	config = function()
	-- 		require("telescope").setup({
	-- 			extension = {
	-- 				["ui-select"] = {
	-- 					require("telescope.themes").get_dropdown({}),
	-- 				},
	-- 			},
	-- 		})
	-- 		require("telescope").load_extension("ui-select")
	-- 	end,
	-- },
}
