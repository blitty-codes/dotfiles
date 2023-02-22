vim.cmd [[
  let g:UltiSnipsJumpForwardTrigger='<Tab>'
  let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'
]]

local kind_icons = {
  Class = "ﴯ",
  Color = "",
  Constant = "",
  Constructor = "",
  Enum = "",
  EnumMember = "",
  Event = "",
  Field = "",
  File = "",
  Folder = "",
  Function = "",
  Interface = "",
  Keyword = "",
  Method = "",
  Module = "",
  Operator = "",
  Property = "ﰠ",
  Reference = "",
  Snippet = "",
  Struct = "",
  Text = "",
  TypeParameter = "",
  Unit = "",
  Value = "",
  Variable = "",
}

local cmp = require 'cmp'

local SNIPPET_CONFIGURATION = { 
  expand = function(args)
    -- For `vsnip`, uncomment the following.
    -- vim.fn["vsnip#anonymous"](args.body)
    -- For `luasnip`, uncomment the following.
    -- require('luasnip').lsp_expand(args.body)
    -- For snippy, uncomment the following.
    -- require('snippy').expand_snippet(args.body)
    -- For `ultisnips`
    vim.fn["UltiSnips#Anon"](args.body)
  end
}

local FORMATTING = {
  format = function(entry, vim_item)
    -- Kind icons
    vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind) --Concatonate the icons with name of the item-kind
    vim_item.menu = ({
      nvim_lsp = "[LSP]",
      spell = "[Spellings]",
      zsh = "[Zsh]",
      buffer = "[Buffer]",
      ultisnips = "[Snip]",
      treesitter = "[Treesitter]",
      calc = "[Calculator]",
      nvim_lua = "[Lua]",
      path = "[Path]",
      nvim_lsp_signature_help = "[Signature]",
      cmdline = "[Vim Command]"
    })[entry.source.name]
    return vim_item
  end
}

local MAPPING = {
  ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
  ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
  ['<C-M-k>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
  ['<C-M-j>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
  ['<C-y>'] = cmp.config.disable,
  ['<C-e>'] = cmp.mapping({
    i = cmp.mapping.abort(),
    c = cmp.mapping.close(),
  }),
  ['<CR>'] = cmp.mapping.confirm({ select = false })
}

local COMPLETION_RELATED_CONFIGURATION = {
  keyword_length = 1,
}

local FUZZY_MATCHING = {
  disallow_fuzzy_matching = false,
}

local SOURCES_RELATED_CONFIGURATION = {
  {
    { name = 'nvim_lsp' },
    -- For ultisnips users
    { name = 'ultisnips' },
    -- For vsnip users, uncomment the following.
    -- { name = 'vsnip' },
    -- For luasnip users, uncomment the following.
    -- { name = 'luasnip' },
    -- For snippy users, uncomment the following.
    -- { name = 'snippy' },
  }, {
    { name = 'buffer' },
  }, {
    { name = 'nvim_lsp_signature_help' },
  }, {
    { name = 'path' },
  }
}

cmp.setup({
  snippet =  {
    expand = function(args)
      -- For `vsnip`, uncomment the following.
      -- vim.fn["vsnip#anonymous"](args.body)
      -- For `luasnip`, uncomment the following.
      -- require('luasnip').lsp_expand(args.body)
      -- For snippy, uncomment the following.
      -- require('snippy').expand_snippet(args.body)
      -- For `ultisnips`
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },-- SNIPPET_CONFIGURATION,
  formatting = {
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind) --Concatonate the icons with name of the item-kind
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        spell = "[Spellings]",
        zsh = "[Zsh]",
        buffer = "[Buffer]",
        ultisnips = "[Snip]",
        treesitter = "[Treesitter]",
        calc = "[Calculator]",
        nvim_lua = "[Lua]",
        path = "[Path]",
        nvim_lsp_signature_help = "[Signature]",
        cmdline = "[Vim Command]"
      })[entry.source.name]
      return vim_item
    end,
  }, -- FORMATTING,
  mapping = {
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
    ['<C-M-k>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-M-j>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }, -- MAPPING,
  completion = {
    keyword_length = 1,
  }, -- COMPLETION_RELATED_CONFIGURATION,
  matching = {
    disallow_fuzzy_matching = false,
  },-- FUZZY_MATCHING,
  sources = cmp.config.sources(
    {
      { name = 'nvim_lsp' },
      -- For ultisnips users
      { name = 'ultisnips' },
      -- For vsnip users, uncomment the following.
      -- { name = 'vsnip' },
      -- For luasnip users, uncomment the following.
      -- { name = 'luasnip' },
      -- For snippy users, uncomment the following.
      -- { name = 'snippy' },
    }, {
      { name = 'buffer' },
    }, {
      { name = 'nvim_lsp_signature_help' },
    }, {
      { name = 'path' },
    }
  )-- SOURCES_RELATED_CONFIGURATION)
})


-- For command line autocompletion
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'cmdline' },
  })
})

cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' },
  }
})
