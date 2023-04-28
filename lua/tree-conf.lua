require("nvim-tree").setup({
    --Set the width of the file explorer 
    view = {
        width = 15,
    },
    --allow dotfiles to be rendered
    filters = {
        dotfiles = true,
    }
})
