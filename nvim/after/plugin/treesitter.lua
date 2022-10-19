require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "javascript",
    "typescript",
    "tsx",
    "json",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true
  }
}
