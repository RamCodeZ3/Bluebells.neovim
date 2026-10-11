local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    MasonBackdrop = { bg = p.bg },
    MasonNormal = { bg = p.panel, fg = p.fg },
    MasonHeader = { bg = p.keyword, fg = p.bg },
    MasonHeaderSecondary = { bg = p.property, fg = p.bg },
    MasonHighlight = { fg = p.property },
    MasonHighlightBlock = { bg = p.property, fg = p.bg },
    MasonHighlightBlockBold = { link = "MasonHighlightBlock" },
    MasonHighlightSecondary = { fg = p.number },
    MasonHighlightBlockSecondary = { bg = p.number, fg = p.bg },
    MasonHighlightBlockBoldSecondary = { link = "MasonHighlightBlockSecondary" },
    MasonLink = { fg = p.info, underline = true },
    MasonMuted = { fg = p.muted },
    MasonMutedBlock = { bg = p.muted, fg = p.bg },
    MasonMutedBlockBold = { link = "MasonMutedBlock" },
    MasonError = { link = "DiagnosticError" },
    MasonWarning = { link = "DiagnosticWarn" },
    MasonHeading = { fg = p["function"] },
  }
end

return M
