"For all the plugins I might need: Docs:https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'folke/tokyonight.nvim', {'branch':'main'}
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
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'phaazon/hop.nvim'
Plug 'raimondi/delimitmate'
Plug 'liuchengxu/vista.vim'
"Plug 'akinsho/bufferline.nvim', {'tag': 'v3.*'}
Plug 'nvim-tree/nvim-web-devicons'
"Plug 'Yggdroot/LeaderF', {'do' : ':LeaderfInstallCExtension'}
call plug#end()

"augroup packer_auto_compile
""    autocmd!
""    autocmd BufWritePost */nvim/lua/plugins.lua source <afile> | packer_auto_compile
"augroup END

lua require("stuffs")
"colorscheme onedark
"ignores case for file names
set ignorecase
set smartcase


"At 'y and 'p to system clipboard
"set clipboard+=unnamedplus

"remap autocomplete key
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB> "


"Enable mouse support
set mouse=a

let g:lsc_server_commands = {'java': 'java_language_server'}

"functions
fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup YOUR_MOM
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END


"Start Telescope"
lua << END
require('telescope').setup()
END

"Start lspConfig"
lua << END
require('lspconfig')['java_language_server'].setup{
     on_attach = on_attach,
     flags = lsp_flags,
     cmd = {'C:\\Users\\premi\\AppData\\Local\\nvim-data\\link_windows.sh'},
}
END

"lua require('plugins')"

"Start mason.nvim"
lua << END
require('mason').setup()
require("mason-lspconfig").setup()
END

"Start hop.nvim"
lua << END
require'hop'.setup()
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

