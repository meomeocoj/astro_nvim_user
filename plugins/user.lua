return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "crates.nvim",
    tag = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("crates").setup() end,
  },

  {
    "rcarriga/nvim-notify",
    config = function() require("notify.init").setup { disable = true } end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup {
        bind = true,
        hint_enable = false,
      }
    end,
  },
  {
    "pearofducks/ansible-vim",
    config = function() require("ansible-vim").setup {} end,
  },
  {
    "chr4/nginx.vim",
  },
  {
    "yorik1984/zola.nvim",
    dependencies = "Glench/Vim-Jinja2-Syntax",
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
}
