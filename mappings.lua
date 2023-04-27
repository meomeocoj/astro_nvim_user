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
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bn"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<leader>bb"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>n"] = { "", name = "Neotest", desc = "neotest" },
    ["<leader>na"] = { "<cmd>lua require('neotest').run.attach()<cr>", desc = "Attach" },
    ["<leader>nf"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "Run File" },
    ["<leader>nF"] = {
      "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
      desc = "Debug File",
    },
    -- ["<leader>nl"] = { "<cmd>lua require('neotest').run.run_last()<cr>", desc = "Run Last" },
    -- ["<leader>nL"] = { "<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<cr>", desc = "Debug Last" },
    ["<leader>nn"] = { "<cmd>lua require('neotest').run.run()<cr>", desc = "Run Nearest" },
    ["<leader>nN"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", desc = "Debug Nearest" },
    -- ["<leader>no"] = { "<cmd>lua require('neotest').output.open({ enter = true })<cr>", desc = "Output" },
    -- ["<leader>nS"] = { "<cmd>lua require('neotest').run.stop()<cr>", desc = "Stop" },
    -- ["<leader>ns"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Summary" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-s>"] = { "<esc>:w!<cr>a", desc = "Save File" }, -- change description but the same command
  },
}
