return {
  "nvim-neotest/neotest",
  ft = { "go", "javascript", "typescript" },
  dependencies = {
    "haydenmeade/neotest-jest",
    "nvim-neotest/neotest-go",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    {
      "folke/neodev.nvim",
      opts = function(_, opts)
        opts.library = opts.library or {}
        if opts.library.plugins ~= true then
          opts.library.plugins = require("astronvim.utils").list_insert_unique(opts.library.plugins, "neotest")
        end
        opts.library.types = true
      end,
    },
  },
  opts = function()
    return {
      adapters = {
        require "neotest-go",
        require "neotest-jest" {
          jestCommand = "npm test --",
          jestConfigFile = "jest.config.js",
          env = { CI = true },
          cwd = function(path) return vim.fn.getcwd() end,
        },
      },
    }
  end,
}
