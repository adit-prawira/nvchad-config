local M = {}

local state_file = vim.fn.stdpath "data" .. "/nvim_bg_color"

local bg_groups = {
  "Normal", "NormalNC", "NormalFloat", "SignColumn", "LineNr", "CursorLineNr", "EndOfBuffer",
  "NvimTreeNormal", "NvimTreeNormalNC", "NvimTreeEndOfBuffer", "NvimTreeWinSeparator",
  "Tabline", "TbFill", "TbBufOff", "TbBufOffModified", "TbBufOffClose", "TbTabOff",
  "TelescopeNormal", "TelescopeBorder", "TelescopePromptBorder",
}

-- Mutate the live nvconfig hl_override so base46 picks it up on recompile.
-- (base46 caches opts = require("nvconfig").base46 at load time, so we must
-- mutate that table directly — clearing package.loaded["chadrc"] has no effect.)
local function sync_nvconfig(hex)
  local hl_override = require("nvconfig").base46.hl_override
  for _, group in ipairs(bg_groups) do
    if hex then
      hl_override[group] = { bg = hex }
    else
      hl_override[group] = nil
    end
  end
end

M.apply = function(hex)
  -- 1. Apply immediately to current session
  for _, group in ipairs(bg_groups) do
    local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
    if ok then
      hl.bg = hex
      vim.api.nvim_set_hl(0, group, hl)
    end
  end
  -- 2. Save to disk (chadrc.lua reads this on next startup to prevent flicker)
  local f = io.open(state_file, "w")
  if f then
    f:write(hex)
    f:close()
  end
  -- 3. Mutate live nvconfig and recompile cache
  sync_nvconfig(hex)
  require("base46").load_all_highlights()
end

M.restore = function()
  local f = io.open(state_file, "r")
  if f then
    local hex = f:read "*l"
    f:close()
    if hex and hex:match "^#%x%x%x%x%x%x$" then
      for _, group in ipairs(bg_groups) do
        local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
        if ok then
          hl.bg = hex
          vim.api.nvim_set_hl(0, group, hl)
        end
      end
    end
  end
end

M.reset = function()
  os.remove(state_file)
  sync_nvconfig(nil)
  require("base46").load_all_highlights()
end

return M
