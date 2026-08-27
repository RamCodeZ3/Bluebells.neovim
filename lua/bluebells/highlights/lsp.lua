local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    DiagnosticError = { fg = p.error },
    DiagnosticWarn  = { fg = p.warning },
    DiagnosticInfo  = { fg = p.info },
    DiagnosticHint  = { fg = p.hint },
    DiagnosticOk    = { fg = p.property },

    DiagnosticUnderlineError = { undercurl = config.undercurl, underline = not config.undercurl, sp = p.error },
    DiagnosticUnderlineWarn  = { undercurl = config.undercurl, underline = not config.undercurl, sp = p.warning },
    DiagnosticUnderlineInfo  = { undercurl = config.undercurl, underline = not config.undercurl, sp = p.info },
    DiagnosticUnderlineHint  = { undercurl = config.undercurl, underline = not config.undercurl, sp = p.hint },

    DiagnosticVirtualTextError = { fg = p.error, bg = p.panel },
    DiagnosticVirtualTextWarn  = { fg = p.warning, bg = p.panel },
    DiagnosticVirtualTextInfo  = { fg = p.info, bg = p.panel },
    DiagnosticVirtualTextHint  = { fg = p.hint, bg = p.panel },

    LspReferenceText  = { bg = p.panel2 },
    LspReferenceRead  = { link = "LspReferenceText" },
    LspReferenceWrite = { link = "LspReferenceText" },
    LspCodeLens       = { fg = p.muted },
    LspInlayHint      = { fg = p.muted, bg = p.panel },
    LspSignatureActiveParameter = { fg = p.number, bold = true },

    -- explicit semantic token overrides, in case @lsp.type.* doesn't
    -- inherit from the equivalent @treesitter capture on its own
    ["@lsp.type.variable"]  = { fg = p.variable },
    ["@lsp.type.parameter"] = { fg = p.parameter },
    ["@lsp.type.property"]  = { fg = p.property },
    ["@lsp.type.function"]  = { fg = p["function"] },
    ["@lsp.type.method"]    = { fg = p["function"] },
    ["@lsp.type.type"]      = { fg = p.type },
    ["@lsp.type.class"]     = { fg = p.type },
    ["@lsp.type.interface"] = { fg = p.type },
    ["@lsp.type.enum"]      = { fg = p.type },
    ["@lsp.type.enumMember"] = { fg = p.constant },
    ["@lsp.type.namespace"] = { fg = p.type },
    ["@lsp.type.operator"]  = { fg = p.operator },
    ["@lsp.type.keyword"]   = { fg = p.keyword },
    ["@lsp.type.string"]    = { fg = p.string },
    ["@lsp.type.number"]    = { fg = p.number },
    ["@lsp.mod.readonly"]   = {}, -- keep base color, just a modifier
  }
end

return M
