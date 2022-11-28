local M = {}

--Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function bind(op, outer_ops)
    outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
            )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.nmap = bind("n", {noremap = false})
M.nnoremap = bind("n")
M.vnoreamp = bind("v")
M.xnoremap = bind("x")
M.inoremap = bind("i")

--Set up autocomplete for CoC
--vim.keymap.set(
--    'i',
--    '<CR>',
--    function()
--        if vim.fn['coc#pum#visible']() == 1 then
--            --coc Pop up menu
--            vim.fin['coc#pum#confirm']()
--        else
--            --co pop up is not open
--            return "<CR>"
--        end
--    end,
--    {expr = true}
--)

return M
