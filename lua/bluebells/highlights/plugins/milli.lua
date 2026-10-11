local M = {}

---@param config BluebellsConfig
function M.setup(config)
  local p = require("bluebells.colors")

  return {
    -- Milli creates one MilliSplash_<fg>_<bg> group per quantized color at
    -- runtime. Those groups are preserved by bluebells.load() so their exact
    -- animation colors must not be replaced with palette colors here.
    MilliScreensaver = {
      bg = config.transparent and "NONE" or p.bg,
      fg = p.fg,
    },
  }
end

return M
