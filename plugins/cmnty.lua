return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.go" },
  -- editing support
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.telescope-undo-nvim" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.text-case-nvim", enabled = true },

  -- bars and lines
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
  -- copilot cmp
  { import = "astrocommunity.completion.copilot-lua" },
  {
    "zbirenbaum/copilot.lua",
    opts = function(_, opts)
      opts.suggestion = {
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-j>",
          next = "<C-n>",
          prev = "<C-p>",
          dismiss = "<C-;>",
        },
      }

      opts.filetypes = {
        markdown = true,
        yaml = true,
      }
    end,
  },
  { import = "astrocommunity.utility/noice-nvim" },
  {
    "noice.nvim",
    opts = function(_, opts)
      opts.presets.bottom_search = false
      opts.lsp.signature = { enabled = false }
      opts.messages = { enabled = false }
      opts.notify = { enabled = false }
      return opts
    end,
  },
  -- motion
  { import = "astrocommunity.motion/harpoon" },
  { import = "astrocommunity.motion/mini-surround" },
  { import = "astrocommunity.motion.leap-nvim", enabled = true },
  { import = "astrocommunity.workflow.hardtime-nvim" },
  -- lsp
  { import = "astrocommunity.lsp/lsp-signature-nvim" },
  { import = "astrocommunity.lsp.inc-rename-nvim", enabled = true },
  -- others
  { import = "astrocommunity.indent.mini-indentscope", enabled = true },
  { import = "astrocommunity.comment.mini-comment", enabled = true },
  { import = "astrocommunity.syntax.hlargs-nvim", enabled = true },

  --colorschemes
  { import = "astrocommunity.colorscheme.catppuccin" },
}
