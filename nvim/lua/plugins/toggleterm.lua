return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<leader>tt]],
                hide_numbers = true,
                shade_filetypes = {},
                shade_terminals = true,
                shading_factor = 2,
                start_in_insert = true,
                insert_mappings = true,
                terminal_mappings = true,
                persist_size = true,
                direction = "float",
                float_opts = {
                    width = 80,
                    height = 20,
                    border = "curved",
                },
                highlights = {
                    Normal = {
                        guibg = "#080808", -- Background color of the terminal
                    },
                    NormalFloat = {
                        link = "Normal", -- Inherit background from Normal
                    },
                    FloatBorder = {
                        guifg = "#444444",
                        guibg = "#080808",
                    },
                },
            })
        end,
    },
}
