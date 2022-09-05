set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set relativenumber
set hidden
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set termguicolors
set nowrap
set ignorecase
set smartcase
set nobackup
set nowritebackup
set cmdheight=1
filetype plugin indent on

let g:netrw_banner=0
call plug#begin('~/.vim/plugins')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'gruvbox-community/gruvbox'
  Plug 'itchyny/lightline.vim'
  Plug 'itchyny/vim-gitbranch'
call plug#end()


colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>v :e $MYVIMRC<cr>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup MR_GARFI
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

"For git branch view in the status line"
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
