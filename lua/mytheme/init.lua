local M = {}

---@class MyThemeConfig
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
  background = { dark = "default", light = "default" }, -- para cuando tengas variante light
  theme = "default",
}

---@param opts? MyThemeConfig
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

  vim.g.colors_name = "mytheme"
  vim.o.termguicolors = true

  require("mytheme.highlights").apply(config)
end

return M
