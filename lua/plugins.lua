-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --better mappings
    use "b0o/mapx.nvim"

    --auto pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    --tokyongiht theme
    use 'folke/tokyonight.nvim'

    --cool thing
    use("eandrju/cellular-automaton.nvim")

    --zen mode helps with environment
    use("folke/zen-mode.nvim")

    --telescope
    use ({
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
    ---- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    })
    --work with telescope (file-browser)
    use { "nvim-telescope/telescope-file-browser.nvim" }

    --cool theme (GRUVBOX)
    use { "ellisonleao/gruvbox.nvim" }

    --treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    --lsp-zero plugin with requires
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
      },
      --config = { require'lspconfig'.rust_analyzer.setup({})}
    }

    --manson (bimba plugin)
    use { "williamboman/mason.nvim" }

    --lualine
    use {
      'nvim-lualine/lualine.nvim',
       requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }



                                            --DONT TOUCH THIG BELOW!!!!!!!!!!

--                                                                       |||
-- ||||                        ||||||                ||||           ||    ||    ||||||||||||||||||||||||
-- ||  |||                   |||    |||              || ||          ||     |               ||
-- ||     |||             |||          |||           ||  ||         ||                     ||
-- ||       |||         ||                ||         ||   ||        ||                     ||
-- ||        ||         ||                ||         ||    ||       ||                     ||
-- ||        ||         ||                ||         ||     ||      ||                     ||
-- ||        ||         ||                ||         ||      ||     ||                     ||
-- ||        ||         ||                ||         ||       ||    ||                     ||
-- ||       |||         ||                ||         ||        ||   ||                     ||
-- ||     |||             |||          |||           ||         ||  ||                     ||
-- ||  |||                   |||    |||              ||          || ||                     ||
-- ||||                        ||||||                ||           ||||                     ||





end)

