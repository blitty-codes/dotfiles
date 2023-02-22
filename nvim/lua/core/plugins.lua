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

local plugins = {
  'wbthomason/packer.nvim',
  -- styles
  'ellisonleao/gruvbox.nvim',
  'Mofiqul/dracula.nvim',
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  },

  -- down bar
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  -- Mason
  'williamboman/mason.nvim',

  -- languages
  {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- Auto completion and snippets
  -- https://smarttech101.com/nvim-lsp-autocompletion-mapping-snippets-fuzzy-search/#install_useful_plugins
  'neovim/nvim-lspconfig',
  'SirVer/ultisnips',
  'honza/vim-snippets',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/cmp-calc',
  'tamago324/cmp-zsh',
  'quangnguyen30192/cmp-nvim-ultisnips',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'f3fora/cmp-spell',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lsp-signature-help',

  -- Collaborative editing
  'jbyuki/instant.nvim',
}

local opts = {}

require('lazy').setup(plugins, opts)

