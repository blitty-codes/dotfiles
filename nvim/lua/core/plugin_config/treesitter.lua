require 'nvim-treesitter.configs'.setup {
  -- a list of parser names, or "all"
  ensure_installed = { 'c', 'lua', 'rust', 'python', 'typescript', 'vim' },
  
  -- Install parsers synchronously
  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
  },
}
