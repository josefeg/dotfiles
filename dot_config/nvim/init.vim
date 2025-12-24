" Ensure compatibility with Neovim
set nocompatible

" General settings
set bs=indent,eol,start
set history=100
set nobackup
set noswapfile
set encoding=utf8
set termguicolors

" Auto-indentation and tabs
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set copyindent

" UI enhancements
set ruler
set number
" set relativenumber
set showmode
set showmatch
set mat=1
set title
set hlsearch
set incsearch

" Cursor navigation
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Plugin manager setup: vim-plug
call plug#begin('~/.config/nvim/plugged')

" Plugins
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highlighting
Plug 'p00f/nvim-ts-rainbow'                                 " Rainbow parentheses

call plug#end()

" Enable Tree-sitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "c_sharp", "elixir", "java", "python", "rust", "javascript" }, 
  highlight = {
    enable = true,              -- Enable Tree-sitter highlighting
  },
  rainbow = {
    enable = true,
    extended_mode = true,       -- Highlight non-bracket delimiters
    max_file_lines = nil,       -- No limit for file size
  },
}
EOF

" File and undo settings
set backupdir=~/.local/share/nvim/backup//
set directory=~/.local/share/nvim/swap//
set undodir=~/.local/share/nvim/undo//
set undofile

" Status column
" set statuscolumn=%=%{v:lnum}:%{v:lnum==line('.')?0:abs(v:lnum-line('.'))}%s\ \ \ 
