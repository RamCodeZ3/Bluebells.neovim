local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    NeoTreeNormal = { bg = p.panel, fg = p.fg },
    NeoTreeNormalNC = { bg = p.panel, fg = p.muted },
    NeoTreeEndOfBuffer = { bg = p.panel, fg = p.panel },
    NeoTreeCursorLine = { bg = p.panel2 },
    NeoTreeWinSeparator = { bg = p.panel, fg = p.border },
    NeoTreeVertSplit = { link = "NeoTreeWinSeparator" },
    NeoTreeFloatNormal = { link = "NormalFloat" },
    NeoTreeFloatBorder = { link = "FloatBorder" },
    NeoTreeFloatTitle = { link = "FloatTitle" },
    NeoTreeDirectoryIcon = { fg = p["function"] },
    NeoTreeDirectoryName = { fg = p["function"] },
    NeoTreeRootName = { fg = p.keyword },
    NeoTreeFileName = { fg = p.fg },
    NeoTreeFileNameOpened = { fg = p.property },
    NeoTreeFileIcon = { fg = p.info },
    NeoTreeIndentMarker = { fg = p.border },
    NeoTreeExpander = { fg = p.muted },
    NeoTreeDimText = { fg = p.muted },
    NeoTreeDotfile = { fg = p.muted },
    NeoTreeHiddenByName = { fg = p.muted },
    NeoTreeIgnored = { fg = p.muted },
    NeoTreeMessage = { fg = p.muted },
    NeoTreeModified = { fg = p.warning },
    NeoTreeSymbolicLinkTarget = { fg = p.info },
    NeoTreeFilterTerm = { fg = p.number },
    NeoTreeGitAdded = { fg = p.property },
    NeoTreeGitConflict = { fg = p.error },
    NeoTreeGitDeleted = { fg = p.error },
    NeoTreeGitIgnored = { fg = p.muted },
    NeoTreeGitModified = { fg = p.warning },
    NeoTreeGitRenamed = { fg = p.info },
    NeoTreeGitStaged = { fg = p.property },
    NeoTreeGitUnstaged = { fg = p.warning },
    NeoTreeGitUntracked = { fg = p.hint },
    NeoTreeTabActive = { bg = p.panel2, fg = p.fg },
    NeoTreeTabInactive = { bg = p.panel, fg = p.muted },
    NeoTreeTabSeparatorActive = { bg = p.panel2, fg = p.border },
    NeoTreeTabSeparatorInactive = { bg = p.panel, fg = p.border },
    NeoTreeTitleBar = { bg = p.keyword, fg = p.bg },
    NeoTreePreview = { bg = p.selection },
  }
end

return M
