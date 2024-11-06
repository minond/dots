local map = vim.keymap.set
local telescope = require("telescope.builtin")
local actions = require("telescope.actions")

map("n", "<leader>o", telescope.git_files, { desc = "Search [G]it [F]iles" })

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["C-j"] = "move_selection_next",
        ["C-k"] = "close",
      },
      n = {
        ["C-j"] = "move_selection_next",
        ["C-k"] = "close",
      }
    }
  },
  pickers = {
    git_files = {
      theme = "ivy",
    }
  }
})

require("telescope.themes").get_ivy({
  layout_config = {
    height = 5,
  },
})
