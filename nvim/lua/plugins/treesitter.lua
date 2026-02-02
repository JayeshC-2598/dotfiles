return {
	"nvim-treesitter/nvim-treesitter",
	event = "BufReadPost",
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
		})

		require("nvim-treesitter").install({ "c", "cpp", "lua", "vim", "vimdoc", "python", "bash", "tmux" })

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "c", "cpp", "python", "lua", "sh", "tmux" },
			callback = function()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
