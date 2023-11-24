--   פּ ﯟ   some other good icons
local kind_icons = {
  Text = "󰉿",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰜢",
  Variable = "󰀫",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "󰑭",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "󰈇",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "",
}

return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    opts.history = true
    opts.region_check_events = "InsertEnter"
    opts.delete_check_events = "TextChanged,InsertLeave"
    opts.performance = {
      debounce = 300,
      throttle = 120,
      fetching_timeout = 100,
    }
    opts.experimental = {
      ghost_text = true,
    }
    opts.formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
        local _icon, hl_group = require("nvim-web-devicons").get_icon(entry:get_completion_item().label)
        vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
        vim_item.kind_hl_group = hl_group
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          luasnip = "[Snippet]",
          buffer = "[Buffer]",
          path = "[Path]",
        })[entry.source.name]
        return vim_item
      end,
    }
    opts.mapping["<C-j>"] = nil
  end,
}
