local M = {}

---@param config MyThemeConfig
function M.setup(config)
  local palette = require("mytheme.colors")

  return {
    DiagnosticError = { fg = palette.accentRed },
    DiagnosticWarn  = { fg = palette.accentYellow },
    DiagnosticInfo  = { fg = palette.accentBlue },
    DiagnosticHint  = { fg = palette.accentCyan },
    DiagnosticOk    = { fg = palette.accentGreen },

    DiagnosticUnderlineError = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.accentRed },
    DiagnosticUnderlineWarn  = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.accentYellow },
    DiagnosticUnderlineInfo  = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.accentBlue },
    DiagnosticUnderlineHint  = { undercurl = config.undercurl, underline = not config.undercurl, sp = palette.accentCyan },

    DiagnosticVirtualTextError = { fg = palette.accentRed, bg = palette.mutedRed },
    DiagnosticVirtualTextWarn  = { fg = palette.accentYellow, bg = palette.mutedYellow },
    DiagnosticVirtualTextInfo  = { fg = palette.accentBlue, bg = palette.mutedBlue },
    DiagnosticVirtualTextHint  = { fg = palette.accentCyan, bg = palette.mutedGray },

    LspReferenceText  = { bg = palette.bg3 },
    LspReferenceRead  = { link = "LspReferenceText" },
    LspReferenceWrite = { link = "LspReferenceText" },
    LspCodeLens       = { fg = palette.fg1 },
    LspInlayHint      = { fg = palette.fg0, bg = palette.bg2 },
    LspSignatureActiveParameter = { fg = palette.yellow, bold = true },
  }
end

return M
