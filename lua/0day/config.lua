local M = {}

M.defaults = {
  output_dir = vim.fn.stdpath("data") .. "/0day_output",
  recent_files_max = 10,
}

M.options = {}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
end

return M