return {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    opts = {},
    config = function()
        require("no-neck-pain").setup({
            width = 80,
            mappings = {
                enabled = true,
                toggle = "<Leader>zn",
                toggleLeftSide = "<Leader>zql",
                toggleRightSide = "<Leader>zqr",
                widthUp = "<Leader>z=",
                widthDown = "<Leader>z-",
                scratchPad = "<Leader>zs",
            },
            buffers = {
                wo = {
                    fillchars = "eob: ",
                },
            },
        })
    end,
}
