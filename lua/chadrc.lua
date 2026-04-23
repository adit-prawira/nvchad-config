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
		["NeoTreeNormal"] = { bg = "#000000" },
		["NeoTreeNormalNC"] = { bg = "#000000" },
		["NvimTreeNormal"] = { bg = "#000000" },
		["NvimTreeNormalNC"] = { bg = "#000000" },
	},
}

return M
