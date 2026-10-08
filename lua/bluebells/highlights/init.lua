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
        -- Bluebells is intentionally a plain-weight theme. Keep this here as
        -- a final guard so plugin defaults and legacy style options cannot
        -- reintroduce bold or italic text.
        spec.bold = false
        spec.italic = false
        vim.api.nvim_set_hl(0, hl, spec)
      end
    end
  end
end

return M
