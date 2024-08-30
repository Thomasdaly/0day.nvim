return {
    "thomasdaly/0day.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = {
      "ZeroDay",
      "GenerateFiles",
      "RunTool",
      "OpenRecentFile",
    },
    keys = {
      { "<leader>rf", "<cmd>lua require('0day.recent_files').open_most_recent()<CR>", desc = "Open Most Recent File" },
    },
    opts = {},
    config = function(_, opts)
      require("0day").setup(opts)
    end,
  }