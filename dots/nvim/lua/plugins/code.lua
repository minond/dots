return {
  "tomtom/tcomment_vim",
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "kotlin",
      },
    })
  end,
}
