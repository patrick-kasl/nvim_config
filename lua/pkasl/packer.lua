vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
 use 'wbthomason/packer.nvim'

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
end)

