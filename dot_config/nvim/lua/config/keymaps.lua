-- Disable arrow keys (all modes)
vim.keymap.set({ "n", "v" }, "<Up>", "<Nop>", { silent = true })
vim.keymap.set({ "n", "v" }, "<Down>", "<Nop>", { silent = true })
vim.keymap.set({ "n", "v" }, "<Left>", "<Nop>", { silent = true })
vim.keymap.set({ "n", "v" }, "<Right>", "<Nop>", { silent = true })

-- Make j/k wrapped-line friendly
vim.keymap.set("n", "j", function() 
  return (vim.v.count == 0) and "gj" or "j"
end, { expr = true, silent = true })

vim.keymap.set("n", "k", function()
  return (vim.v.count == 0) and "gk" or "k"
end, { expr = true, silent = true })
