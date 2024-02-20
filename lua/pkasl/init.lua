
require('pkasl.packer')
require('pkasl.remap')
vim.cmd[[colorscheme tokyonight-night]]
vim.cmd[[set cursorline]]
vim.cmd[[set number]]
vim.cmd[[set clipboard+=unnamedplus]]

-- VimTeX configuration
vim.cmd[[let g:tex_flavor='latex']]
vim.cmd[[let g:vimtex_view_method='zathura']]



-- Cofigure lsp_zero
local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()
lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer=bufnr})
end)

-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.digestif.setup {}
lspconfig.tsserver.setup {}
lspconfig.clangd.setup {}
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}
