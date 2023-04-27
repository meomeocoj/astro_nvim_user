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
    "jcdickinson/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    cmd = "Codeium",
    config = function() require("codeium").setup {} end,
  },
}
