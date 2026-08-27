local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    Comment    = { fg = p.comment, italic = config.commentStyle.italic },

    Constant   = { fg = p.constant },
    String     = { fg = p.string },
    Character  = { fg = p.string },
    Number     = { fg = p.number },
    Boolean    = { fg = p.boolean, bold = true },
    Float      = { link = "Number" },

    Identifier = { fg = p.variable },
    Function   = { fg = p["function"], italic = config.functionStyle.italic },

    Statement    = { fg = p.keyword, italic = config.statementStyle.italic },
    Conditional  = { link = "Statement" },
    Repeat       = { link = "Statement" },
    Label        = { link = "Statement" },
    Operator     = { fg = p.operator },
    Keyword      = { fg = p.keyword, italic = config.keywordStyle.italic },
    Exception    = { fg = p.error },

    PreProc      = { fg = p.type },
    Include      = { link = "PreProc" },
    Define       = { link = "PreProc" },
    Macro        = { link = "PreProc" },
    PreCondit    = { link = "PreProc" },

    Type         = { fg = p.type, italic = config.typeStyle.italic },
    StorageClass = { link = "Type" },
    Structure    = { link = "Type" },
    Typedef      = { link = "Type" },

    Special        = { fg = p.number },
    SpecialChar    = { link = "Special" },
    Tag            = { fg = p.tag },
    Delimiter      = { fg = p.punctuation },
    SpecialComment = { fg = p.comment, italic = true },
    Debug          = { fg = p.error },

    Underlined = { underline = true },
    Bold       = { bold = true },
    Italic     = { italic = true },
    Ignore     = { fg = p.muted },
    Error      = { fg = p.error, bold = true },
    Todo       = { fg = p.bg, bg = p.warning, bold = true },
  }
end

return M
