-- Bearded Monokai Reversed — ported from beardedbear.beardedtheme VS Code
local M = {}

M.base_30 = {
  white          = "#c6cad7",
  darker_black   = "#0e0f14",
  black          = "#12141a",
  black2         = "#181a20",
  one_bg         = "#202228",
  one_bg2        = "#2e3036",
  one_bg3        = "#3e4046",
  grey           = "#4c526b",
  grey_fg        = "#4c526b",
  grey_fg2       = "#727890",
  light_grey     = "#a9aec1",
  red            = "#fc6a67",
  baby_pink      = "#ff6188",
  pink           = "#e991e3",
  line           = "#181a20",
  green          = "#a9dc76",
  vibrant_green  = "#b7d175",
  nord_blue      = "#78dce8",
  blue           = "#78dce8",
  yellow         = "#ffd866",
  sun            = "#ffd866",
  purple         = "#ab9df2",
  dark_purple    = "#9485d9",
  teal           = "#78e8c6",
  orange         = "#fc9867",
  cyan           = "#78dce8",
  statusline_bg  = "#0e0f14",
  lightbg        = "#202228",
  pmenu_bg       = "#ab9df2",
  folder_bg      = "#78dce8",
}

M.base_16 = {
  base00 = "#12141a",
  base01 = "#202228",
  base02 = "#2e3036",
  base03 = "#3e4046",
  base04 = "#4c526b",
  base05 = "#c6cad7",
  base06 = "#c6cad7",
  base07 = "#ffffff",
  base08 = "#fc9867",
  base09 = "#fc6a67",
  base0A = "#78e8c6",
  base0B = "#a9dc76",
  base0C = "#b7d175",
  base0D = "#78dce8",
  base0E = "#ffd866",
  base0F = "#ab9df2",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.baby_pink },
    ["@keyword.function"] = { fg = M.base_30.teal },
    ["@keyword.return"] = { fg = M.base_30.yellow },
    ["@keyword.conditional"] = { fg = M.base_30.yellow },
    ["@keyword.storage"] = { fg = M.base_30.teal },
    ["@keyword.repeat"] = { fg = M.base_30.yellow },
    ["@type"] = { fg = M.base_30.purple },
    ["@type.builtin"] = { fg = M.base_30.purple },
    ["@variable.parameter"] = { fg = M.base_30.pink },
    ["@boolean"] = { fg = M.base_30.red },
    ["@constant.builtin"] = { fg = M.base_30.red },
    ["@tag"] = { fg = M.base_30.baby_pink },
    ["@tag.attribute"] = { fg = M.base_30.orange },
    ["@operator"] = { fg = M.base_30.light_grey },
    ["@property"] = { fg = M.base_30.orange },
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
    Tag = { fg = M.base_30.baby_pink },
  },
}

M.type = "dark"
M = require("base46").override_theme(M, "bearded_monokai_reversed")
return M
