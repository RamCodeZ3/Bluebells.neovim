local M = {}

---@class BluebellsConfig
M.config = {
  undercurl = true,
  commentStyle = { italic = false },
  functionStyle = {},
  keywordStyle = {},
  statementStyle = {},
  typeStyle = {},
  dimInactive = false,
  terminalColors = true,
  transparent = false,
  treesitter = true,
  ---@type { dark: string, light: string }
  background = { dark = "default", light = "default" }, -- reserved for a future light variant
  theme = "default",
}

local treesitter_filetypes = {
  "bash",
  "css",
  "graphql",
  "html",
  "javascript",
  "javascriptreact",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "regex",
  "rust",
  "sql",
  "typescript",
  "typescriptreact",
}

local function start_treesitter(config)
  local group = vim.api.nvim_create_augroup("BluebellsTreesitter", { clear = true })

  if not config.treesitter then
    return
  end

  local supported = {}
  for _, filetype in ipairs(treesitter_filetypes) do
    supported[filetype] = true
  end

  local function start(bufnr)
    if supported[vim.bo[bufnr].filetype] then
      -- A missing parser should not prevent the colorscheme from loading.
      pcall(vim.treesitter.start, bufnr)
    end
  end

  vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = treesitter_filetypes,
    callback = function(args)
      start(args.buf)
    end,
  })

  -- Also handle :colorscheme bluebells when a source buffer is already open.
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(bufnr) then
      start(bufnr)
    end
  end
end

local function set_terminal_colors(config)
  if not config.terminalColors then
    return
  end

  local p = require("bluebells.colors")
  local colors = {
    p.bg,
    p.error,
    p.string,
    p.warning,
    p["function"],
    p.keyword,
    p.hint,
    p.fg,
    p.muted,
    p.error,
    p.property,
    p.number,
    p.info,
    p.keyword,
    p.parameter,
    p.fg,
  }

  for index, color in ipairs(colors) do
    vim.g["terminal_color_" .. (index - 1)] = color
  end
end

local function capture_milli_colors()
  local colors = {}

  -- milli.nvim caches the names of its generated highlight groups. If a
  -- colorscheme clears them, Milli keeps returning the cached names and the
  -- animation loses its colors. Preserve the exact RGB specs across reloads.
  for name, spec in pairs(vim.api.nvim_get_hl(0, {})) do
    if name:match("^MilliSplash_") then
      colors[name] = spec
    end
  end

  return colors
end

local function restore_highlights(highlights)
  for name, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, name, spec)
  end
end

---@param opts? BluebellsConfig
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

---@param theme? string
function M.load(theme)
  local config = M.config
  theme = theme or M.config.background[vim.o.background] or M.config.theme
  M._CURRENT_THEME = theme

  local milli_colors = capture_milli_colors()

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "bluebells"
  vim.o.termguicolors = true

  -- Keep classic Vim syntax available as a fallback when a parser is absent.
  vim.cmd("syntax enable")
  start_treesitter(config)
  set_terminal_colors(config)
  require("bluebells.highlights").apply(config)
  restore_highlights(milli_colors)
end

return M
