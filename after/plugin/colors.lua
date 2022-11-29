require('onedark').setup {
	style = 'dark',
    --Change code style
    --Options: italic, bold, underline, and none
    code_style = {
        comments = 'none',
        keywords = 'none',
        functions = 'none',
        variables = 'none',
        strings = 'none',
    },
    --Lualine options
    lualine = {
        transparent = false,
    },

    --Plugins config
    diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
    },
}

require('nvim-tundra').setup({
    transparent_background = false,
    dim_inactive_windows = {
        enabled = false,
        color = nil,
    },
})
require('onedark').load()

--vim.opt.background = 'dark'
--vim.cmd('colorscheme tundra')
