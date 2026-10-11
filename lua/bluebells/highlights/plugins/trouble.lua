local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    TroubleNormal = { bg = p.panel, fg = p.fg },
    TroubleNormalNC = { bg = p.panel, fg = p.muted },
    TroubleText = { fg = p.fg },
    TroubleFilename = { fg = p["function"] },
    TroubleDirectory = { fg = p.muted },
    TroubleSource = { fg = p.muted },
    TroubleCode = { fg = p.number },
    TroublePos = { fg = p.muted },
    TroubleCount = { bg = p.panel2, fg = p.keyword },
    TroubleIndent = { fg = p.border },
    TroublePreview = { bg = p.selection },
  }
end

return M
