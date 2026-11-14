return {
  { 'lewis6991/gitsigns.nvim', event = { 'BufReadPre', 'BufNewFile' }, opts = {} },
  { 'kdheepak/lazygit.nvim', cmd = 'LazyGit', keys = { { '<leader>g', '<cmd>LazyGit<cr>', desc = 'lazygit' } } },
}
