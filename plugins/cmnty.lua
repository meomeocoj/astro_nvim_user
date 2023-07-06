return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  {
    -- further customize the options set by the community
    "catppuccin",
    opts = {
      flavour = "mocha",
      background = {
        -- :h background
        light = "latte",
        dark = "mocha",
      },
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        ts_rainbow2 = true,
      },
    },
  },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },

  { import = "astrocommunity.indent.indent-blankline-nvim", enabled = true },
  { import = "astrocommunity.indent.mini-indentscope", enabled = true },
  -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", enabled = true },
  { import = "astrocommunity.comment.mini-comment", enabled = true },
  { import = "astrocommunity.project.nvim-spectre", enabled = true },
  { import = "astrocommunity.diagnostics.trouble-nvim", enabled = true },
  { import = "astrocommunity.code-runner.sniprun", enabled = true },
  { import = "astrocommunity.editing-support.dial-nvim", enabled = true },
  { import = "astrocommunity.editing-support.text-case-nvim", enabled = true },
  { import = "astrocommunity.terminal-integration.flatten-nvim", enabled = true },
  { import = "astrocommunity.syntax.hlargs-nvim", enabled = true },
  { import = "astrocommunity.editing-support.todo-comments-nvim", enabled = true },
  { import = "astrocommunity.lsp.inc-rename-nvim", enabled = true },
  { import = "astrocommunity.motion.mini-move", enabled = true },
  { import = "astrocommunity.motion.mini-surround", enabled = true },
  { import = "astrocommunity.motion.mini-bracketed", enabled = true },
  { import = "astrocommunity.motion.leap-nvim", enabled = true },
  { import = "astrocommunity.test.neotest", enabled = true },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim", enabled = true },
  { import = "astrocommunity.markdown-and-latex.vimtex", enabled = true },
  { import = "astrocommunity.git.octo-nvim", enabled = true },
}
