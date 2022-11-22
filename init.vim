"For all the plugins I might need: Docs:https://github.com/junegunn/vim-plug
call plug#begin() 
"Plug 'folke/tokyonight.nvim', {'branch':'main'}
Plug 'navarasu/onedark.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do' : 'TSUpdate' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.0' }
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdcommenter'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

"ignores case for file names
set ignorecase
set smartcase

"enable syntax highlighting
syntax on

"better colors???
set termguicolors

"Number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

"At 'y and 'p to system clipboard
set clipboard+=unnamedplus

"auto indent
set smartindent

"Number of spaces used for autoindents
set shiftwidth=4

"all line numbers
set number

"highlight matched text pattern when searching
set incsearch
set nohlsearch

"open splits intuitively
set splitbelow
set splitright

"navigate buffers w/o losing unsaved work
set hidden

"start scrolling when 8 lines from top or bottom
set scrolloff=8

"Save undo history"
set undofile

"Different themes:

    "Use TokyoNight theme
    "colorscheme tokyonight

    "Use OneDark theme
    colorscheme onedark

"Enable mouse support
set mouse=a

"Start Telescope"
lua << END
require('telescope').setup()
END

"Start lualine:"
lua << END
require('lualine').setup()
options = {theme = 'onedark' }
END

"Start nvim-tree"
lua << END
require('nvim-tree').setup()
END

"Start nvimTreeSitter"
lua << END
require('nvim-treesitter.configs').setup {
    --Guarantee certain parsers are installed on setup
    ensure_install = {"cpp", "java", "json"},
    --Install parsers synchronously
    sync_install = false,
    --Automatically install missing parsers, best used when "TreeSitter CLI" installed
    auto_install = false,
    
    
    --Enbable highlighting
    hightlight = {
        --`false` will disable lightling for whole extension
        enable = true,

        --We can disable certain parsers for specific languages
        
        additional_vim_regex_highlighting = false,
    },
}
END

