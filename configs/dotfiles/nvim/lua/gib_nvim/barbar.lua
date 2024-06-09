-- Move to previous/next
vim.keymap.set("n", "<C-h>", "<Cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<C-l>", "<Cmd>BufferNext<CR>")
-- Re-order to previous/next
vim.keymap.set("n", "<C-j>", "<Cmd>BufferMovePrevious<CR>")
vim.keymap.set("n", "<C-k>", "<Cmd>BufferMoveNext<CR>")
-- Goto buffer in position...
vim.keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>")
vim.keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>")
vim.keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>")
vim.keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>")
vim.keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>")
vim.keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>")
vim.keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>")
vim.keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>")
vim.keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>")
vim.keymap.set("n", "<leader>0", "<Cmd>BufferLast<CR>")
vim.keymap.set("n", "<C-q>", "<Cmd>BufferClose<CR>")
vim.keymap.set("n", "<C-a>", "<Cmd>BufferCloseAllButCurrent<CR>")
