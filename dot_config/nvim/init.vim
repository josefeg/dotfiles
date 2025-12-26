" General settings
set encoding=utf-8
set termguicolors

" Indentation
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set copyindent

" UI enhancements
set ruler
set number
set showmode
set showmatch
set matchtime=1
set title
set hlsearch
set incsearch
set signcolumn=yes

" Cursor navigation
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Persistent undo & recovery
set undofile
set undodir=~/.local/share/nvim/undo//

set backupdir=~/.local/share/nvim/backup//
set directory=~/.local/share/nvim/swap//

" Plugins via vim-plug
call plug#begin('~/.config/nvim/plugged')

" Plugins
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highlighting
Plug 'HiPhish/rainbow-delimiters.nvim'                      " Rainbow parentheses
Plug 'nvim-lua/plenary.nvim'                                " Telescope and dependency
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" Enable Tree-sitter
lua << EOF
require('nvim-treesitter').setup {
  ensure_installed = { 
    -- Core
    "c",
    "lua",
    "vim",

    -- Programming languages
    "c_sharp", 
    "elixir", 
    "java", 
    "javascript", 
    "python", 
    "rust",
    
    -- Configuration / docs
    "json",
    "markdown",
    "yaml",
  }, 
  highlight = {
    enable = true,              -- Enable Tree-sitter highlighting
  },
}
EOF

