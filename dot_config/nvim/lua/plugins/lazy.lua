-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
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

          -- Config / docs
          "json",
          "markdown",
          "yaml",
        },
        highlight = { enable = true },
      })
    end,
  },

  -- Rainbow delimiters
  { "HiPhish/rainbow-delimiters.nvim" },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
    config = function()
      vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files)
    end
  },
})

