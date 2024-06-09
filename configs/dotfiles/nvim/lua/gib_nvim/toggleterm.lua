require("toggleterm").setup{
  size = 10,
  open_mapping = [[<C-x>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = 'horizontal',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
  -- this field is only relevant if direction is set to 'float'
  float_opts = {
    -- the border key is *almost* the same as 'nvim_win_open'
    -- see :h nvim_win_open for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'single',
    width = 200,
    height = 50,
    winblend = 3,
    highlights = {
      border = "normal",
      background = "normal",
    }
  }
}

