vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local ft = vim.bo.filetype
    if ft == "markdown" or ft == "gitcommit" or ft == "make" then
      return
    end

    local view = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(view)
  end,
})

