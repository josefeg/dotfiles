local opt = vim.opt

-- General
opt.encoding = "utf-8"
opt.termguicolors = true

-- Indentation
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smarttab = true
opt.copyindent = true

opt.ruler = true
opt.number = true
opt.showmode = true
opt.showmatch = true
opt.matchtime = 1
opt.title = true
opt.hlsearch = true
opt.incsearch = true
opt.signcolumn = "yes"

-- Persistent undo & recovery
opt.undofile = true
opt.undodir = vim.fn.expand("~/.local/share/nvim/undo//")
opt.backupdir = vim.fn.expand("~/.local/share/nvim/backup//")
opt.directory = vim.fn.expand("~/.local/share/nvim/swap//")
