-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>b"] = false,
    ["<leader>bb"] = false,
    ["<leader>bd"] = false,
    ["<leader>b\\"] = false,
    ["<leader>b|"] = false,
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>n"] = { "", name = "Neotest", desc = "neotest" },
    ["<leader>na"] = { "<cmd>lua require('neotest').run.attach()<cr>", desc = "Attach" },
    ["<leader>nf"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run File" },
    ["<leader>nF"] = {
      "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
      desc = "Debug File",
    },
    ["<leader>nn"] = { "<cmd>lua require('neotest').run.run()<cr>", desc = "Run Nearest" },
    ["<leader>nN"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", desc = "Debug Nearest" },
    ["<leader>no"] = { ":Neotest output<cr>", desc = "Output" },
    ["<leader>np"] = { ":Neotest output-panel<cr>", desc = "Output-panel" },
    ["<leader>ns"] = { ":lua require('neotest').summary<cr>", desc = "Summary" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-s>"] = { "<esc>:w!<cr>a", desc = "Save File" }, -- change description but the same command
    ["<C-j>"] = { "<esc>:lua require('copilot.suggestion').accept_line()" },
  },
}
