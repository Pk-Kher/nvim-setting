-- lua/thinking.lua
local M = {}
local thinking = false
local custom_status = ""
function _G.ModeDisplay()
    if  custom_status ~="" then return  "📢 " .. custom_status
    elseif thinking then return "💭Thinking..." end
  return ""
end

M.setup = function()
  vim.o.updatetime = 10000

  -- Append our display to whatever statusline is already set
  vim.o.statusline = vim.o.statusline .. "%{v:lua.ModeDisplay()}"

  -- Trigger thinking mode on idle
  vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
      thinking = true
      vim.cmd("redrawstatus")
    end,
  })

  -- Disable thinking mode on any movement or typing
  vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
    callback = function()
      thinking = false
      vim.cmd("redrawstatus")
    end,
  })
      -- Create :Status command
  vim.api.nvim_create_user_command("MyStatus", function(opts)
    custom_status = opts.args
    vim.cmd("redrawstatus")
  end, { nargs = 1 }) -- Requires exactly one argument

  -- Create :ClearStatus command
  vim.api.nvim_create_user_command("ClearMyStatus", function()
    custom_status = ""
    vim.cmd("redrawstatus")
  end, {})
end

return M
