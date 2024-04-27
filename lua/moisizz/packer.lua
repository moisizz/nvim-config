-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                }
            })
--            vim.cmd('colorscheme rose-pine')
        end
    })

    use({
        "rebelot/kanagawa.nvim",
        as = 'kanagawa',
        config = function()
            require('kanagawa').setup({
                theme = "wave",
                background = {
                    dark = "wave"
                }
            })
            vim.cmd('colorscheme kanagawa')
        end

    })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use('neovim/nvim-lspconfig')
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('saadparwaiz1/cmp_luasnip')
    use('L3MON4D3/LuaSnip')
    use('rafamadriz/friendly-snippets')
end)
