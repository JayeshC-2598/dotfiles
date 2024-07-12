return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local bufferline = require("bufferline")
    local bg_color = "#080808"
    bufferline.setup({
      highlights = {
        fill = {
          bg = bg_color,
        },
        background = {
          bg = bg_color,
        },
        buffer_selected = {
          bg = bg_color,
        },
        buffer_visible = {
          bg = bg_color,
        },
      },
      options = {
        diagnostics = "nvim_lsp",
        mode = "buffers",
        separator_style = "thick",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center",
            separator = true,
          },
        },
      },
    })
  end,
}
