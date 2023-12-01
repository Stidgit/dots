print("Welcome back to Neovim Stid!")
require("stidgit")
vim.o.number = true
vim.api.nvim_create_autocmd("BufEnter", { callback = function() vim.opt.formatoptions = vim.opt.formatoptions - { "c","r","o" } end, })
