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
    ["@string"]           = { link = "String" },
    ["@string.escape"]    = { fg = p.number },
    ["@string.special"]   = { fg = p.number },
    ["@number"]           = { link = "Number" },
    ["@boolean"]          = { link = "Boolean" },

    ["@function"]         = { link = "Function" },
    ["@function.builtin"] = { fg = p["function"] },
    ["@function.macro"]   = { link = "Macro" },
    ["@method"]           = { link = "Function" },
    ["@constructor"]      = { fg = p.type, bold = true }, -- JSX/TSX components, class constructors

    ["@keyword"]          = { link = "Keyword" },
    ["@keyword.function"] = { fg = p.keyword, italic = config.functionStyle.italic },
    ["@keyword.return"]   = { fg = p.keyword, italic = true },
    ["@keyword.operator"] = { link = "Operator" },
    ["@keyword.import"]   = { fg = p.keyword, italic = true }, -- import/from
    ["@keyword.export"]   = { fg = p.keyword, italic = true }, -- export/default
    ["@keyword.type"]     = { link = "Keyword" },              -- const/let/var
    ["@keyword.coroutine"] = { link = "Keyword" },              -- async/await
    ["@keyword.exception"] = { fg = p.keyword },                -- try/catch/throw, same violet as other keywords
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@conditional"]      = { link = "Conditional" },
    ["@repeat"]           = { link = "Repeat" },

    ["@operator"]              = { link = "Operator" },
    ["@punctuation.delimiter"] = { fg = p.punctuation },
    ["@punctuation.bracket"]   = { fg = p.punctuation },
    ["@punctuation.special"]   = { fg = p.type }, -- ${} in template strings, JSX braces

    ["@comment"]       = { link = "Comment" },

    -- JSX / TSX / HTML tags
    ["@tag"]              = { link = "Tag" },          -- lowercase html tags (<div>)
    ["@tag.builtin"]      = { link = "Tag" },
    ["@tag.attribute"]    = { fg = p.attribute, italic = true },
    ["@tag.delimiter"]    = { fg = p.punctuation },

    ["@type"]         = { link = "Type" },
    ["@type.builtin"] = { fg = p.type, italic = true },
    ["@property"]     = { fg = p.property },
    ["@namespace"]    = { fg = p.type },
    ["@module"]       = { fg = p.type },  -- import module paths
    ["@attribute"]    = { fg = p.attribute },

    ["@markup.heading"] = { fg = p.parameter, bold = true },
    ["@markup.strong"]  = { bold = true },
    ["@markup.italic"]  = { italic = true },
    ["@markup.link"]    = { fg = p.parameter, underline = true },
    ["@markup.list"]    = { fg = p.type },
  }
end

return M
