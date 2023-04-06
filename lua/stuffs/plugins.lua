return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    --Telescope plugins
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    --lua line
    use ({
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    })
    --vim-be-good
    use 'ThePrimeagen/vim-be-good'

    --tressitter
    use("nvim-treesitter/nvim-treesitter", {
        run = "TSUpdate"
    })

    --nvim-tree
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = "nvim-tree/nvim-web-devicons",
        tag = 'nightly'
    }

    --lspConfig
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use {'neoclide/coc.nvim', branch = 'release', run = 'yarn install --frozen-lockfile'} 
    --Colors
    use 'folke/tokyonight.nvim'
    use 'navarasu/onedark.nvim'
    use 'sam4llis/nvim-tundra'
    use {"catppuccin/nvim", as = "catppuccin"}
    use {"cpea2506/one_monokai.nvim"}
    
    --linter
    use 'dense-analysis/ale'
    
    --Formatting
    use 'preservim/nerdcommenter'
    use 'raimondi/delimitmate'
    use 'liuchengxu/vista.vim'

    --Misc.
    use {
        'phaazon/hop.nvim', 
        branch = 'v2',
    }
    use 'editorconfig/editorconfig-vim'
    use {'akinsho/bufferline.nvim', tag="v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    


end)
