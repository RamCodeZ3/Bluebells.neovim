local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    LazyNormal = { bg = p.panel, fg = p.fg },
    LazyBackdrop = { bg = p.bg },
    LazyH1 = { bg = p.keyword, fg = p.bg },
    LazyH2 = { fg = p["function"] },
    LazyButton = { bg = p.panel2, fg = p.fg },
    LazyButtonActive = { bg = p.selection, fg = p.fg },
    LazySpecial = { fg = p.number },
    LazyProgressDone = { fg = p.property },
    LazyProgressTodo = { fg = p.muted },
    LazyReasonPlugin = { fg = p.keyword },
    LazyCommit = { fg = p.constant },
    LazyCommitIssue = { fg = p.number },
    LazyDir = { fg = p.info, underline = true },
    LazyUrl = { link = "LazyDir" },
    LazyError = { link = "DiagnosticError" },
    LazyWarning = { link = "DiagnosticWarn" },
    LazyInfo = { link = "DiagnosticInfo" },
  }
end

return M
