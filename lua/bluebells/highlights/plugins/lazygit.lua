local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    LazyGitFloat = { bg = p.panel, fg = p.fg },
    LazyGitBorder = { bg = p.panel, fg = p.border },
  }
end

return M
