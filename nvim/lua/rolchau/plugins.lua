-- This file can be loaded by calling `lua require('plugins')` from your init.vim

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
  use 'svrana/neosolarized.nvim' 
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
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
  -- Consider adding this: nvim-treesitter
end)
  -- TODO EXTRA STUFF TO MAKE NVIM KOWABUNGA COOL: 
  -- 1. Treesitter can apparently change the syntax highligthing....which would be very nice
  --    It can also show the functions/methods/variables in a file - would also be nice I guess?
  -- 2. Add css completion and auto-formatting
  -- 3. Add React Native Script completion 
  -- 4. Add or figure out how to go to next error
  -- 6 Add lualine statusline plugin - looks cool!
  -- 7. Auto add semi colons. How?
  -- 8. Add a TODO plugin....I desperately want one...
