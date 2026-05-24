-- Bearded Coffee Reversed — ported from beardedbear.beardedtheme VS Code
local M = {}

M.base_30 = {
  white          = "#c8aca5",
  darker_black   = "#141210",
  black          = "#1a1716",
  black2         = "#201d1c",
  one_bg         = "#282524",
  one_bg2        = "#383432",
  one_bg3        = "#484440",
  grey           = "#4d3e3b",
  grey_fg        = "#4d3e3b",
  grey_fg2       = "#7a6b68",
  light_grey     = "#b7a29d",
  red            = "#f24343",
  baby_pink      = "#E480AD",
  pink           = "#E480AD",
  line           = "#f091770f",
  green          = "#9DCC57",
  vibrant_green  = "#7E9E2D",
  nord_blue      = "#6EDDD6",
  blue           = "#6EDDD6",
  yellow         = "#f7d979",
  sun            = "#f7d979",
  purple         = "#9991F1",
  dark_purple    = "#8178d9",
  teal           = "#3ceaa8",
  orange         = "#ffa777",
  cyan           = "#6EDDD6",
  statusline_bg  = "#141210",
  lightbg        = "#282524",
  pmenu_bg       = "#9991F1",
  folder_bg      = "#f7d979",
}

M.base_16 = {
  base00 = "#1a1716",
  base01 = "#282524",
  base02 = "#383432",
  base03 = "#484440",
  base04 = "#4d3e3b",
  base05 = "#c8aca5",
  base06 = "#c8aca5",
  base07 = "#ffffff",
  base08 = "#ffa777",
  base09 = "#f24343",
  base0A = "#3ceaa8",
  base0B = "#9DCC57",
  base0C = "#7E9E2D",
  base0D = "#6EDDD6",
  base0E = "#f7d979",
  base0F = "#9991F1",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.orange },
    ["@keyword.function"] = { fg = M.base_30.teal },
    ["@keyword.return"] = { fg = M.base_30.yellow },
    ["@keyword.conditional"] = { fg = M.base_30.yellow },
    ["@keyword.storage"] = { fg = M.base_30.teal },
    ["@keyword.repeat"] = { fg = M.base_30.yellow },
    ["@type"] = { fg = M.base_30.purple },
    ["@type.builtin"] = { fg = M.base_30.purple },
    ["@variable.parameter"] = { fg = M.base_30.baby_pink },
    ["@boolean"] = { fg = M.base_30.red },
    ["@constant.builtin"] = { fg = M.base_30.red },
    ["@tag"] = { fg = M.base_30.red },
    ["@tag.attribute"] = { fg = M.base_30.orange },
    ["@operator"] = { fg = M.base_30.light_grey },
    ["@property"] = { fg = M.base_30.white },
  },
  syntax = {
    Boolean = { fg = M.base_30.red },
    Type = { fg = M.base_30.purple },
    StorageClass = { fg = M.base_30.teal },
    Function = { fg = M.base_30.nord_blue },
    String = { fg = M.base_30.green },
    Constant = { fg = M.base_30.red },
    Keyword = { fg = M.base_30.yellow },
    Conditional = { fg = M.base_30.yellow },
    Tag = { fg = M.base_30.red },
  },
}

M.type = "dark"
M = require("base46").override_theme(M, "bearded_coffee_reversed")
return M
