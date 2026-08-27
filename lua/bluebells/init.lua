local M = {}

---@class BluebellsConfig
M.config = {
  undercurl = true,
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = {},
  statementStyle = {},
  typeStyle = {},
  dimInactive = false,
  terminalColors = true,
  transparent = false,
  ---@type { dark: string, light: string }
  background = { dark = "default", light = "default" }, -- reserved for a future light variant
  theme = "default",
}

---@param opts? BluebellsConfig
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

---@param theme? string
function M.load(theme)
  local config = M.config
  theme = theme or M.config.background[vim.o.background] or M.config.theme
  M._CURRENT_THEME = theme

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "bluebells"
  vim.o.termguicolors = true

  require("bluebells.highlights").apply(config)
end

return M
