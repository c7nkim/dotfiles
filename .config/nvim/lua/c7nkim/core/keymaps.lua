-- core keymaps configuration
-- basic keymaps that don't depend on plugins

-- clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- exit terminal mode in the builtin terminal
-- NOTE: this doesn't work in all terminal emulators
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- NOTE: disable for now. revisit when needed
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-h>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-h>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-h>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
