local options = {noremap = true, silent = true }
-- Visual block selection mappings
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })

-- Directory Navigation
vim.keymap.set("n","<leader>f", ":NvimTreeToggle<CR>",options)


-- Pane Navigation
vim.keymap.set("n","<C-k>", "<C-w>k", options)
vim.keymap.set("n","<C-j>", "<C-w>j", options)
vim.keymap.set("n","<C-h>", "<C-w>h", options)
vim.keymap.set("n","<C-l>", "<C-w>l", options)

-- Pane Management

vim.keymap.set("n","<leader>sv",":vsplit<CR>",opts)
vim.keymap.set("n","<leader>sh",":split<CR>",opts)
vim.keymap.set("n","<leader>sv",":vsplit<CR>",opts)
