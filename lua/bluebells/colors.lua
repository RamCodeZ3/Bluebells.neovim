---@class BluebellsPalette
local palette = {

  -- backgrounds
  bg      = "#100F0F", -- editor background (overridden darker than the panels)
  panel   = "#181818", -- floats, popups, sidebars
  panel2  = "#202020", -- statusline, tabline, secondary surfaces
  border  = "#2a2a2a", -- window separators, float borders

  -- foreground
  fg    = "#ccd4dd", -- default text
  muted = "#4f5563", -- comments, punctuation, line numbers

  -- syntax
  comment     = "#4f5563", -- slate gray
  variable    = "#ccd4dd", -- light gray/white
  parameter   = "#ccd4dd", -- light gray/white
  property    = "#52b788", -- light moss green
  ["function"] = "#5c7ccf", -- blue
  type        = "#5c7ccf", -- blue
  constructor = "#5c7ccf", -- blue
  keyword     = "#9b72cf", -- intense violet
  operator    = "#ccd4dd", -- light gray/white
  string      = "#8cb416", -- moss green
  number      = "#e09f3e", -- dim amber
  boolean     = "#9b72cf", -- intense violet
  constant    = "#9b72cf", -- intense violet
  punctuation = "#8b93a1", -- soft gray, brighter than comments
  tag         = "#9b72cf", -- intense violet
  attribute   = "#52b788", -- moss green

  -- diagnostics
  error   = "#c94c4c", -- soft red
  warning = "#e09f3e", -- amber
  info    = "#b0c4de", -- glacier blue
  hint    = "#52b788", -- moss green

  -- misc
  selection = "#3a3a3a", -- flat approximation of rgba(255,255,255,0.15) over bg
}

return palette
