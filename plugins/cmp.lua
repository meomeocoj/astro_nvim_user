--   פּ ﯟ   some other good icons
local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}
return {
  "hrsh7th/nvim-cmp",
  opts = {
    performance = {
      debounce = 300,
      throttle = 120,
      fetching_timeout = 100,
    },
    experimental = {
      ghost_text = true,
    },
    formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
        -- Kind icons
        vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          luasnip = "[Snippet]",
          buffer = "[Buffer]",
          path = "[Path]",
          codeium = "[Codeium]",
        })[entry.source.name]
        return vim_item
      end,
    },
    sources = {
      { name = "nvim_lsp", priority = 1000 },
      { name = "codeium",  priority = 750 },
      { name = "luasnip",  priority = 700 },
      { name = "path",     priority = 650 },
      { name = "buffer",   priority = 400 },
    },
  },
}
