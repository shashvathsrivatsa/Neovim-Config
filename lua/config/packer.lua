vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)

    --- Packer ------------------------------------------------------------------------------------------------------------------
    use("wbthomason/packer.nvim")

    --- LSP ---------------------------------------------------------------------------------------------------------------------
    use ({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            {"neovim/nvim-lspconfig", tag = "v1.0.0"},
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"saadparwaiz1/cmp_luasnip"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-nvim-lua"},
            {"ms-jpq/coq_nvim"},

            -- Snippets
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},
        }
    })

    --- Tree Sitter --------------------------------------------------------------------------------------------------------------
    use ("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

    --- Theme --------------------------------------------------------------------------------------------------------------------
    use ({
        "folke/tokyonight.nvim",
        as = "tokyonight",
        config = function()
            vim.cmd ("colorscheme tokyonight")
            vim.cmd("highlight Visual guibg=#3d3d3d")   -- Change selection color
            vim.api.nvim_command("highlight StatusLine guibg=none ctermbg=none")  -- Removes bottom row background
        end
    })

    --- Core ---------------------------------------------------------------------------------------------------------------------
    use("ThePrimeagen/harpoon")

    use("mbbill/undotree")

    use ({
        "nvim-telescope/telescope.nvim", tag = "0.1.6",
        requires = {{"nvim-lua/plenary.nvim"}}
    })

    --- Quality of Life ----------------------------------------------------------------------------------------------------------
    use ({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup()
        end
    })

    use ({
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup()
        end
    })

    use({
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup()
        end
    })

    use({
        "Wansmer/treesj",
        config = function()
            require("treesj").setup({
                max_join_length = 1000,
            })
        end,
    })

    use ({
        "catgoose/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({
                filetypes = {},
                user_default_options = {
                    hex = true,
                    RGB = true,
                    names = false,
                },
            })
        end
    })

    use ("tpope/vim-commentary")
    use ("tpope/vim-fugitive")
    use ("mg979/vim-visual-multi")
    use ("github/copilot.vim")

    --- Aesthetics ---------------------------------------------------------------------------------------------------------------

    use ("kyazdani42/nvim-web-devicons")

    use ({
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup()
        end
    })

    use ({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("ibl").setup({
                indent = { char = "▏" },
                scope = { enabled = false },
            })
        end
    })

    --- Boring but necessary -----------------------------------------------------------------------------------------------------

    use ("christoomey/vim-tmux-navigator")
    use ("907th/vim-auto-save")


end)

