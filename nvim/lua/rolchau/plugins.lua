-- sync plugins on write/save
vim.api.nvim_create_augroup("SyncPackerPlugins", {})
vim.api.nvim_create_autocmd(
  "BufWritePost",
  { command = "source <afile> | PackerSync", pattern = "plugins.lua", group = "SyncPackerPlugins" }
)
-- Plugins are loaded with Packer 
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colors
  use 'tjdevries/colorbuddy.nvim'
  use 'rebelot/kanagawa.nvim'

  -- LSP and Autocompletion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- completion
  use 'hrsh7th/cmp-nvim-lsp'-- completion
  use 'hrsh7th/cmp-buffer'-- completion
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- Treesitter for syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Better tooltip gui
  use 'glepnir/lspsaga.nvim'

  -- Mason for installing lsp configs
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Prettify/formatting setup
  use { 'jose-elias-alvarez/null-ls.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'MunifTanjim/prettier.nvim' --Prettier plugin for Neovim's built-in LSP client.

  -- Telescope (File searching)
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Statusline setup
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'kyazdani42/nvim-web-devicons'

  -- Making my life easier
  use 'townk/vim-autoclose' -- Closing brackets
  use 'tpope/vim-surround' -- Surround stuff with forexample '"{( etc. (ds, cs, yess) 
end)
  -- TODO EXTRA STUFF TO MAKE NVIM KOWABUNGA COOL: 
  -- 1. Add React Native Script completion 
  -- 2. Add a TODO plugin....I desperately want one...
