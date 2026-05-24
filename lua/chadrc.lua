-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

-- Read saved background color and bake it into hl_override so highlights are
-- compiled with the correct bg from the start — no flicker on startup.
local state_file = vim.fn.stdpath "data" .. "/nvim_bg_color"
local f = io.open(state_file, "r")
local saved_bg = f and f:read "*l" or nil
if f then f:close() end

local hl_override = {}
if saved_bg and saved_bg:match "^#%x%x%x%x%x%x$" then
  for _, group in ipairs {
    "Normal", "NormalNC", "NormalFloat", "SignColumn", "LineNr", "CursorLineNr", "EndOfBuffer",
    "NvimTreeNormal", "NvimTreeNormalNC", "NvimTreeEndOfBuffer", "NvimTreeWinSeparator",
    "Tabline", "TbFill", "TbBufOff", "TbBufOffModified", "TbBufOffClose", "TbTabOff",
  } do
    hl_override[group] = { bg = saved_bg }
  end
end

M.base46 = {
  theme = "everforest",
  hl_override = hl_override,
}

return M
