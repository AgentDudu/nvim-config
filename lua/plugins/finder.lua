return {
  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      { '<leader>ff', '<cmd>FzfLua files<cr>', desc = 'find files' },
      { '<leader>fg', '<cmd>FzfLua live_grep<cr>', desc = 'live grep' },
      { '<leader>fb', '<cmd>FzfLua buffers<cr>', desc = 'buffers' },
      { '<leader>fr', '<cmd>FzfLua oldfiles<cr>', desc = 'recent files' },
      { '<leader>fh', '<cmd>FzfLua help_tags<cr>', desc = 'help tags' },
    },
    opts = {},
  },
  {
    'stevearc/oil.nvim',
    keys = { { '-', '<cmd>Oil<cr>', desc = 'browse parent directory' } },
    opts = { view_options = { show_hidden = true } },
  },
}
