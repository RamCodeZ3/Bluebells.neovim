local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    CmpItemAbbr = { fg = p.fg },
    CmpItemAbbrDeprecated = { fg = p.muted, strikethrough = true },
    CmpItemAbbrMatch = { fg = p["function"] },
    CmpItemAbbrMatchFuzzy = { fg = p["function"] },
    CmpItemMenu = { fg = p.muted },
    CmpItemKind = { fg = p.keyword },
    CmpItemKindText = { fg = p.fg },
    CmpItemKindMethod = { fg = p["function"] },
    CmpItemKindFunction = { fg = p["function"] },
    CmpItemKindConstructor = { fg = p.constructor },
    CmpItemKindField = { fg = p.property },
    CmpItemKindVariable = { fg = p.variable },
    CmpItemKindClass = { fg = p.type },
    CmpItemKindInterface = { fg = p.type },
    CmpItemKindModule = { fg = p.type },
    CmpItemKindProperty = { fg = p.property },
    CmpItemKindUnit = { fg = p.number },
    CmpItemKindValue = { fg = p.constant },
    CmpItemKindEnum = { fg = p.type },
    CmpItemKindKeyword = { fg = p.keyword },
    CmpItemKindSnippet = { fg = p.string },
    CmpItemKindColor = { fg = p.number },
    CmpItemKindFile = { fg = p.info },
    CmpItemKindReference = { fg = p.info },
    CmpItemKindFolder = { fg = p["function"] },
    CmpItemKindEnumMember = { fg = p.constant },
    CmpItemKindConstant = { fg = p.constant },
    CmpItemKindStruct = { fg = p.type },
    CmpItemKindEvent = { fg = p.number },
    CmpItemKindOperator = { fg = p.operator },
    CmpItemKindTypeParameter = { fg = p.type },
    LuasnipChoiceNodeActive = { fg = p.number, underline = true },
    LuasnipInsertNodeActive = { fg = p.property, underline = true },
  }
end

return M
