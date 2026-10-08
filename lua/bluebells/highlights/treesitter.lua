local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    ["@variable"]           = { fg = p.variable },
    ["@variable.builtin"]   = { fg = p.type, italic = true },
    ["@variable.parameter"] = { fg = p.parameter },
    ["@variable.member"]    = { fg = p.property },

    ["@constant"]         = { link = "Constant" },
    ["@constant.builtin"] = { fg = p.constant, bold = true },
    ["@character"]        = { link = "Character" },
    ["@character.special"] = { fg = p.number },
    ["@string"]           = { link = "String" },
    ["@string.documentation"] = { fg = p.string, italic = true },
    ["@string.escape"]    = { fg = p.number },
    ["@string.regexp"]    = { fg = p.string },
    ["@string.special"]   = { fg = p.number },
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
    ["@constructor"]          = { fg = p.constructor, bold = true },

    ["@keyword"]          = { link = "Keyword" },
    ["@keyword.function"] = { fg = p.keyword, italic = config.functionStyle.italic },
    ["@keyword.return"]   = { fg = p.keyword, italic = true },
    ["@keyword.operator"] = { link = "Operator" },
    ["@keyword.import"]   = { fg = p.keyword, italic = true }, -- import/from
    ["@keyword.export"]   = { fg = p.keyword, italic = true }, -- export/default
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
    ["@punctuation.special"]   = { fg = p.type }, -- ${} in template strings, JSX braces

    ["@comment"]               = { link = "Comment" },
    ["@comment.documentation"] = { fg = p.comment, italic = true },

    -- JSX / TSX / HTML tags
    ["@tag"]              = { link = "Tag" },          -- lowercase html tags (<div>)
    ["@tag.builtin"]      = { link = "Tag" },
    ["@tag.attribute"]    = { fg = p.attribute, italic = true },
    ["@tag.delimiter"]    = { fg = p.punctuation },

    ["@type"]              = { link = "Type" },
    ["@type.builtin"]      = { fg = p.type, italic = true },
    ["@type.definition"]   = { link = "Type" },
    ["@property"]          = { fg = p.property }, -- legacy name
    ["@namespace"]         = { fg = p.type },     -- legacy name
    ["@module"]            = { fg = p.type },
    ["@module.builtin"]    = { fg = p.type, italic = true },
    ["@attribute"]         = { fg = p.attribute },
    ["@attribute.builtin"] = { fg = p.attribute, italic = true },
    ["@label"]             = { fg = p.parameter },

    ["@markup.heading"] = { fg = p.parameter, bold = true },
    ["@markup.strong"]  = { bold = true },
    ["@markup.italic"]  = { italic = true },
    ["@markup.link"]    = { fg = p.parameter, underline = true },
    ["@markup.list"]    = { fg = p.type },
  }
end

return M
