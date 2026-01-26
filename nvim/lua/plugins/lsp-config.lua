return {
    {
        "williamboman/mason.nvim",
        cmd = {
            "Mason",
            "MasonInstall",
            "MasonUpdate",
        },
        config = true,
        -- config = function()
        -- 	require("mason").setup()
        -- end,
    },
    {
        "williamboman/mason-lspconfig.nvim",

        event = { "BufReadPre", "BufNewFile" },
        dependencies = { "williamboman/mason.nvim" },

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

        event = { "BufReadPre", "BufNewFile" },
        dependencies = { "williamboman/mason-lspconfig.nvim" },

        config = function()
            -- lua_ls
            vim.lsp.config.lua_ls = {
                cmd = { "lua-language-server" },
                filetypes = { "lua" },
            }
            vim.lsp.enable("lua_ls")

            -- bashls
            vim.lsp.config.bashls = {
                cmd = { "bash-language-server", "start" },
                filetypes = { "bash", "sh" },
            }
            vim.lsp.enable("bashls")

            -- clangd
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

            -- basedpyright
            vim.lsp.config.basedpyright = {
                name = "basedpyright",
                filetypes = { "python" },
                cmd = { "basedpyright-langserver", "--stdio" },
                settings = {
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
            vim.lsp.enable("basedpyright")

            -- diagnostics
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                float = { border = "rounded" },
            })

            -- keymaps
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
        end,
    },
}
