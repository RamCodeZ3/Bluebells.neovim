local p = require("bluebells.colors")

local theme = {
  normal = {
    a = { bg = p["function"], fg = p.bg },
    b = { bg = p.panel2, fg = p.fg },
    c = { bg = p.panel, fg = p.muted },
  },
  insert = {
    a = { bg = p.property, fg = p.bg },
  },
  visual = {
    a = { bg = p.keyword, fg = p.bg },
  },
  replace = {
    a = { bg = p.error, fg = p.bg },
  },
  command = {
    a = { bg = p.number, fg = p.bg },
  },
  terminal = {
    a = { bg = p.info, fg = p.bg },
  },
  inactive = {
    a = { bg = p.panel, fg = p.muted },
    b = { bg = p.panel, fg = p.muted },
    c = { bg = p.panel, fg = p.muted },
  },
}

return theme
