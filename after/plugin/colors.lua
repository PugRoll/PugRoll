--Create and alias for plug#... as Plug
 local Plug = vim.fn['plug#']


-- require('onedark').setup() {
--     style = 'dark'
-- }
-- require('onedark').load()


vim.call('plug#begin', 'C:\\Users\\premi\\AppData\\Local\\nvim-data\\plugged')
 --Grab the tokyonight theme
Plug ('folke/tokyonight.nvim', {branch = 'main'})
--Grab the oneDark theme
 Plug 'navarasu/onedark.nvim'
vim.call('plug#end')


vim.cmd [[colorscheme onedark]]

