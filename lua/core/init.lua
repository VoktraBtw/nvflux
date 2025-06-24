local core = {}

core.color_overrides = require("core.color_overrides")
core.dashboard = require("core.dashboard")

--- get the operating system name
--- "windows", "mac", "linux"
function core.get_os()
  local uname = vim.loop.os_uname()
  local os_name = uname.sysname
  if os_name == "Windows_NT" then
    return "windows"
  elseif os_name == "Darwin" then
    return "mac"
  else
    return "linux"
  end
end


return core
