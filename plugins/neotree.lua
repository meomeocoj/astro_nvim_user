return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.source_selector = {
      winbar = true, -- toggle to show selector on winbar
      statusline = false,
      sources = {
        { source = "filesystem" },
      },
      filesystem = {
        follow_current_file = true,
        hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            ".git",
          },
        },
      },
    }
    return opts
  end,
}
