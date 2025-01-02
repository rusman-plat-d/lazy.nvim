-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<leader>e", ":NeoTreeFocusToggle<CR>", { desc = "Toggle Neo-tree" })
-- vim.keymap.set("n", "<leader>o", ":NeoTreeReveal<CR>", { desc = "Reveal current file in Neo-tree" })

vim.keymap.set("n", "<leader>tn", "toggle_node", { desc = "Toggle Neo-tree", nowait = false })

vim.keymap.set("n", "<leader>P", "o<Esc>p", { desc = "Paste below as new lines" })
vim.keymap.set("n", "<leader>p", "O<Esc>p", { desc = "Paste above as new lines" })
