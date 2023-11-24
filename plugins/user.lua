return {
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
    "pearofducks/ansible-vim",
    config = function() require("ansible-vim").setup {} end,
  },
  {
    "chr4/nginx.vim",
  },
}
