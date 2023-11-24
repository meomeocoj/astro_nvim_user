return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.sources = { "filesystem" }

    opts.source_selector = {
      -- having these both false just show normal file path in neo-tree
      winbar = false, -- toggle to show selector on winbar
      statusline = false,
    }
    opts.filesystem = {
      follow_current_file = { enabled = true },
      hijack_netrw_behavior = "open_current",
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = true, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".git",
          "node_modules",
          ".env",
        },
      },
    }
    -- opts.default_component_configs = {
    --   indent = {
    --     with_markers = true,
    --     indent_marker = "│",
    --     last_indent_marker = "└",
    --     indent_size = 2,
    --     padding = 1,
    --   },
    --   git_status = {
    --     symbols = {
    --       -- Change type
    --       added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
    --       modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
    --       deleted = "", -- this can only be used in the git_status source
    --       renamed = "➜", -- this can only be used in the git_status source
    --       -- Status type
    --       untracked = "★",
    --       ignored = "◌",
    --       unstaged = "✗",
    --       staged = "✓",
    --       conflict = "",
    --     },
    --   },
    -- }
  end,
}
