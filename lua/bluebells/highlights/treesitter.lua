local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    ["@variable"]           = { fg = p.variable },
    ["@variable.builtin"]   = { fg = p.keyword, italic = false, bold = false },
    ["@variable.parameter"] = { fg = p.parameter },
    ["@variable.member"]    = { fg = p.property },

    ["@constant"]         = { link = "Constant" },
    ["@constant.builtin"] = { fg = p.boolean, bold = false, italic = false },
    ["@character"]        = { link = "Character" },
    ["@character.special"] = { fg = p.number },
    ["@string"]           = { link = "String" },
    ["@string.documentation"] = { fg = p.string, italic = false, bold = false },
    ["@string.escape"]    = { fg = p.number },
    ["@string.regexp"]    = { fg = p.string },
    ["@string.special"]   = { fg = p.string },
    ["@string.special.url"] = { fg = p.parameter, underline = true },
    ["@number"]           = { link = "Number" },
    ["@number.float"]     = { link = "Float" },
    ["@boolean"]          = { link = "Boolean" },

    ["@function"]             = { link = "Function" },
    ["@function.builtin"]     = { fg = p["function"] },
    ["@function.call"]        = { link = "Function" },
    ["@function.macro"]       = { link = "Macro" },
    ["@function.method"]      = { link = "Function" },
    ["@function.method.call"] = { link = "Function" },
    ["@method"]               = { link = "Function" }, -- Neovim/nvim-treesitter legacy capture
    ["@method.call"]          = { link = "Function" },
    ["@constructor"]          = { fg = p.constructor, bold = false, italic = false },

    ["@keyword"]          = { link = "Keyword" },
    ["@keyword.function"] = { fg = p.keyword, italic = false, bold = false },
    ["@keyword.return"]   = { fg = p.keyword, italic = false, bold = false },
    ["@keyword.operator"] = { fg = p.keyword, italic = false, bold = false },
    ["@keyword.import"]   = { fg = p.keyword, italic = false, bold = false }, -- import/from
    ["@keyword.export"]   = { fg = p.keyword, italic = false, bold = false }, -- export/default
    ["@keyword.type"]     = { link = "Keyword" },              -- const/let/var
    ["@keyword.coroutine"] = { link = "Keyword" },              -- async/await
    ["@keyword.exception"] = { link = "Exception" },            -- try/catch/throw — cascades from Statement/Keyword automatically
    ["@exception"]         = { link = "Exception" },            -- alt capture name used by some parsers
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { link = "Conditional" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.modifier"] = { link = "Keyword" },
    ["@keyword.repeat"]   = { link = "Repeat" },
    ["@conditional"]      = { link = "Conditional" },
    ["@repeat"]           = { link = "Repeat" },

    ["@operator"]              = { link = "Operator" },
    ["@punctuation.delimiter"] = { fg = p.punctuation },
    ["@punctuation.bracket"]   = { fg = p.punctuation },
    ["@punctuation.special"]   = { fg = p.string }, -- interpolation punctuation
    ["@punctuation.decorator"] = { fg = p.fg },

    ["@comment"]               = { link = "Comment" },
    ["@comment.documentation"] = { fg = p.comment, italic = false, bold = false },

    -- JSX / TSX / HTML tags
    ["@tag"]              = { link = "Tag" },          -- lowercase html tags (<div>)
    ["@tag.builtin"]      = { link = "Tag" },
    ["@tag.attribute"]    = { fg = p.attribute, italic = false, bold = false },
    ["@tag.delimiter"]    = { fg = p.punctuation },

    ["@type"]              = { link = "Type" },
    ["@type.builtin"]      = { fg = p.type, italic = false, bold = false },
    ["@type.definition"]   = { link = "Type" },
    ["@property"]          = { fg = p.property }, -- legacy name
    ["@namespace"]         = { fg = p.type },     -- legacy name
    ["@module"]            = { fg = p.type },
    ["@module.builtin"]    = { fg = p.type, italic = false, bold = false },
    ["@attribute"]         = { fg = p.attribute },
    ["@attribute.python"]  = { fg = p["function"], italic = false, bold = false },
    ["@attribute.builtin"] = { fg = p.attribute, italic = false, bold = false },
    ["@label"]             = { fg = p.parameter },

    ["@markup.heading"] = { fg = p.parameter, bold = false, italic = false },
    ["@markup.strong"]  = { bold = false, italic = false },
    ["@markup.italic"]  = { italic = false, bold = false },
    ["@markup.link"]    = { fg = p.parameter, underline = true },
    ["@markup.list"]    = { fg = p.type },
  }
end

return M
