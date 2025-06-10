return {
  {
    'romgrk/barbar.nvim', dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
				vim.g.barbar_auto_setup = false
		end,
    opts = {
      animation = true,
      insert_at_start = true,
    },
    version = '^1.0.0',
		keys = {
			-- Move to prev/next tab
			{ "<C-h>", "<Cmd>BufferPrevious<CR>", mode = "n", desc = "Prev tab" },
			{ "<C-l>", "<Cmd>BufferNext<CR>", mode = "n", desc = "Next tab" },
			-- Re-order buffers
			{ "<C-j>", "<Cmd>BufferMovePrevious<CR>",     mode = "n", desc = "Move tab left" },
			{ "<C-k>", "<Cmd>BufferMoveNext<CR>",         mode = "n", desc = "Move tab right" },
			-- Close buffers
			{ "<C-q>",    "<Cmd>BufferClose<CR>",         mode = "n", desc = "Close tab" },
			{ "<C-a>",    "<Cmd>BufferCloseAllButCurrent<CR>", mode = "n", desc = "Close all but current" },
			-- Goto tab in position…
			{ "<leader>1", "<Cmd>BufferGoto 1<CR>",       mode = "n", desc = "Go to tab 1" },
			{ "<leader>2", "<Cmd>BufferGoto 2<CR>",       mode = "n", desc = "Go to tab 2" },
			{ "<leader>3", "<Cmd>BufferGoto 3<CR>",       mode = "n", desc = "Go to tab 3" },
			{ "<leader>4", "<Cmd>BufferGoto 4<CR>",       mode = "n", desc = "Go to tab 4" },
			{ "<leader>5", "<Cmd>BufferGoto 5<CR>",       mode = "n", desc = "Go to tab 5" },
			{ "<leader>6", "<Cmd>BufferGoto 6<CR>",       mode = "n", desc = "Go to tab 6" },
			{ "<leader>7", "<Cmd>BufferGoto 7<CR>",       mode = "n", desc = "Go to tab 7" },
			{ "<leader>8", "<Cmd>BufferGoto 8<CR>",       mode = "n", desc = "Go to tab 8" },
			{ "<leader>9", "<Cmd>BufferGoto 9<CR>",       mode = "n", desc = "Go to tab 9" },
			{ "<leader>0", "<Cmd>BufferLast<CR>",         mode = "n", desc = "Go to last tab" },
		},
  },
}
