local M = {}
local navic = require("nvim-navic")

function M.get_winbar()
  local value = ""
  if navic.is_available() then
    value = navic.get_location()
  end
  return value
end

return M

