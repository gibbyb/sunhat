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

require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'folke/tokyonight.nvim',
        priority = 1000,
    },
    {
        'folke/trouble.nvim', dependencies =
        { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    {
        'nvim-treesitter/playground'
    },
    {
        'nvim-treesitter/nvim-treesitter-context'
    },
    --{
        --'theprimeagen/harpoon'
    --},
    {
      "ThePrimeagen/refactoring.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      }
    },
    {
        'mbbill/undotree'
    },
    {
        'tpope/vim-fugitive'
    },
    {
        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'
    },
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-nvim-lua'},
    {'L3MON4D3/LuaSnip'},
    {'saadparwaiz1/cmp_luasnip'},
    {'rafamadriz/friendly-snippets'},
    {
        --'github/copilot.vim'
        'supermaven-inc/supermaven-nvim',
        config = function()
          require('supermaven-nvim').setup({
            keymaps = {
              accept_suggestion = '<Tab>',
              clear_suggestion = '<C-]>',
              accept_word = '<C-.>',
            },
            disable_inline_completion = false, -- for cmp
          })
        end,
    },
    {
        'laytan/cloak.nvim'
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'folke/tokyonight.nvim',
        }
    },
    {
        'scrooloose/nerdcommenter'
    },
    {
        'nvim-neo-tree/neo-tree.nvim', branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
            '3rd/image.nvim',
            {
                's1n7ax/nvim-window-picker', version = '2.*',
                config = function()
                    require 'window-picker'.setup({
                        filter_rules = {
                            include_current_win = false,
                            autoselect_one = true,
                            bo = {
                                filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                                buftype = { 'terminal', "quickfix" },
                            },
                        },
                    })
                    end,
            },
        },
    },
    {
        'romgrk/barbar.nvim', dependencies = {
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
          'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            animation = true,
            insert_at_start = true,
        },
        version = '^1.0.0',
    },
})
