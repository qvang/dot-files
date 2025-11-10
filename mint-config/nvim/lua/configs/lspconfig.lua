require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd" }

-- read :h vim.lsp.config for changing options of lsp servers 

vim.lsp.config.clangd = {
  cmd = {
    'clangd',
    '--clang-tidy',
    '--background-index',
  },
  init_options = {
    fallbackFlags = { '--std=c++23'},
  },
}

vim.lsp.enable(servers)
