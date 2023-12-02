local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {   'MunifTanjim/nui.nvim' },
    {   'nvim-tree/nvim-web-devicons' },
    {
        "RRethy/nvim-base16",
        config = function()
            vim.cmd([[colorscheme base16-tokyo-city-terminal-dark]])
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        }
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },
    {
        'kevinhwang91/nvim-bqf',
        ft = 'qf',
        opts = {}
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    },
    {   'lewis6991/gitsigns.nvim' },
    {
        'sindrets/diffview.nvim',
        opts = {}
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {
        'JoosepAlviste/nvim-ts-context-commentstring',
        config = function()
            require("ts_context_commentstring").setup({
                enable_autocmd = false
            })
        end
    },
    {   "nvim-treesitter/nvim-treesitter-textobjects" },
    {   "williamboman/mason.nvim" },
    {   "williamboman/mason-lspconfig.nvim" },
    {   "neovim/nvim-lspconfig" },
    {   'hrsh7th/cmp-nvim-lsp' },
    {   'hrsh7th/cmp-buffer' },
    {   'hrsh7th/cmp-path' },
    {   'hrsh7th/cmp-cmdline' },
    {   'hrsh7th/nvim-cmp' },
    {   'saadparwaiz1/cmp_luasnip' },
    {
        "L3MON4D3/LuaSnip",
        version = "2.*",
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,

    },
    {   "onsails/lspkind.nvim" },
    {
        "folke/neodev.nvim",
        opts = {}
    },
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    },
    {   'tpope/vim-surround' },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },
    {
        'windwp/nvim-ts-autotag',
        opts = {}
    },
    {
        "rest-nvim/rest.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        }
    },
    {
        "nvimdev/guard.nvim",
        -- Builtin configuration, optional
        dependencies = {
            "nvimdev/guard-collection",
        },
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
    },
    -- {
    --     "jackMort/ChatGPT.nvim",
    --     event = "VeryLazy",
    --     config = function()
    --         require("chatgpt").setup()
    --     end,
    --     dependencies = {
    --         "MunifTanjim/nui.nvim",
    --         "nvim-lua/plenary.nvim",
    --         "nvim-telescope/telescope.nvim"
    --     }
    -- },
    {
        'Exafunction/codeium.vim',
        event = 'BufEnter'
    },
}

require("lazy").setup(plugins)
