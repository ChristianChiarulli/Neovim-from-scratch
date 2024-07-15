local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  { "nvim-lua/plenary.nvim" },  -- Useful lua functions used by lots of plugins
  { "windwp/nvim-autopairs" },  -- Autopairs, integrates with both cmp and treesitter
  { "numToStr/Comment.nvim" },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  { "kyazdani42/nvim-tree.lua" },
  { "akinsho/bufferline.nvim", 
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
	{ "moll/vim-bbye" },
  { "nvim-lualine/lualine.nvim" },
  { "akinsho/toggleterm.nvim" },
  { "ahmedkhalf/project.nvim" },
  { "lewis6991/impatient.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "goolord/alpha-nvim", 
    event = 'VeryLazy',
  },
	{ "folke/which-key.nvim",
    event = 'VeryLazy',
  },

	-- Colorschemes
  { "tanvirtin/monokai.nvim" },

	-- Cmp 
  { "hrsh7th/nvim-cmp", 
    event = 'InsertEnter',
  },         -- The completion plugin
  { "hrsh7th/cmp-buffer" },       -- buffer completions
  { "hrsh7th/cmp-path" },         -- path completions
	{ "saadparwaiz1/cmp_luasnip" }, -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lua" },

	-- Snippets
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!:).
    build = "make install_jsregexp"
  },


  { "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use

	-- LSP
	{ "neovim/nvim-lspconfig" } ,            -- enable LSP
  { "williamboman/mason.nvim"},            -- simple to use language server installer
  { "williamboman/mason-lspconfig.nvim" },
	{ "jose-elias-alvarez/null-ls.nvim" },   -- for formatters and linters
  { "RRethy/vim-illuminate" },

	-- Telescope
  {
    'nvim-telescope/telescope.nvim', 
    version = '0.1.4',
    dependencies = { "nvim-lua/plenary.nvim" }
  }, 

	-- Treesitter
  { 'nvim-treesitter/nvim-treesitter', 
    build = ':TSUpdate' 
  },

	-- Git
 	{ "lewis6991/gitsigns.nvim" },
  { "f-person/git-blame.nvim" },

  -- REST / Postman
  { "diepm/vim-rest-console" },

  -- Hop
  {
    'phaazon/hop.nvim',
    lazy = false,
    version = 'v2', -- optional but strongly recommended
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }, 

  -- Rust
  { "neovim/nvim-lspconfig" },
  { "simrat39/rust-tools.nvim" },

  -- Debugging
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
 
})
