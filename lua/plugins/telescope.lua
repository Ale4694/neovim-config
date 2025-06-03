
return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local map = vim.keymap.set

    telescope.setup()

    -- Carica l'estensione file_browser
    telescope.load_extension("file_browser")

    -- Keymaps principali
    map("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    map("n", "<leader>fg", builtin.live_grep,  { desc = "Live Grep" })
    map("n", "<leader>fb", builtin.buffers,    { desc = "Buffers" })

    -- File Browser con path corrente
    map("n", "<leader>fe", function()
      telescope.extensions.file_browser.file_browser({
        path = "%:p:h",
        select_buffer = true
      })
    end, { desc = "Telescope File Browser" })
  end,
}
