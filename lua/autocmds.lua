require "nvchad.autocmds"

-- Reapply bg override when theme is switched via <space>ft (recompile picks it up)
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.defer_fn(function()
      require("configs.bg").restore()
    end, 0)
  end,
})
