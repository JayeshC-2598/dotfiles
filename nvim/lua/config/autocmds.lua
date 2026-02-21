vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("HighlightOnYank", {
		clear = true,
	}),
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 200,
		})
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	group = vim.api.nvim_create_augroup("RemoveTrailingWhitespace", {
		clear = true,
	}),
	callback = function()
		local view = vim.fn.winsaveview()
		vim.cmd([[silent! %s/\s\+$//e]])
		vim.fn.winrestview(view)
	end,
	pattern = { "*" },
})
