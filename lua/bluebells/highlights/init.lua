local M = {}

---@param config? BluebellsConfig
function M.apply(config)
  config = config or require("bluebells").config

  -- add new modules here as you extend support to more plugins
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
    local ok, highlights = pcall(require, "bluebells.highlights." .. highlight)
    if ok then
      local groups = highlights.setup(config)
      for hl, spec in pairs(groups) do
        vim.api.nvim_set_hl(0, hl, spec)
      end
    end
  end
end

return M
