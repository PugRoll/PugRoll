require'nvim-treesitter.configs'.setup {
    ensure_installed = {"c", "lua", "vim", "vimdoc", "javascript" },
    sync_install = false,

    highlight = {
        enable = true,
    },
}
