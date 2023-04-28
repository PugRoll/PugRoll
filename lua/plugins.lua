
return {
    --Alpha greeter screen
    {
        "goolord/alpha-nvim",
        lazy = true,
    },
	--Colors
	{
		"folke/tokyonight.nvim",
        "navarasu/onedark.nvim",
        "sam4llis/nvim-tundra",
        {
            "catppuccin/nvim", name="catppuccin",
        },
        lazy = true,
        priority = 100,
	},
	{
		"cpea2506/one_monokai.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme one_monokai]])
		end,

	},
    --Nvim-treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = true,
        priority = 600,
    },
    --Coc-nvim
    {
        "neoclide/coc.nvim",
        branch = "release",
    },

    --Nvim tree
    {
        "nvim-tree/nvim-tree.lua",
        lazy = true,
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        
    },

    --Language stuffs
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            {"neovim/nvim-lspconfig"},
            {
                "williamboman/mason.nvim",
                build = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
            {"williamboman/mason-lspconfig.nvim"},

            --Autocomplete
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            
            --Snippets
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},
        },

        lazy = true,
        priority = 600,

    },
    --Hop
    {
        "phaazon/hop.nvim", branch='v2',
        lazy = true,
        priority = 100,
    },
    --Whick-key
    {

        "folke/which-key.nvim",
        lazy = true, 
    },

    --Bufferline
    {
        "akinsho/bufferline.nvim",
        dependencies = 'nvim-tree/nvim-web-devicons',
        lazy=false,

    },
    --Lualine
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {'nvim-tree/nvim-web-devicons'}
    },
    --Telescope (Fuzzy finder)
    {
        "nvim-telescope/telescope.nvim",
        lazy = true,
        dependencies = {
            {"nvim-lua/plenary.nvim"},
        }
    },

    
    
}
