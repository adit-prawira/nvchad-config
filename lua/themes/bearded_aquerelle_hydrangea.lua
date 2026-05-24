-- Bearded Aquarelle Hydrangea (alt) — ported from beardedbear.beardedtheme VS Code
local M = {}

M.base_30 = {
  white          = "#dddfe6",
  darker_black   = "#1d2132",
  black          = "#23293b",
  black2         = "#292f43",
  one_bg         = "#31374b",
  one_bg2        = "#3f4559",
  one_bg3        = "#4f5569",
  grey           = "#5e6680",
  grey_fg        = "#5e6680",
  grey_fg2       = "#7e86a0",
  light_grey     = "#bfc4d1",
  red            = "#f4aca5",
  baby_pink      = "#ffbacb",
  pink           = "#f3d0f0",
  line           = "#4c86f10f",
  green          = "#d0f4ac",
  vibrant_green  = "#ddf1a8",
  nord_blue      = "#bbe4f7",
  blue           = "#bbe4f7",
  yellow         = "#feeebe",
  sun            = "#feeebe",
  purple         = "#c4baf7",
  dark_purple    = "#ada3e0",
  teal           = "#bcf7e5",
  orange         = "#fac6ae",
  cyan           = "#bcf7e5",
  statusline_bg  = "#1d2132",
  lightbg        = "#31374b",
  pmenu_bg       = "#c4baf7",
  folder_bg      = "#bbe4f7",
}

M.base_16 = {
  base00 = "#23293b",
  base01 = "#31374b",
  base02 = "#3f4559",
  base03 = "#4f5569",
  base04 = "#5e6680",
  base05 = "#dddfe6",
  base06 = "#dddfe6",
  base07 = "#ffffff",
  base08 = "#fac6ae",
  base09 = "#f4aca5",
  base0A = "#bcf7e5",
  base0B = "#d0f4ac",
  base0C = "#ddf1a8",
  base0D = "#bbe4f7",
  base0E = "#feeebe",
  base0F = "#c4baf7",
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
    ["@tag"] = { fg = M.base_30.red },
    ["@tag.attribute"] = { fg = M.base_30.baby_pink },
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
    Tag = { fg = M.base_30.red },
  },
}

M.type = "dark"
M = require("base46").override_theme(M, "bearded_aquerelle_hydrangea")
return M
