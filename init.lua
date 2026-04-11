vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)
vim.opt.foldmethod = "indent"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  { 
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

require("telescope").load_extension("fzf")

require("telescope").setup({
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
  defaults = {
    hidden = true,
    preview = {
      filesize_limit = 0.5,
    },
    find_command = {
      "fd",
      "--type", "f",
      "--strip-cwd-prefix",
      "--hidden",
      "--exclude", ".git",
      "--exclude", "node_modules",
      "--exclude", "dist",
      "--exclude", "build",
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
      "--glob",
      "!.git/*",
      "--fixed-strings",
    },
    file_ignore_patterns = {
      "node_modules/.*",
      "%.git/.*",
      "dist/.*",
      "build/.*",
    },
  },
})-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)
