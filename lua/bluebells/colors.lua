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
  parameter   = "#b0c4de", -- glacier blue
  property    = "#52b788", -- light moss green
  ["function"] = "#5c7ccf", -- deep forest blue
  type        = "#9b72cf", -- intense violet
  constructor = "#3a5a40", -- pine green
  keyword     = "#9b72cf", -- intense violet
  operator    = "#b0c4de", -- glacier blue
  string      = "#8cb416", -- moss green
  number      = "#e09f3e", -- dim amber
  boolean     = "#9b72cf", -- intense violet
  constant    = "#b0c4de", -- glacier blue
  punctuation = "#4f5563", -- slate gray
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
