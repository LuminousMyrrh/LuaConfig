                            --lst cofing

require'lspconfig'.rust_analyzer.setup({})
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'sumneko_lua',
    'rust_analyzer',
})

local cmp = require('cmp')

lsp.setup_nvim_cmp({
  mapping = cmp.mapping.preset.insert({
    ['<C-y'] = cmp.mapping.complete(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
  })
})

-- (Optional) Configure lua language server for neovim

lsp.set_preferences({
    sign_icons = {}
})

lsp.setup()
