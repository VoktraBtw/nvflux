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

-- fixes parenthesis issue with directories and telescope
function core.fix_telescope_parens_win()
  if vim.fn.has("win32") then
    local ori_fnameescape = vim.fn.fnameescape
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.fn.fnameescape = function(...)
      local result = ori_fnameescape(...)
      return result:gsub("\\", "/")
    end
  end
end

function core.expand_path(path)
  if path:sub(1, 1) == "~" then
    return os.getenv("HOME") .. path:sub(2)
  end
  return path
end

function core.center_in(outer, inner)
  return (outer - inner) / 2
end

return core
