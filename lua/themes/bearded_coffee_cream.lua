-- Bearded Coffee Cream (light) — ported from beardedbear.beardedtheme VS Code
local M = {}

-- Light theme: "black" = background (cream), "white" = text (dark brown)
M.base_30 = {
  white          = "#36221d",
  darker_black   = "#ebe5e3",
  black          = "#EAE4E1",
  black2         = "#e0d9d6",
  one_bg         = "#d8d1ce",
  one_bg2        = "#cfc8c5",
  one_bg3        = "#c6bfbc",
  grey           = "#a69692",
  grey_fg        = "#a69692",
  grey_fg2       = "#8a7a76",
  light_grey     = "#36221d",
  red            = "#dc2e2e",
  baby_pink      = "#CE4985",
  pink           = "#CE4985",
  line           = "#d3694c0f",
  green          = "#4d9900",
  vibrant_green  = "#6f8e20",
  nord_blue      = "#008ea4",
  blue           = "#008ea4",
  yellow         = "#ad8200",
  sun            = "#ad8200",
  purple         = "#7056c4",
  dark_purple    = "#5a3cb0",
  teal           = "#009b74",
  orange         = "#ce6700",
  cyan           = "#008ea4",
  statusline_bg  = "#ebe5e3",
  lightbg        = "#d8d1ce",
  pmenu_bg       = "#7056c4",
  folder_bg      = "#ad8200",
}

M.base_16 = {
  base00 = "#EAE4E1",
  base01 = "#d8d1ce",
  base02 = "#cfc8c5",
  base03 = "#c6bfbc",
  base04 = "#a69692",
  base05 = "#36221d",
  base06 = "#36221d",
  base07 = "#000000",
  base08 = "#ce6700",
  base09 = "#dc2e2e",
  base0A = "#009b74",
  base0B = "#4d9900",
  base0C = "#6f8e20",
  base0D = "#008ea4",
  base0E = "#ad8200",
  base0F = "#7056c4",
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
    ["@operator"] = { fg = M.base_30.white },
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

M.type = "light"
M = require("base46").override_theme(M, "bearded_coffee_cream")
return M
