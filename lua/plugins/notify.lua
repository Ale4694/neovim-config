
return {
  "rcarriga/nvim-notify",
  lazy = false,
  config = function()
    vim.notify = require("notify")
    require("notify").setup({
      stages = "fade",
      timeout = 3000,
      background_colour = "#1a1b26",
      render = "default",
    })
  end,
}
