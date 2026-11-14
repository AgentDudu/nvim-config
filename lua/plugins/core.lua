return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main', -- master is frozen and incompatible with 0.12
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').install {
        'c', 'cpp', 'css', 'go', 'html', 'json', 'lua', 'python', 'rust', 'typescript', 'tsx',
      }
    end,
  },
  { 'nvim-tree/nvim-web-devicons', lazy = true },
  { 'folke/which-key.nvim', event = 'VeryLazy', opts = {} },
}
