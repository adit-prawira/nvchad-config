-- Night Wolf — ported from mao-santaella-rs/NightWolfTheme VS Code dark-blue variant
local M = {}

M.base_30 = {
  white          = "#bdd2e7",
  darker_black   = "#0c1824",
  black          = "#101e2c",
  black2         = "#14283c",
  one_bg         = "#1b324a",
  one_bg2        = "#1e4667",
  one_bg3        = "#305a84",
  grey           = "#5f82a5",
  grey_fg        = "#647882",
  grey_fg2       = "#7ba5cf",
  light_grey     = "#bdd2e7",
  red            = "#ff7878",
  baby_pink      = "#ff9999",
  pink           = "#ff50ff",
  line           = "#14283c",
  green          = "#aae682",
  vibrant_green  = "#bbee96",
  nord_blue      = "#9696ff",
  blue           = "#00b1ff",
  yellow         = "#ffdc96",
  sun            = "#ffe8b8",
  purple         = "#dc8cff",
  dark_purple    = "#b06cff",
  teal           = "#00dcdc",
  orange         = "#ffb482",
  cyan           = "#00dcdc",
  statusline_bg  = "#0c1824",
  lightbg        = "#1b324a",
  pmenu_bg       = "#dc8cff",
  folder_bg      = "#00b1ff",
}

-- base_16 drives syntax highlighting (used by base46 treesitter & syntax integrations)
M.base_16 = {
  base00 = "#101e2c",
  base01 = "#1b324a",
  base02 = "#1e4667",
  base03 = "#305a84",
  base04 = "#5f82a5",
  base05 = "#bdd2e7",
  base06 = "#bdd2e7",
  base07 = "#ffffff",
  base08 = "#ffdc96", -- variable.parameter, property, statements → YELLOW
  base09 = "#ffb482", -- numbers, constants, booleans → ORANGE
  base0A = "#00b1ff", -- storage types, tags, repeat → BLUE
  base0B = "#aae682", -- strings → GREEN
  base0C = "#00dcdc", -- constructors, special → CYAN
  base0D = "#00dcdc", -- functions → CYAN
  base0E = "#dc8cff", -- keywords, conditionals → PURPLE
  base0F = "#ff7878", -- punctuation, delimiters → RED
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.yellow },
    ["@variable.builtin"] = { fg = M.base_30.red },
    ["@keyword.return"] = { fg = M.base_30.nord_blue },
    ["@keyword.function"] = { fg = M.base_30.blue },
    ["@keyword.class"] = { fg = M.base_30.blue },
    ["@keyword.storage"] = { fg = M.base_30.blue },
    ["@keyword.repeat"] = { fg = M.base_30.purple },
    ["@boolean"] = { fg = M.base_30.red },
    ["@constant.builtin"] = { fg = M.base_30.red },
    ["@operator"] = { fg = M.base_30.red },
    ["@tag"] = { fg = M.base_30.red },
    ["@tag.attribute"] = { fg = M.base_30.nord_blue },
    ["@string.regex"] = { fg = M.base_30.sun },
  },
  syntax = {
    Boolean = { fg = M.base_30.red },
    Operator = { fg = M.base_30.red },
    Tag = { fg = M.base_30.red },
  },
}

M.type = "dark"
M = require("base46").override_theme(M, "nightwolf")
return M
