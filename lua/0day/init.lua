local M = {}

function M.setup(opts)
  require("0day.config").setup(opts)
  require("0day.markdown").setup()
  require("0day.file_generator").setup()
  require("0day.recent_files").setup()
  require("0day.cli_tools").setup()
  require("0day.workflows").setup()
end

return M