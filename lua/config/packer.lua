-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    --  PACKER  --
    use 'wbthomason/packer.nvim'

    --  LSP  --
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'ms-jpq/coq_nvim'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    --  TREE-SITTER  --
    use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )

    --  THEME  --
    use ({
        'navarasu/onedark.nvim',
        as = 'onedark',
        config = function()
            vim.cmd ('colorscheme onedark')
            vim.api.nvim_command("highlight StatusLine guibg=none ctermbg=none")  -- Removes bottom row background
        end
    })

    --  PLUGINS --
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require'nvim-tree'.setup {}

            -- Disable git highlights
            vim.g.nvim_tree_git_hl = 0

            -- Disable git icons
            vim.g.nvim_tree_show_icons = {
                git = 0,
                folders = 1,
                files = 1
            }
        end
    }

    use({
        'Wansmer/treesj',
        config = function()
            require('treesj').setup({--[[ your config ]]})
        end,
    })

    use {
        'folke/todo-comments.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('todo-comments').setup {}
        end
    }

    use 'github/copilot.vim'
    use 'tpope/vim-commentary'
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('ThePrimeagen/vim-be-good')
    use '907th/vim-auto-save'
    use 'folke/trouble.nvim'

end)

-- Open nvim-tree on startup
vim.cmd [[autocmd VimEnter * NvimTreeOpen]]
