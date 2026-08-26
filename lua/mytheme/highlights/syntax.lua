local M = {}

---@param config MyThemeConfig
function M.setup(config)
  local palette = require("mytheme.colors")

  return {
    Comment    = { fg = palette.fg0, italic = config.commentStyle.italic },

    Constant   = { fg = palette.orange },
    String     = { fg = palette.green },
    Character  = { fg = palette.green },
    Number     = { fg = palette.magenta },
    Boolean    = { fg = palette.orange, bold = true },
    Float      = { link = "Number" },

    Identifier = { fg = palette.yellow },
    Function   = { fg = palette.blue, italic = config.functionStyle.italic },

    Statement    = { fg = palette.magenta, italic = config.statementStyle.italic },
    Conditional  = { link = "Statement" },
    Repeat       = { link = "Statement" },
    Label        = { link = "Statement" },
    Operator     = { fg = palette.yellow },
    Keyword      = { fg = palette.violet, italic = config.keywordStyle.italic },
    Exception    = { fg = palette.red },

    PreProc      = { fg = palette.cyan },
    Include      = { link = "PreProc" },
    Define       = { link = "PreProc" },
    Macro        = { link = "PreProc" },
    PreCondit    = { link = "PreProc" },

    Type         = { fg = palette.cyan, italic = config.typeStyle.italic },
    StorageClass = { link = "Type" },
    Structure    = { link = "Type" },
    Typedef      = { link = "Type" },

    Special      = { fg = palette.orange },
    SpecialChar  = { link = "Special" },
    Tag          = { fg = palette.red },
    Delimiter    = { fg = palette.fg2 },
    SpecialComment = { fg = palette.fg1, italic = true },
    Debug        = { fg = palette.red },

    Underlined = { underline = true },
    Bold       = { bold = true },
    Italic     = { italic = true },
    Ignore     = { fg = palette.mutedGray },
    Error      = { fg = palette.red, bold = true },
    Todo       = { fg = palette.bg0, bg = palette.yellow, bold = true },
  }
end

return M
