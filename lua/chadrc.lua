-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "ashes",
  hl_override = {
    Normal = { bg = "#000000" },
    NormalNC = { bg = "#000000" },
    NormalFloat = { bg = "#000000" },
    SignColumn = { bg = "#000000" },
    LineNr = { bg = "#000000" },
    CursorLineNr = { bg = "#000000" },
    StatusLine = { bg = "#000000" },
    EndOfBuffer = { bg = "#000000" },

    -- subtle borders (light grey)
    WinSeparator = { fg = "#555555", bg = "#000000" },
    VertSplit = { fg = "#555555", bg = "#000000" },
    NvimTreeWinSeparator = { fg = "#555555", bg = "#000000" },
    TelescopeBorder = { fg = "#555555", bg = "#000000" },
    FloatBorder = { fg = "#555555", bg = "#000000" }, 
  }, 
  changed_themes = {
    aquarium = {
      base_30 = {
        black = "#000000",
        darker_black = "#000000",
        one_bg = "#000000",
        one_bg2 = "#000000",
        one_bg3 = "#000000",
      },
    },
    ashes = {
      base_30 = {
        black = "#000000",
        darker_black = "#000000",
        one_bg = "#000000",
        one_bg2 = "#000000",
        one_bg3 = "#000000",
      },
    },

  }, 
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
