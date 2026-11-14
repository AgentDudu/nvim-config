return {
  { 'windwp/nvim-autopairs', event = 'InsertEnter', opts = {} },
  { 'kylechui/nvim-surround', event = 'VeryLazy', opts = {} },
  {
    'IogaMaster/neocord',
    event = 'VeryLazy',
    opts = {
      main_image = 'language', -- language icon, no filename anywhere
      editing_text = function() return vim.bo.filetype ~= '' and vim.bo.filetype or 'neovim' end,
      global_timer = true, -- timer survives file switches
      -- no blacklist yet; workspace_text still shows the git project name
    },
  },
}
