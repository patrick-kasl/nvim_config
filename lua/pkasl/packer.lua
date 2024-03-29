vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
 use 'wbthomason/packer.nvim'
 use 'nvim-tree/nvim-tree.lua'
 use 'nvim-tree/nvim-web-devicons'
 use 'lervag/vimtex'
 use {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	requires = { {'nvim-lua/plenary.nvim'} }
}

 use ({
	 'folke/tokyonight.nvim',
	 config = function()
		 vim.cmd('colorscheme tokyonight-night')
	end
})
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
 use 'mbbill/undotree'
 use 'tpope/vim-fugitive'
 use 'ThePrimeagen/vim-be-good'
 --use 'lspconfig'
 use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'}, 
    {'rafamadriz/friendly-snippets'},
  }
  }
end)

