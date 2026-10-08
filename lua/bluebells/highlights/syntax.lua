local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    Comment    = { fg = p.comment, italic = false, bold = false },

    Constant   = { fg = p.constant },
    String     = { fg = p.string },
    Character  = { fg = p.string },
    Number     = { fg = p.number },
    Boolean    = { fg = p.boolean, bold = false, italic = false },
    Float      = { link = "Number" },

    Identifier = { fg = p.variable },
    Function   = { fg = p["function"], italic = false, bold = false },

    -- Python-specific legacy syntax groups (python-syntax plugin ships its
    -- own hardcoded fallback colors, e.g. #DCDCAA for pythonAttribute, if a
    -- colorscheme doesn't override them explicitly — so we must set these
    -- directly rather than relying on a link).
    pythonAttribute = { fg = p.property, italic = false, bold = false }, -- obj.attr / self.attr
    pythonClassVar  = { fg = p.keyword, italic = false, bold = false },  -- self, cls
    pythonBoolean   = { fg = p.boolean, bold = false, italic = false },

    Statement    = { fg = p.keyword, italic = false, bold = false },
    Conditional  = { link = "Statement" },
    Repeat       = { link = "Statement" },
    Label        = { link = "Statement" },
    Operator     = { fg = p.operator },
    Keyword      = { fg = p.keyword, italic = false, bold = false },
    -- Exception (try/catch) intentionally left undefined: Vim's built-in
    -- defaults link it to Statement, which we already set to p.keyword above.
    -- Defining our own Exception here is what caused it to drift out of sync
    -- with Keyword before — don't reintroduce that override.

    PreProc      = { fg = p.type },
    Include      = { link = "PreProc" },
    Define       = { link = "PreProc" },
    Macro        = { link = "PreProc" },
    PreCondit    = { link = "PreProc" },

    Type         = { fg = p.type, italic = false, bold = false },
    StorageClass = { link = "Type" },
    Structure    = { link = "Type" },
    Typedef      = { link = "Type" },

    Special        = { fg = p.number },
    SpecialChar    = { link = "Special" },
    Tag            = { fg = p.tag },
    Delimiter      = { fg = p.punctuation },
    SpecialComment = { fg = p.comment, italic = false, bold = false },
    Debug          = { fg = p.error },

    Underlined = { underline = true },
    Bold       = { bold = false },
    Italic     = { italic = false },
    Ignore     = { fg = p.muted },
    Error      = { fg = p.error, bold = false, italic = false },
    Todo       = { fg = p.bg, bg = p.warning, bold = false, italic = false },
  }
end

return M
