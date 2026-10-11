local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")
  local background = config.transparent and "NONE" or p.bg

  return {
    DashboardHeader = { fg = p["function"], bg = background },
    DashboardFooter = { fg = p.muted, bg = background },
    DashboardIcon = { fg = p.property, bg = background },
    DashboardDesc = { fg = p.fg, bg = background },
    DashboardKey = { fg = p.number, bg = background },
    DashboardShortCut = { fg = p.keyword, bg = background },
    DashboardShortCutIcon = { fg = p.property, bg = background },
    DashboardProjectTitle = { fg = p["function"], bg = background },
    DashboardProjectTitleIcon = { fg = p.property, bg = background },
    DashboardProjectIcon = { fg = p.property, bg = background },
    DashboardRecentProjectIcon = { fg = p.property, bg = background },
    DashboardMruTitle = { fg = p["function"], bg = background },
    DashboardMruIcon = { fg = p.property, bg = background },
    DashboardFiles = { fg = p.fg, bg = background },
    DashboardPreview = { bg = background },
  }
end

return M
