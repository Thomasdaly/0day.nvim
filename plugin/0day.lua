if vim.fn.has("nvim-0.7.0") == 0 then
    vim.api.nvim_err_writeln("0day.nvim requires at least nvim-0.7.0")
    return
  end
  
  -- Plugin is loaded during startup, but can be disabled with a global variable
  if vim.g.loaded_0day == 1 then
    return
  end
  vim.g.loaded_0day = 1
  
  vim.api.nvim_create_user_command("ZeroDay", function(opts)
    require("0day").open_menu()
  end, { nargs = 0 })
  
  vim.api.nvim_create_user_command("GenerateFiles", function(opts)
    require("0day.file_generator").generate_files(opts.args)
  end, { nargs = 1 })
  
  vim.api.nvim_create_user_command("RunTool", function(opts)
    local args = vim.split(opts.args, " ")
    require("0day.cli_tools").run_tool(args[1], args[2], table.concat(args, " ", 3))
  end, { nargs = "+", complete = "file" })
  
  vim.api.nvim_create_user_command("OpenRecentFile", function(opts)
    require("0day.recent_files").open_recent_file(opts.args)
  end, { nargs = "?" })