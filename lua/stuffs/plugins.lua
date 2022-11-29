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

    --tressitter
    use("nvim-treesitter/nvim-treesitter", {
        run = "TSUpdate"
    })

    --lspConfig
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use {'neoclide/coc.nvim', branch = 'release', run = 'yarn install --frozen-lockfile'} 
    --Colors
    use 'folke/tokyonight.nvim'
    use 'navarasu/onedark.nvim'
    use 'sam4llis/nvim-tundra'
    
    --linter
    use 'dense-analysis/ale'
    
    --Formatting
    use 'preservim/nerdcommenter'
    use 'raimondi/delimitmate'
    use 'liuchengxu/vista.vim'

    --Misc.
    use 'phaazon/hop.nvim'
    use 'editorconfig/editorconfig-vim'


end)
