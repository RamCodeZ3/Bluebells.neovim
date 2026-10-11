local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    TelescopeNormal = { bg = p.panel, fg = p.fg },
    TelescopeBorder = { bg = p.panel, fg = p.border },
    TelescopeTitle = { bg = p.panel, fg = p["function"] },
    TelescopePromptNormal = { bg = p.panel2, fg = p.fg },
    TelescopePromptBorder = { bg = p.panel2, fg = p.border },
    TelescopePromptTitle = { bg = p.keyword, fg = p.bg },
    TelescopePromptPrefix = { bg = p.panel2, fg = p.property },
    TelescopePromptCounter = { bg = p.panel2, fg = p.muted },
    TelescopeResultsNormal = { bg = p.panel, fg = p.fg },
    TelescopeResultsBorder = { bg = p.panel, fg = p.border },
    TelescopeResultsTitle = { bg = p.panel, fg = p.muted },
    TelescopePreviewNormal = { bg = p.panel, fg = p.fg },
    TelescopePreviewBorder = { bg = p.panel, fg = p.border },
    TelescopePreviewTitle = { bg = p.panel, fg = p.property },
    TelescopeSelection = { bg = p.selection, fg = p.fg },
    TelescopeSelectionCaret = { bg = p.selection, fg = p.keyword },
    TelescopeMultiSelection = { fg = p.number },
    TelescopeMultiIcon = { fg = p.number },
    TelescopeMatching = { fg = p.number },
    TelescopePreviewLine = { bg = p.selection },
    TelescopePreviewMatch = { bg = p.panel2, fg = p.number },
  }
end

return M
