local bufferline = require("bufferline")

local config = {
    options = {
        close_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }},
        max_name_length = 18,
        separator_style = "slant",
        show_buffer_icons = true
    }
}

bufferline.setup(config)
