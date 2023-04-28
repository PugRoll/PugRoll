require'hop'.setup { keys = 'asdfghjklqwertyuiopzxcvbnm;', term_seq_bias = 0.5 }

--vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1()<cr>", {})

--vim.api.nvim_set_keymap('n', 't', "<cmd>HopPattern<CR>", {noremap = true})



local hop = require('hop')
local directions = require('hop.hint').HintDirection

vim.keymap.set('', 'f', function()
    hop.hint_char1({direction = directions.AFTER_CURSOR, current_line_only = true})
end, {remap = true})

vim.keymap.set('', 'F', function()
    hop.hint_char1({direction = directions.BEFORE_CURSOR, current_line_only = true})
end, {remap = true})

vim.keymap.set('', 't', function()
    hop.hint_char1({direction = directions.AFTER_CURSOR, current_line_only =  true, hint_offset = -1})
end, {remap = true})

vim.keymap.set('', 'T', function()
    hop.hint_char1({direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1})
end, {remap = true})
