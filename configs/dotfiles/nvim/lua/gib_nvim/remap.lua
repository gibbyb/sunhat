-- Remaps
---------------------------------------------
-- Set leader to space
vim.g.mapleader = " "

-- Easily get back to Normal mode.
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Move the selected lines up or down one line and reselect
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join the current line with the line below and reposition the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll down or up and reposition the cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search forward and reposition the cursor
vim.keymap.set("n", "n", "nzzzv")

-- Search backward and reposition the cursor
vim.keymap.set("n", "N", "Nzzzv")

-- Paste the selection from the system clipboard
vim.keymap.set({"n", "v"}, "<leader>v", [["+p]])
vim.keymap.set({"n", "v"}, "<leader>V", [["+P]])

-- Move selected text to the black hole register & replace with copied text.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank (copy) the selection to the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Yank (copy) the entire buffer to the system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Yank all the text in the file to the system clipboard
vim.keymap.set("n", "<leader>YY", "gg\"+yG")

-- Delete the selection without yanking (copying) it
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Delete the line without yanking (copying) it
vim.keymap.set("n", "<leader>dd", [["_dd]])

-- Map Q in Normal mode to do nothing (nop)
vim.keymap.set("n", "Q", "<nop>")

-- Format the current buffer using the language server protocol (LSP)
vim.keymap.set("n", "<leader>kf", vim.lsp.buf.format)

-- Perform a search and replace operation using the word under the cursor
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable (chmod +x)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Source the current file
vim.keymap.set("n", "<leader><leader>", vim.cmd.so)


-- Jump to the next location in the quickfix list and reposition the cursor
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- Jump to the previous location in the quickfix list and reposition the cursor
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Jump to the next location in the location list and reposition the cursor
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- Jump to the previous location in the location list and reposition the cursor
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

