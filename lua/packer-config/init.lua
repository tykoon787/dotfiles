return require'packer'.startup(function()
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'wbthomason/packer.nvim' -- Package Manager
    use 'kyazdani42/nvim-tree.lua' -- NvimTree
    use 'onsails/lspkind.nvim' -- Icons for LSP
    use 'ryanoasis/vim-devicons'
    use {'glepnir/dashboard-nvim'}
    use 'EdenEast/nightfox.nvim' -- NightFox Color Scheme
    use 'kyazdani42/nvim-web-devicons'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
    end}

    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
        use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
end)
