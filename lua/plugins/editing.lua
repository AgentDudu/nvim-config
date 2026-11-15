return {
  { 'windwp/nvim-autopairs', event = 'InsertEnter', opts = {} },
  { 'kylechui/nvim-surround', event = 'VeryLazy', opts = {} },
  {
    'IogaMaster/neocord',
    event = 'VeryLazy',
    opts = {
      main_image = 'language', -- language icon as the big image
      -- editing_text default = "Editing %s" -> filename shown; neocord has no
      -- idle feature, so the status never flips to idle between edits
      global_timer = true, -- timer survives file switches
      -- no blacklist yet; workspace_text still shows the git project name
    },
  },
}
