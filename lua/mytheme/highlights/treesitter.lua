local M = {}

---@param config MyThemeConfig
function M.setup(config)
  local palette = require("mytheme.colors")

  return {
    ["@variable"]          = { fg = palette.fg3 },
    ["@variable.builtin"]  = { fg = palette.red, italic = true },
    ["@variable.parameter"] = { fg = palette.yellow },
    ["@variable.member"]   = { fg = palette.cyan },

    ["@constant"]          = { link = "Constant" },
    ["@constant.builtin"]  = { fg = palette.orange, bold = true },
    ["@string"]            = { link = "String" },
    ["@string.escape"]     = { fg = palette.magenta },
    ["@number"]            = { link = "Number" },
    ["@boolean"]           = { link = "Boolean" },

    ["@function"]          = { link = "Function" },
    ["@function.builtin"]  = { fg = palette.cyan },
    ["@function.macro"]    = { link = "Macro" },
    ["@method"]            = { link = "Function" },
    ["@constructor"]       = { fg = palette.yellow },

    ["@keyword"]           = { link = "Keyword" },
    ["@keyword.function"]  = { fg = palette.magenta, italic = config.functionStyle.italic },
    ["@keyword.return"]    = { fg = palette.magenta, italic = true },
    ["@keyword.operator"]  = { link = "Operator" },
    ["@conditional"]       = { link = "Conditional" },
    ["@repeat"]            = { link = "Repeat" },

    ["@operator"]          = { link = "Operator" },
    ["@punctuation.delimiter"] = { fg = palette.fg2 },
    ["@punctuation.bracket"]   = { fg = palette.fg2 },
    ["@punctuation.special"]   = { fg = palette.red },

    ["@comment"]           = { link = "Comment" },
    ["@tag"]               = { link = "Tag" },
    ["@tag.attribute"]     = { fg = palette.yellow, italic = true },
    ["@tag.delimiter"]     = { fg = palette.fg2 },

    ["@type"]              = { link = "Type" },
    ["@type.builtin"]      = { fg = palette.cyan, italic = true },
    ["@property"]          = { fg = palette.cyan },
    ["@namespace"]         = { fg = palette.yellow },

    ["@markup.heading"]    = { fg = palette.blue, bold = true },
    ["@markup.strong"]     = { bold = true },
    ["@markup.italic"]     = { italic = true },
    ["@markup.link"]       = { fg = palette.blue, underline = true },
    ["@markup.list"]       = { fg = palette.red },
  }
end

return M
