

function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local keyset = vim.keymap.set

function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

keyset("i", "<Up>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<Up>" : coc#refresh()', opts)
keyset("i", "<Down>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<Down>"]], opts)

keyset("i", "<tab>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<tab>"]], opts)
