local M = {}

---@param config? MyThemeConfig
function M.apply(config)
  config = config or require("mytheme").config

  -- agrega aquí nuevos módulos cuando sumes soporte para más plugins
  local hl_files = {
    "editor",
    "syntax",
    "lsp",
    "treesitter",
    -- "plugins/nvim-tree",
    -- "plugins/gitsigns",
    -- "plugins/cmp",
    -- "plugins/indent-blankline",
  }

  for _, highlight in ipairs(hl_files) do
    local ok, highlights = pcall(require, "mytheme.highlights." .. highlight)
    if ok then
      local groups = highlights.setup(config)
      for hl, spec in pairs(groups) do
        vim.api.nvim_set_hl(0, hl, spec)
      end
    end
  end
end

return M
