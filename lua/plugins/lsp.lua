return {
  {
    -- shortcut: this 0.12.5 install ships no runtime/lsp configs, so the plugin
    -- provides them; drop this spec if a future install bundles them again
    'neovim/nvim-lspconfig',
    branch = 'master',
    config = function()
      vim.diagnostic.config {
        virtual_text = false, -- no inline messages; E/W signs only, details in the quickfix buffer
        signs = { text = {
          [vim.diagnostic.severity.ERROR] = 'E',
          [vim.diagnostic.severity.WARN] = 'W',
          [vim.diagnostic.severity.INFO] = 'I',
          [vim.diagnostic.severity.HINT] = 'H',
        } },
      }
      local mason_bin = vim.fn.stdpath('data') .. '/mason/bin'
      if vim.fn.isdirectory(mason_bin) == 1 then
        vim.env.PATH = mason_bin .. ';' .. vim.env.PATH
      end
      local servers = {
        lua_ls = 'lua-language-server',
        basedpyright = 'basedpyright-langserver',
        ts_ls = 'typescript-language-server',
        jsonls = 'vscode-json-language-server',
        html = 'vscode-html-language-server',
        cssls = 'vscode-css-language-server',
        clangd = 'clangd',
        rust_analyzer = 'rust-analyzer',
      }
      for name, exec in pairs(servers) do
        if vim.fn.executable(exec) == 1 then vim.lsp.enable(name) end
      end
    end,
  },
  { 'saghen/blink.cmp', version = 'v1.*', event = 'InsertEnter', opts = { keymap = { preset = 'enter' } } },
  { 'williamboman/mason.nvim', cmd = { 'Mason', 'MasonInstall' }, opts = {} },
}
