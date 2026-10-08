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

    -- Semantic tokens have a higher priority than Treesitter. Define every
    -- token commonly emitted by tsserver/vtsls, basedpyright/pyright and
    -- rust-analyzer so those servers preserve the Bluebells palette.
    ["@lsp.type.variable"]      = { fg = p.variable },
    ["@lsp.type.parameter"]     = { fg = p.parameter },
    ["@lsp.type.property"]      = { fg = p.property },
    ["@lsp.type.enumMember"]    = { fg = p.constant },
    ["@lsp.type.function"]      = { fg = p["function"] },
    ["@lsp.type.method"]        = { fg = p["function"] },
    ["@lsp.type.functionType"]  = { fg = p.type },
    ["@lsp.type.type"]          = { fg = p.type },
    ["@lsp.type.typeParameter"] = { fg = p.type, italic = true },
    ["@lsp.type.class"]         = { fg = p.type },
    ["@lsp.type.interface"]     = { fg = p.type },
    ["@lsp.type.enum"]          = { fg = p.type },
    ["@lsp.type.struct"]        = { fg = p.type },
    ["@lsp.type.namespace"]     = { fg = p.type },
    ["@lsp.type.decorator"]     = { fg = p.attribute },
    ["@lsp.type.macro"]         = { fg = p.type },
    ["@lsp.type.operator"]      = { fg = p.operator },
    ["@lsp.type.keyword"]       = { fg = p.keyword },
    ["@lsp.type.comment"]       = { fg = p.comment, italic = config.commentStyle.italic },
    ["@lsp.type.string"]        = { fg = p.string },
    ["@lsp.type.regexp"]        = { fg = p.string },
    ["@lsp.type.number"]        = { fg = p.number },

    -- rust-analyzer extensions to the standard semantic-token vocabulary.
    ["@lsp.type.builtinType"]      = { fg = p.type, italic = true },
    ["@lsp.type.selfKeyword"]      = { fg = p.type, italic = true },
    ["@lsp.type.selfTypeKeyword"]  = { fg = p.type, italic = true },
    ["@lsp.type.lifetime"]         = { fg = p.parameter },
    ["@lsp.type.formatSpecifier"]  = { fg = p.number },
    ["@lsp.type.deriveHelper"]     = { fg = p.attribute },
  }
end

return M
