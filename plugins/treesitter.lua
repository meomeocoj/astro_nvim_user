return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "HiPhish/nvim-ts-rainbow2",
  },
  opts = {
    rainbow = { enable = true },
    ensure_installed = { "lua", "javascript", "bash", "go", "rust", "typescript", "html", "css" },
    autotag = {
      enable = true,
    },
  },
  {
    "catppuccin/nvim",
    optional = true,
    opts = { integrations = { ts_rainbow2 = true } },
  },
}
