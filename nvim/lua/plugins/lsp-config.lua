return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"clangd",
					"basedpyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config.lua_ls = {
				cmd = { "lua-language-server" },
				filetypes = { "lua" },
			}
			vim.lsp.enable("lua_ls")

			vim.lsp.config.bashls = {
				cmd = { "bash-language-server", "start" },
				filetypes = { "bash", "sh" },
			}
			vim.lsp.enable("bashls")

			vim.lsp.config.clangd = {
				cmd = {
					"clangd",
					"-j=" .. 2,
					"--background-index",
					"--clang-tidy",
					"--inlay-hints",
					"--fallback-style=llvm",
					"--all-scopes-completion",
					"--completion-style=detailed",
					"--header-insertion=iwyu",
					"--header-insertion-decorators",
					"--pch-storage=memory",
				},
				filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
				root_markers = {
					"compile_commands.json",
					"compile_flags.txt",
					".git",
				},
			}
			vim.lsp.enable("clangd")

			vim.lsp.config.basedpyright = {
				name = "basedpyright",
				filetypes = { "python" },
				cmd = { "basedpyright-langserver", "--stdio" },
				settings = {
					python = {
						venvPath = vim.fn.expand("~") .. "/.virtualenvs",
					},
					basedpyright = {
						disableOrganizeImports = true,
						analysis = {
							autoSearchPaths = true,
							autoImportCompletions = true,
							useLibraryCodeForTypes = true,
							diagnosticMode = "openFilesOnly",
							typeCheckingMode = "strict",
							inlayHints = {
								variableTypes = true,
								callArgumentNames = true,
								functionReturnTypes = true,
								genericTypes = false,
							},
						},
					},
				},
			}

			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				float = { border = "rounded" },
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
		end,
	},
}
