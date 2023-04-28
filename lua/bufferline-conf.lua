vim.opt.termguicolors = true

require("bufferline").setup{
	options = {
		hover = {
			enabled = true,
			delay = true,
			reveal = {'close'},
		}
	}
}
