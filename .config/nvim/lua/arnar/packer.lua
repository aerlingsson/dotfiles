-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Theme
--    use({
--        'sainnhe/everforest',
--        as = 'everforest',
--        config = function()
--            vim.cmd('set termguicolors')
--            vim.cmd('set background=dark')
--            vim.cmd('let g:everforest_background = "hard"')
--            vim.cmd('let g:everforest_transparent_background = 1')
--            vim.cmd('let g:everforest_enable_italic = 1')
--            vim.cmd('let g:everforest_better_performance = 1')
--            vim.cmd('colorscheme everforest')
--        end
--    })

    use({
        'adisen99/codeschool.nvim',
        as = 'codeschool',
        requires = { 'rktjmp/lush.nvim' },
        config = function()
            require('lush')(require('codeschool').setup({
                plugins = {
                    "buftabline",
                    "coc",
                    "cmp", -- nvim-cmp
                    "fzf",
                    "gitgutter",
                    "gitsigns",
                    "lsp",
                    "lspsaga",
                    "nerdtree",
                    "netrw",
                    "nvimtree",
                    "neogit",
                    "packer",
                    "signify",
                    "startify",
                    "syntastic",
                    "telescope",
                    "treesitter"
                },
                langs = {
                    "c",
                    "clojure",
                    "coffeescript",
                    "csharp",
                    "css",
                    "elixir",
                    "golang",
                    "haskell",
                    "html",
                    "java",
                    "js",
                    "json",
                    "jsx",
                    "lua",
                    "markdown",
                    "moonscript",
                    "objc",
                    "ocaml",
                    "purescript",
                    "python",
                    "ruby",
                    "rust",
                    "scala",
                    "typescript",
                    "viml",
                    "xml"
                }
            }))
            vim.cmd('let g:codeschool_italicize_comments = "true"')
            vim.cmd('let g:codeschool_bold = 1')
            vim.cmd('let g:codeschool_italic = 1')
            vim.cmd('let g:codeschool_sign_column = "bg0"')
            vim.cmd('let g:codeschool_invert_tabline = 0')
            vim.cmd('let g:codeschool_improved_strings = 0')
            vim.cmd('let g:codeschool_improved_warnings = 1')
            vim.cmd('let g:codeschool_transparent_bg = 1')
            vim.cmd('let g:codeschool_contrast_dark = "soft"')
            vim.cmd('colorscheme codeschool')
      end
    })

    use ({
        'ojroques/nvim-hardline',
        as = 'hardline',
        config = function()
            require('hardline').setup {
              bufferline = false,  -- disable bufferline
              bufferline_settings = {
                exclude_terminal = false,  -- don't show terminal buffers in bufferline
                show_index = false,        -- show buffer indexes (not the actual buffer numbers) in bufferline
              },
              theme = 'default',   -- change theme
              sections = {         -- define sections
                {class = 'mode', item = require('hardline.parts.mode').get_item},
                {class = 'high', item = require('hardline.parts.git').get_item, hide = 100},
                {class = 'med', item = require('hardline.parts.filename').get_item},
                '%<',
                {class = 'med', item = '%='},
                {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 100},
                {class = 'error', item = require('hardline.parts.lsp').get_error},
                {class = 'warning', item = require('hardline.parts.lsp').get_warning},
                {class = 'warning', item = require('hardline.parts.whitespace').get_item},
                {class = 'high', item = require('hardline.parts.filetype').get_item, hide = 60},
                {class = 'mode', item = require('hardline.parts.line').get_item},
              },
            }
        end
    })

    -- Plugins
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('williamboman/mason.nvim')
    use('github/copilot.vim')
    use('junegunn/fzf.vim')

    -- Debugging
    use('puremourning/vimspector')

    -- .NET
    use('adelarsq/neofsharp.vim')
    use('OmniSharp/omnisharp-vim')

    -- LSP Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {}
        end
    }
end)
