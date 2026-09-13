local M = {}

M.options = {
  style = "dark",
}

-- Optional setup for programmatic configuration.
-- Example: require("version14").setup({ style = "light" })
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

function M.load(opts)
  if opts then
    M.options = vim.tbl_deep_extend("force", M.options, opts)
  end

  -- vim.g.version14_style takes precedence over M.options.style
  local style = vim.g.version14_style or M.options.style or "dark"
  if style ~= "dark" and style ~= "black" and style ~= "light" then
    style = "dark"
  end

  vim.opt.termguicolors = true
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "version14"
  vim.o.background = style == "light" and "light" or "dark"

  local palette    = require("version14.palette")[style]
  local highlights = require("version14.highlights").get(palette)

  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  -- :terminal reads these 16 globals, not the highlight groups above, so
  -- without them the built-in terminal keeps Neovim's defaults and ignores
  -- the theme entirely. palette.terminal is 1-indexed, the slots are 0-15.
  for i, hex in ipairs(palette.terminal) do
    vim.g["terminal_color_" .. (i - 1)] = hex
  end
end

return M
