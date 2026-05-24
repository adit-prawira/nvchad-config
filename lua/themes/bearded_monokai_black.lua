-- Bearded Monokai Black — ported from beardedbear.beardedtheme VS Code
local M = {}

M.base_30 = {
  white          = "#c7c7c7",
  darker_black   = "#0e0e0e",
  black          = "#141414",
  black2         = "#1a1a1a",
  one_bg         = "#222222",
  one_bg2        = "#303030",
  one_bg3        = "#404040",
  grey           = "#545454",
  grey_fg        = "#545454",
  grey_fg2       = "#787878",
  light_grey     = "#adadad",
  red            = "#fc6a67",
  baby_pink      = "#ff6188",
  pink           = "#e991e3",
  line           = "#8f8f8f0f",
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
  statusline_bg  = "#0e0e0e",
  lightbg        = "#222222",
  pmenu_bg       = "#ab9df2",
  folder_bg      = "#78dce8",
}

M.base_16 = {
  base00 = "#141414",
  base01 = "#222222",
  base02 = "#303030",
  base03 = "#404040",
  base04 = "#545454",
  base05 = "#c7c7c7",
  base06 = "#c7c7c7",
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
M = require("base46").override_theme(M, "bearded_monokai_black")
return M
