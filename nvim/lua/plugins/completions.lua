return {
	{
		"hrsh7th/cmp-nvim-lsp",
		event = "InsertEnter",
	},
	{
		"L3MON4D3/LuaSnip",
		event = "InsertEnter",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		-- config = function()
		--     local luasnip = require("luasnip")
		--     require("luasnip.loaders.from_vscode").lazy_load()
		--
		--     -- Extend file types to include HTML snippets for JSX/TSX
		--     luasnip.filetype_extend("javascriptreact", { "html" })
		--     luasnip.filetype_extend("typescriptreact", { "html" })
		-- end,
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = {
						border = "rounded",
						winhighlight = "Normal:CmpCompletionBg,FloatBorder:CmpBorder",
					},
					documentation = {
						border = "rounded",
						winhighlight = "Normal:CmpCompletionBg,FloatBorder:CmpBorder",
					},
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-a>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<C-j>"] = cmp.mapping.select_next_item(),
					["<C-k>"] = cmp.mapping.select_prev_item(),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
				}),
			})

			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
}
